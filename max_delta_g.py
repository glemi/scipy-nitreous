import testcases
import scipy.optimize
import numpy
import surf_summary
from matplotlib import pyplot as plt


def plot(surfnames):
    n = len(surfnames)
    indices = numpy.arange(0,n,1)
    maxDG = numpy.ones(n) * numpy.nan
    maxG0 = numpy.ones(n) * numpy.nan
    maxU0 = numpy.ones(n) * numpy.nan
    minU0 = numpy.ones(n) * numpy.nan

    for index, surfname in enumerate(surfnames):
        sys = testcases.define_systems(surfname)
        res = surf_summary.calc_stuff(sys)

        maxDG[index] = numpy.nanmax(res.dG0)
        maxG0[index] = numpy.nanmax(res.Gi)
        maxU0[index] = numpy.nanmax(res.U0)
        minU0[index] = numpy.nanmin(res.U0)

    # this line is necessary to compensate for a bug in the x tick labelling
    surfnames = [surfnames[0]] + surfnames

    plt.figure('MaxG', figsize=(12,8))
    ax = plt.subplot(221)
    plt.stem(indices, maxDG)
    ax.set_xticklabels(surfnames)
    ax.set_title('Highest $\Delta G$ (at $U=0$)')

    ax = plt.subplot(222)
    plt.stem(indices, maxG0)
    ax.set_xticklabels(surfnames)
    ax.set_title('Highest $G$ (at $\Delta G = 0$)')

    ax = plt.subplot(223)
    plt.stem(indices, maxU0)
    ax.set_xticklabels(surfnames)
    ax.set_title('Highest $U_0$ (at $\Delta G = 0$)')

    ax = plt.subplot(224)
    plt.stem(indices, minU0)
    ax.set_xticklabels(surfnames)
    ax.set_title('Minimum $U_0$ (at $\Delta G = 0$)')

    plt.suptitle('Maxima and Minima of G / U among reaction steps of each surface')

    plt.show()