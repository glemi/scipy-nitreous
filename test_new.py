from adsorbates import *
from systems import *
import constants
import testcases
import scipy.optimize
import numpy

from numpy import *
from matplotlib import pyplot as plt


#print(ads_HOCO.CpdT)
#print(ads_HOCO.thermal)
#print(ads_HOCO.deltaE['Cu'])
#print(ads_HOCO.deltaE['IrCu'])

print(sys_cu_hoco.name)
print(sys_cu_hoco.calc_energy(5))

sys = testcases.define_systems('Cu')

U = arange(-2, 6, 0.1)
U_RHE = U + constants.RHE_convert

def gplot(sys, U):
    G = sys.calc_energy(U)
    plt.plot(U, G)
    plt.xlabel('$U_{RHE}(V)$')
    plt.ylabel('free energy [eV]')
    plt.title('Cu(211)')

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

def plot_intersect(index):
    U0 = find_intersect(sys[index], sys[index+1])
    Gi = sys[index].calc_energy(U0)
    plt.figure('Cu 1-2')
    gplot(sys[index], U)
    gplot(sys[index+1], U)
    plt.plot(U0, Gi, 'x')

plot_intersect(5)


n = len(sys)
Urange = numpy.arange(-2, 2, 0.1)
U0 = numpy.ones(n-1)*numpy.nan
Gi = numpy.ones(n-1)*numpy.nan
G  = numpy.ones([n-1, Urange.size])
dG0 = numpy.ones(n-1)*numpy.nan
indices = range(0, n-1)

#https://matplotlib.org/tutorials/intermediate/color_cycle.html
for i in indices:
    sys1 = sys[i]
    sys2 = sys[i+1]
    U0[i] = find_intersect(sys1, sys2)
    Gi[i] = sys1.calc_energy(U0[i])
    G[i,:] = sys1.calc_energy(Urange)
    dG0[i] = sys1.calc_energy(0) - sys2.calc_energy(0)
    print('%12s ~ %-12s : U0 = %+.2f' % (sys1.name, sys2.name, U0[i]))

plt.figure('Copper')
ax = plt.subplot(221)

plt.stem(U0, Gi)
ax.set_xlabel('$U_0$')
ax.set_ylabel('$G$ at $(\Delta G = 0)$ ')
ax.set_title('Intersection points where $Delta G = 0$')

ax = plt.subplot(222)
plt.stem(indices, Gi)
ax.set_xticks(indices)
ax.set_title('Intersection points by reaction step')

ax = plt.subplot(223)
for i in indices:
    plt.plot(Urange, G[i,:])
plt.plot(U0, Gi, 'o')
ax.set_title('G(U) with intersection points marked')

ax = plt.subplot(224)
plt.stem(indices, dG0)
ax.set_xlabel('step')
ax.set_ylabel('$\Delta G$ at $(U = 0)$')
ax.set_xticks(indices)
ax.set_title('$Delta G$ at ($U = 0$) by reaction step')
#ax.axhline(y=0, color='k')
plt.show()

plt.suptitle('Cu')