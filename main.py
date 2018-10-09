import surf_summary
import sequences
import max_delta_g
import numpy
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages


surfaces1 = ['Cu', 'AgCu', 'AuCu', 'PdCu', 'PtCu', 'NiCu', 'CoCu', 'RhCu', 'IrCu']
surfaces2 = ['Mo', 'Ni', 'Pd', 'Pt', 'Fe', 'Cu', 'Au', 'Ag', 'Sn', 'Ti', 'In', 'Zn']

# plot  max{dG} @ U=0, max{G} @ dG=0, max{Ui} @ dG=0, min{Ui} @ dG=0
fig0 = max_delta_g.plot(sequences.electroreduction, surfaces1)
figA = max_delta_g.plot(sequences.eloreduction_pathA, surfaces2)
figB = max_delta_g.plot(sequences.eloreduction_pathB, surfaces2)
figC = max_delta_g.plot(sequences.eloreduction_pathC, surfaces2)

with PdfPages('Output/MaxDeltaG.pdf') as pdf:
    pdf.savefig(fig0)
    pdf.savefig(figA)
    pdf.savefig(figB)
    pdf.savefig(figC)

# Delete the following line if you don't want the plot windows to show
# after execution. You will only have the PDF file in that case.
#plt.show()

# ---------------------------------------------------
# Plot per-step data for each surface
# ---------------------------------------------------

# Plots of deltaG and G at the intersection points
# with PdfPages('Output/Iplots.pdf') as pdf:
#     for surf in surfaces2:
#         seq = sequences.eloreduction_pathA(surf)
#         seq.calculate()
#         surf_summary.plot(seq)
#         surf_summary.disp(seq)
#
#         pdf.savefig()
#         plt.close()

# Plots of G for different, fixed values of U
# with PdfPages('Output/Gplots.pdf') as pdf:
#     for surf in surfaces2:
#         seq = sequences.eloreduction_pathB(surf)
#         seq.calculate(U = [-1, -0.5, 0, 0.5])
#         surf_summary.plot_G(seq)
#
#         pdf.savefig()
#         plt.close()
