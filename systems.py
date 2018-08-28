import gases
import adsorbates
import constants

class system:
    def __init__(self, surface, adsorbate, gas_list, nelect):
        self.autoname(surface, adsorbate, gas_list)
        self.surface = surface
        self.nelect = nelect
        self.adsorbate = None
        self.gases = list()
        if not adsorbate is None:
            self.adsorbate = adsorbates.all[adsorbate]
        for item in gas_list:
            self.gases += [gases.all[item]]

    def autoname(self, surfname, adsname, gasnames):
        self.name = surfname
        if not adsname is None:
            self.name += '_' + adsname
        elif not gasnames == []:
            self.name += '_' + gasnames[0]

    def calc_energy(self, U):
        electron_potential = constants.el_pot0 - U - constants.RHE_convert
        energy = self.nelect * electron_potential - constants.ref_pot
        if self.adsorbate is not None:
            energy += self.adsorbate.deltaE[self.surface]
            energy += self.adsorbate.thermal
        for gas in self.gases:
            energy += gas.potential
        return energy


sys_cu_hoco = system('Cu', 'HOCO', [], 7)