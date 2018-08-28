all = dict()

class gas:
    def __init__(self, name, potential):
        self.name = name
        self.potential = potential
        all[name] = self

gas('HCOOH', -29.9143)
gas('H2', -6.7919766)
gas('CO2', -23.224366)
gas('H2O', -14.193784)
gas('O', -7.4018074)
gas('CH4', -23.315456)
gas('CH3OH', -29.5325)
gas('H2C_O2H2', -36.4483192)

