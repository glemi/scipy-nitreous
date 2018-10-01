import testcases
import surf_summary
import max_delta_g
import numpy
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages
import sequences


surfaces = ['Cu', 'AgCu', 'AuCu', 'PdCu', 'PtCu', 'NiCu', 'CoCu', 'RhCu', 'IrCu']

# plot  max{dG} @ U=0, max{G} @ dG=0, max{Ui} @ dG=0, min{Ui} @ dG=0
# max_delta_g.plot(surfaces)


# ---------------------------------------------------
# Plot per-step data for each surface
# ---------------------------------------------------

# # Plots of deltaG and G at the intersection points
# with PdfPages('Iplots.pdf') as pdf:
#     for surf in surfaces:
#         seq = sequences.electroreduction(surf)
#         seq.calculate()
#         surf_summary.plot(seq)
#         surf_summary.print(seq)
#
#         pdf.savefig()
#         plt.close()

# # Plots of G for different, fixed values of U
# with PdfPages('Gplots.pdf') as pdf:
#     for surf in surfaces:
#         seq = sequences.electroreduction(surf)
#         seq.calculate(U = [-1, -0.5, 0, 0.5])
#         surf_summary.plot_G(seq)
#
#         pdf.savefig()
#         plt.close()
