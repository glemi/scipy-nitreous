import builtins
from matplotlib import pyplot as plt

def plot(seq):
    builtins.print('')
    builtins.print("Plotting " + seq.title)

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
    builtins.print('')
    builtins.print(seq.title)
    builtins.print('')

    title = "%-41s : %8s %8s %8s \n" % (seq.title, "deltaG_0", "U_i", "G_i")
    builtins.print(title)
    for i, t in enumerate(seq.transitions):
        values = "%8.2f %8.2f %8.2f" % (t.dG0, t.Ui, t.Gi)
        line = "%2d  %16s --> %-16s : %s" % (i, t.step1.name, t.step2.name, values)
        builtins.print(line)

    builtins.print('')
    title = "%-41s : %8s \n" % (seq.title, "G(U=0)")
    builtins.print(title)
    for i, s in enumerate(seq.steps):
        line = "%2d  %37s : %8.2f" % (i, s.name , s.calc_energy(0))
        builtins.print(line)


def plot_G(seq):
    print('')
    print(seq.title)

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

