from systems import *


def define_systems(subst):
    sys = list()
    sys.append(system(subst, 'HOCO', [], 7))
    sys.append(system(subst, None, ['HCOOH'], 6))
    sys.append(system(subst, 'CO', ['H2O'], 6))
    sys.append(system(subst, 'HCO', ['H2O'], 5))
    sys.append(system(subst, 'COH', ['H2O'], 5))
    sys.append(system(subst, 'OCH2', ['H2O'], 4))
    sys.append(system(subst, 'HCOH', ['H2O'], 4))
    sys.append(system(subst, 'C', ['H2O', 'H2O'], 4))
    sys.append(system(subst, 'OCH3', ['H2O'], 3))
    sys.append(system(subst, 'CH2OH', ['H2O'], 3))
    sys.append(system(subst, 'CH', ['H2O', 'H2O'], 3))
    sys.append(system(subst, 'O', ['H2O', 'CH4'], 2))
    sys.append(system(subst, 'CH2', ['H2O', 'H2O'], 2))
    sys.append(system(subst, 'OH', ['H2O', 'CH4'], 1))
    sys.append(system(subst, 'CH3', ['H2O', 'H2O'], 1))
    sys.append(system(subst, 'H', ['CO2'], 7))
    sys.append(system(subst, None, ['H2O', 'H2O', 'CH4'], 0))
    sys.append(system(subst, None, ['H2O', 'CH3OH'], 2))
    sys.append(system(subst, None, ['CO2', 'H2'], 6))
    sys.append(system(subst, None, ['H2C_O2H2'], 4))
    sys.append(system(subst, 'OH', ['CH3OH'], 3))
    return sys


