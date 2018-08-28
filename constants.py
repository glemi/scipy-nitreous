import numpy

kB_eV = 0.00008617343
pH = 6.8
T_kelvin = 291.65
RHE_convert = kB_eV*T_kelvin*numpy.log(10)*pH

CO2_poten = -23.224366
el_pot0 = -3.3959883
ref_pot = CO2_poten + 8*el_pot0
