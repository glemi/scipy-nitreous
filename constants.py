import numpy

kB_eV = 0.00008617343
pH = 6.7
T_kelvin = 298.15  #25 celcious
RHE_convert = kB_eV*T_kelvin*numpy.log(10)*pH

N2O_poten = -21.317637641
el_pot0 = -3.32268236  #0.5*H2_poten
ref_pot = N2O_poten + 2*el_pot0
