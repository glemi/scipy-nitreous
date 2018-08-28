import testcases
import surf_summary
import max_delta_g
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages

surfaces = ['Cu', 'AgCu', 'AuCu', 'PdCu', 'PtCu', 'NiCu', 'CoCu', 'RhCu', 'IrCu']


max_delta_g.plot(surfaces)

# with PdfPages('plots.pdf') as pdf:
#     for surf in surfaces:
#         surf_summary.plot(surf)
#
#         pdf.savefig()
#         plt.close()
#
