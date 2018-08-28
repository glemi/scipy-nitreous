import testcases
import scipy.optimize
import numpy
from matplotlib import pyplot as plt


def calc_stuff(sys):
    class result:
        def __init__(self, sys, Urange=numpy.arange(-2, 2, 0.1)):
            n = len(sys)
            self.n = n
            self.Urange = numpy.arange(-2, 2, 0.1)
            self.U0 = numpy.ones(n - 1) * numpy.nan
            self.G = numpy.ones([n-1, Urange.size]) * numpy.nan
            self.Gi = numpy.ones(n - 1) * numpy.nan
            self.dG0 = numpy.ones(n - 1) * numpy.nan
            self.indices = range(0, n - 1)

    def find_intersect(sys1, sys2):
        def deltaG(U):
            G1 = sys1.calc_energy(U)
            G2 = sys2.calc_energy(U)
            return numpy.abs(G1-G2)
        result = scipy.optimize.minimize_scalar(deltaG)
        if deltaG(result.x) > 0.01:
            return numpy.nan
        else:
            return result.x

    r = result(sys)
    # https://matplotlib.org/tutorials/intermediate/color_cycle.html
    for i in r.indices:
        sys1 = sys[i]
        sys2 = sys[i + 1]
        r.U0[i] = find_intersect(sys1, sys2)
        r.Gi[i] = sys1.calc_energy(r.U0[i])
        r.dG0[i] = sys1.calc_energy(0) - sys2.calc_energy(0)
        r.G[i, :] = sys1.calc_energy(r.Urange)
        print('%12s ~ %-12s : U0 = %+.2f' % (sys1.name, sys2.name, r.U0[i]))

    return r


def plot(surface_name):
    print('')
    print('Surface: ' + surface_name)
    sys = testcases.define_systems(surface_name)
    res = calc_stuff(sys)

    plt.figure(surface_name, figsize=(12,8))
    ax = plt.subplot(221)

    plt.stem(res.U0, res.Gi)
    ax.set_ylabel('$G$ at $(\Delta G = 0)$')
    ax.set_title('Intersection points where $\Delta G = 0$')
    ax.axhline(y=0, color='r')

    ax = plt.subplot(222)
    plt.stem(res.indices, res.Gi)
    ax.set_xticks(res.indices)
    ax.set_ylabel('$G$ at $(\Delta G = 0)$')
    ax.set_title('Intersection points by reaction step')
    ax.axhline(y=0, color='r')

    ax = plt.subplot(223)
    for i in res.indices:
        plt.plot(res.Urange, res.G[i,:])
    plt.plot(res.U0, res.Gi, 'o')
    ax.set_title('G(U) with intersection points marked')
    ax.set_xlabel('$U_0$')
    ax.set_ylabel('$G$')

    ax = plt.subplot(224)
    plt.stem(res.indices, res.dG0)
    ax.set_xlabel('step')
    ax.set_ylabel('$\Delta G$ at $(U = 0)$')
    ax.set_xticks(res.indices)
    ax.set_title('$\Delta G$ at ($U = 0$) by reaction step')
    ax.axhline(y=0, color='r')

    plt.suptitle(surface_name)
