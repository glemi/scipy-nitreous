from builtins import print as bprint
#from __builtin__ import print as bprint
from matplotlib import pyplot as plt

def plot(seq):
    bprint('')
    bprint("Plotting " + seq.title)

    plt.figure(seq.surface, figsize=(12,8))
    ax = plt.subplot(221)

    plt.stem(seq.Ui, seq.Gi)
    ax.set_ylabel('$G$ at $(\Delta G = 0)$')
    ax.set_title('Intersection points where $\Delta G = 0$')
    ax.axhline(y=0, color='r')

    ax = plt.subplot(222)
    plt.stem(seq.tindices, seq.Gi)
    ax.set_xticks(seq.sindices)
    ax.set_ylabel('$G$ at $(\Delta G = 0)$')
    ax.set_title('Intersection points by reaction step')
    ax.axhline(y=0, color='r')

    ax = plt.subplot(223)
    for i in seq.sindices:
        plt.plot(seq.U, seq.G[i,:])
    plt.plot(seq.Ui, seq.Gi, 'o')
    ax.set_title('G(U) with intersection points marked')
    ax.set_xlabel('$U_0$')
    ax.set_ylabel('$G$')

    ax = plt.subplot(224)
    plt.stem(seq.tindices, seq.dG0)
    ax.set_xlabel('step')
    ax.set_ylabel('$\Delta G$ at $(U = 0)$')
    ax.set_xticks(seq.tindices)
    ax.set_title('$\Delta G$ at ($U = 0$) by reaction step')
    ax.axhline(y=0, color='r')

    plt.suptitle(seq.title)

def print(seq):
    bprint('')
    bprint(seq.title)
    bprint('')

    title = "%-41s : %8s %8s %8s \n" % (seq.title, "deltaG_0", "U_i", "G_i")
    bprint(title)
    for i, t in enumerate(seq.transitions):
        values = "%8.2f %8.2f %8.2f" % (t.dG0, t.Ui, t.Gi)
        line = "%2d  %16s --> %-16s : %s" % (i, t.step1.name, t.step2.name, values)
        bprint(line)

    bprint('')
    title = "%-41s : %8s \n" % (seq.title, "G(U=0)")
    bprint(title)
    for i, s in enumerate(seq.steps):
        line = "%2d  %37s : %8.2f" % (i, s.name , s.calc_energy(0))
        bprint(line)


def plot_G(seq):
    bprint('')
    bprint(seq.title)

    plt.figure(seq.surface, figsize=(12,8))
    ax = plt.subplot(221)
    plt.stem(seq.sindices, seq.G[:,0])
    ax.set_ylabel('$G$ at $(U = %.1f)$' % seq.U[0])
    ax.set_title('G by reaction step')
    ax.axhline(y=0, color='r')

    ax = plt.subplot(222)
    plt.stem(seq.sindices, seq.G[:, 1])
    ax.set_xticks(seq.sindices)
    ax.set_ylabel('$G$ at $(U = %.1f)$' % seq.U[1])
    ax.set_title('G by reaction step')
    ax.axhline(y=0, color='r')

    ax = plt.subplot(223)
    plt.stem(seq.sindices, seq.G[:, 2])
    ax.set_ylabel('$G$ at $(U = %.1f)$' % seq.U[2])
    ax.set_title('G by reaction step')
    ax.axhline(y=0, color='r')

    ax = plt.subplot(224)
    plt.stem(seq.sindices, seq.G[:, 3])
    ax.set_ylabel('$G$ at $(U = %.1f)$' % seq.U[3])
    ax.set_title('G by reaction step')
    ax.axhline(y=0, color='r')

    plt.suptitle(seq.title)

