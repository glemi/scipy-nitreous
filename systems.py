import gases
import adsorbates
import constants


def ensurelist(x):
    if not x:
        return list()
    elif type(x) is list:
        return x
    else:
        return [x]


class system:
    def __init__(self, surface, adsorbate_list, gas_list, nelect):
        self.name = ""  # defined below by autoname()
        self.surface = surface
        self.nelect = nelect
        self.adsorbates = list()
        self.gases = list()

        adsorbate_list = ensurelist(adsorbate_list)
        gas_list = ensurelist(gas_list)

        for item in adsorbate_list:
            self.adsorbates += [adsorbates.all[item]]
        for item in gas_list:
            self.gases += [gases.all[item]]

        self.autoname()

    def autoname(self):
        self.name = self.surface
        for ads in self.adsorbates:
            self.name += '_' + ads.name
        if (not self.adsorbates) and self.gases:
            self.name += '_' + self.gases[0].name

    def calc_energy(self, U):
        electron_potential = constants.el_pot0 - U - constants.RHE_convert
        energy = self.nelect * electron_potential - constants.ref_pot

        for ads in self.adsorbates:
            energy += ads.deltaE[self.surface]
            energy += ads.thermal

        for gas in self.gases:
            energy += gas.potential
        return energy


