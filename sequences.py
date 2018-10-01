import numpy
import scipy.optimize
from systems import *


class transition:
    # transition between two steps in a sequence
    def __init__(self, step1, step2, index):
        self.step1 = step1
        self.step2 = step2
        self.index = index
        self.dG0 = None
        self.Ui = None
        self.Gi = None

    def delta_G(self, U):
        G1 = self.step1.calc_energy(U)
        G2 = self.step2.calc_energy(U)
        return G2 - G1

    def calculate(self):
        self.dG0 = self.delta_G(0)
        self.Ui = self.find_intersect()
        self.Gi = self.step1.calc_energy(self.Ui)

    def find_intersect(self):
        def absdg(u):
            return numpy.abs(self.delta_G(u))
        result = scipy.optimize.minimize_scalar(absdg)
        if absdg(result.x) > 0.01:
            return numpy.nan
        else:
            return result.x


class sequence:
    # a chemical reaction consisting of a sequence of
    # reaction steps
    def __init__(self, surface, name = "Untitled Reaction"):
        self.surface = surface
        self.name = name
        self.title = name + " on " + surface

        self.steps = list()
        self.transitions = list()

        self.sindices = None
        self.tindices = None

        self.U = None  # range of U values
        self.G = None  # range of G(U)
        self.G0 = None # G at U=0

        self.dG0 = None # deltaG at U = 0
        self.Gi = None  # G at intersection
        self.Ui = None  # U at intersection
        pass

    def nsteps(self):
        return len(self.steps)

    def ntrans(self):
        return len(self.transitions)

    def add_step(self, adsorbate, gases, electrons):
        step = system(self.surface, adsorbate, gases, electrons)
        n = self.nsteps()
        if n > 0:
            # if a previous step is already defined
            trans = transition(self.steps[-1], step, n)
            self.transitions.append(trans)
        self.steps.append(step)

    def calculate(self, U = numpy.arange(-2, 2, 0.1)):
        ns = self.nsteps()
        nt = self.ntrans()
        m  = len(U)

        # initialize everything with nan values
        # NaN (Not-A-Number) represents an undefined value
        self.U = numpy.array(U)
        self.G = numpy.ones([ns, m]) * numpy.nan

        self.Ui  = numpy.ones(nt) * numpy.nan
        self.Gi  = numpy.ones(nt) * numpy.nan
        self.dG0 = numpy.ones(nt) * numpy.nan

        self.sindices = numpy.arange(0, ns)
        self.tindices = numpy.arange(0, nt)

        for i, t in enumerate(self.transitions):
            t.calculate()
            self.Ui[i] = t.Ui
            self.Gi[i] = t.Gi
            self.dG0[i] = t.dG0

        for i, s in enumerate(self.steps):
            self.G[i,:] = s.calc_energy(self.U)
            self.G0     = s.calc_energy(self.U)



def electroreduction(surface):
    seq = sequence(surface, 'Electroreduction')

    #            adsorbate   gases        num/electrons
    seq.add_step( 'HOCO',    [],                    7 )
    seq.add_step( None,      ['HCOOH'],             6 )
    seq.add_step( 'CO',      ['H2O'],               6 )
    seq.add_step( 'HCO',     ['H2O'],               5 )
    seq.add_step( 'COH',     ['H2O'],               5 )
    seq.add_step( 'OCH2',    ['H2O'],               4 )
    seq.add_step( 'HCOH',    ['H2O'],               4 )
    seq.add_step( 'C',       ['H2O', 'H2O'],        4 )
    seq.add_step( 'OCH3',    ['H2O'],               3 )
    seq.add_step( 'CH2OH',   ['H2O'],               3 )
    seq.add_step( 'CH',      ['H2O', 'H2O'],        3 )
    seq.add_step( 'O',       ['H2O', 'CH4'],        2 )
    seq.add_step( 'CH2',     ['H2O', 'H2O'],        2 )
    seq.add_step( 'OH',      ['H2O', 'CH4'],        1 )
    seq.add_step( 'CH3',     ['H2O', 'H2O'],        1 )
    seq.add_step( 'H',       ['CO2'],               7 )
    seq.add_step( None,      ['H2O', 'H2O', 'CH4'], 0 )
    seq.add_step( None,      ['H2O', 'CH3OH'],      2 )
    seq.add_step( None,      ['CO2', 'H2'],         6 )
    seq.add_step( None,      ['H2C_O2H2'],          4 )
    seq.add_step( 'OH',      ['CH3OH'],             3 )

    return seq

