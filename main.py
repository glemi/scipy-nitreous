import testcases
import surf_summary
import max_delta_g
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages
import sequences


surfaces = ['Cu', 'AgCu', 'AuCu', 'PdCu', 'PtCu', 'NiCu', 'CoCu', 'RhCu', 'IrCu']

s = sequences.electroreduction('Cu')
s.calculate()

#max_delta_g.plot(surfaces)

with PdfPages('plots.pdf') as pdf:
    for surf in surfaces:
        seq = sequences.electroreduction(surf)
        seq.calculate()
        surf_summary.plot(seq)
        surf_summary.print(seq)

        pdf.savefig()
        plt.close()

