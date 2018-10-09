import sequences
import scipy.optimize
import numpy
import surf_summary
from matplotlib import pyplot as plt


def plot(sequence, surfnames):
    n = len(surfnames)
    indices = numpy.arange(0,n,1)
    maxDG = numpy.ones(n) * numpy.nan
    maxG0 = numpy.ones(n) * numpy.nan
    maxU0 = numpy.ones(n) * numpy.nan
    minU0 = numpy.ones(n) * numpy.nan

    for index, surfname in enumerate(surfnames):
        seq = sequence(surfname)
        seq.calculate()

        maxDG[index] = numpy.nanmax(seq.dG0)
        maxG0[index] = numpy.nanmax(seq.Gi)
        maxU0[index] = numpy.nanmax(seq.Ui)
        minU0[index] = numpy.nanmin(seq.Ui)

    # this line is necessary to compensate for a bug in the x tick labelling
    surfnames = [surfnames[0]] + surfnames

    fig = plt.figure('MaxG'+seq.name, figsize=(12,8))
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
    ax.set_title('Highest $U_i$ (at $\Delta G = 0$)')

    ax = plt.subplot(224)
    plt.stem(indices, minU0)
    ax.set_xticklabels(surfnames)
    ax.set_title('Minimum $U_i$ (at $\Delta G = 0$)')

    plt.suptitle('Maxima and Minima of G / U among reaction steps of each surface\n' + seq.name)
    return fig
    #plt.show(block=False)

def newplot(sequence, surfnames):
    n = len(surfnames)
    indices = numpy.arange(0, n, 1)
    maxDG = numpy.ones(n) * numpy.nan
    maxG0 = numpy.ones(n) * numpy.nan
    maxUi = numpy.ones(n) * numpy.nan
    minUi = numpy.ones(n) * numpy.nan

    for index, surfname in enumerate(surfnames):
        seq = sequence(surfname)
        seq.calculate()

        maxDG[index] = numpy.nanmax(seq.dG0)
        maxG0[index] = numpy.nanmax(seq.Gi)
        maxUi[index] = numpy.nanmax(seq.Ui)
        minUi[index] = numpy.nanmin(seq.Ui)

        imaxDG[index] = numpy.nanargmax(seq.dG0)
        imaxG0[index] = numpy.nanargmax(seq.Gi)
        imaxUi[index] = numpy.nanargmax(seq.Ui)
        iminUi[index] = numpy.nanargmin(seq.Ui)

    # this line is necessary to compensate for a bug in the x tick labelling
    surfnames = [surfnames[0]] + surfnames

    fig = plt.figure('MaxG'+seq.name, figsize=(12, 8))
    ax = plt.subplot(221)
    plt.stem(indices, maxDG)
    ax.set_xticklabels(surfnames)
    ax.set_title('Highest $\Delta G$ (at $U=0$)')

    ax = plt.subplot(222)
    plt.stem(indices, maxG0)
    ax.set_xticklabels(surfnames)
    ax.set_title('Highest $G$ (at $\Delta G = 0$)')

    ax = plt.subplot(223)
    plt.stem(indices, maxUi)
    ax.set_xticklabels(surfnames)
    ax.set_title('Highest $U_i$ (at $\Delta G = 0$)')

    ax = plt.subplot(224)
    plt.stem(indices, minUi)
    ax.set_xticklabels(surfnames)
    ax.set_title('Minimum $U_i$ (at $\Delta G = 0$)')

    plt.suptitle('Maxima and Minima of G / U among reaction steps of each surface\n' + seq.name)
    return fig
    #plt.show(block=False)