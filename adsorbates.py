all = dict()

class adsorbate:
    def __init__(self, name, zpe, CpdT, minusTS):
        self.name = name
        self.zpe = zpe
        self.CpdT = CpdT
        self.minusTS = minusTS
        self.thermal = zpe + CpdT + minusTS
        self.deltaE = dict()
        all[name] = self

#                                zpe               CpdT       minusTS
ads_HOCO  = adsorbate('HOCO',    0.624+(-0.25),    0.096,    -0.178)
ads_H     = adsorbate('H',       0.160,            0.005,    -0.007)
ads_O     = adsorbate('O',       0.072,            0.025,    -0.038)
ads_OH    = adsorbate('OH',      0.364+(-0.30),    0.046,    -0.079)
ads_CO    = adsorbate('CO',      0.192+(-0.1),     0.076,    -0.153)
ads_HCO   = adsorbate('HCO',     0.444+(-0.1),     0.086,    -0.184)
ads_HCOH  = adsorbate('HCOH',    0.76518+(-0.25),  0.067857, -0.109398)
ads_COH   = adsorbate('COH',     0.451338+(-0.25), 0.067846, -0.110301)
ads_CH2OH = adsorbate('CH2OH',   1.07+(-0.25),     0.10,     -0.22)
ads_OCH2  = adsorbate('OCH2',    0.758+(-0.1),     0.091,    -0.19)
ads_OCH3  = adsorbate('OCH3',    1.108+(-0.1),     0.093,    -0.179)
ads_CH    = adsorbate('CH',      0.348217,         0.027848, -0.039143)
ads_C     = adsorbate('C',       0.096609,         0.017357, -0.025197)
ads_CH2   = adsorbate('CH2',     0.589369,         0.049158, -0.075322)
ads_CH3   = adsorbate('CH3',     0.900309,         0.059646, -0.09646)

# added by Jo 02.10.2018
ads_N2O  = adsorbate('N2O',    0,    0,    0)
ads_N2   = adsorbate('N2',     0,    0,    0)
ads_O    = adsorbate('O',      0,    0,    0)  # overrides previous entry
ads_OH   = adsorbate('OH',     0,    0,    0)  # overrides previous entry
ads_H    = adsorbate('H',      0,    0,    0)  # overrides previous entry

#####################################################
#Cu
#####################################################
ads_HOCO .deltaE['Cu'] = -26.5274
ads_H    .deltaE['Cu'] = -3.65046
ads_O    .deltaE['Cu'] = -6.71974
ads_C    .deltaE['Cu'] = -7.17104
ads_OH   .deltaE['Cu'] = -11.14198
ads_CO   .deltaE['Cu'] = -15.77668
ads_HCO  .deltaE['Cu'] = -18.65205
ads_HCOH .deltaE['Cu'] = -22.26612
ads_COH  .deltaE['Cu'] = -18.16700
ads_OCH2 .deltaE['Cu'] = -22.61812
ads_OCH3 .deltaE['Cu'] = -27.08298
ads_CH   .deltaE['Cu'] = -11.57807
ads_CH2  .deltaE['Cu'] = -15.42094
ads_CH3  .deltaE['Cu'] = -19.933390
ads_CH2OH.deltaE['Cu'] = -26.2721
#####################################################
#AgCu
#####################################################
ads_HOCO .deltaE['AgCu'] = -26.3112
ads_H    .deltaE['AgCu'] = -3.55945
ads_O    .deltaE['AgCu'] = -6.60529
ads_C    .deltaE['AgCu'] = -6.36873
ads_OH   .deltaE['AgCu'] = -10.80603
ads_CO   .deltaE['AgCu'] = -15.66087
ads_HCO  .deltaE['AgCu'] = -18.57034
ads_HCOH .deltaE['AgCu'] = -22.00161
ads_COH  .deltaE['AgCu'] = -18.08250
ads_OCH2 .deltaE['AgCu'] = -22.39973
ads_OCH3 .deltaE['AgCu'] = -26.740680
ads_CH   .deltaE['AgCu'] = -11.23814
ads_CH2  .deltaE['AgCu'] = -15.18428
ads_CH3  .deltaE['AgCu'] = -19.71418
ads_CH2OH.deltaE['AgCu'] = -26.1352
#####################################################
#AuCu
#####################################################
ads_HOCO .deltaE['AuCu'] = -26.0553
ads_H    .deltaE['AuCu'] = -3.53830
ads_O    .deltaE['AuCu'] = -6.36351
ads_C    .deltaE['AuCu'] = -6.31248
ads_OH   .deltaE['AuCu'] = -10.61697
ads_CO   .deltaE['AuCu'] = -15.59131
ads_HCO  .deltaE['AuCu'] = -18.62954
ads_HCOH .deltaE['AuCu'] = -22.07779
ads_COH  .deltaE['AuCu'] = -17.96348
ads_OCH2 .deltaE['AuCu'] = -22.43770
ads_OCH3 .deltaE['AuCu'] = -26.6496
ads_CH   .deltaE['AuCu'] = -11.041310
ads_CH2  .deltaE['AuCu'] = -15.15543
ads_CH3  .deltaE['AuCu'] = -19.72368
ads_CH2OH.deltaE['AuCu'] = -26.16257
#####################################################
#PdCu
#####################################################
ads_HOCO .deltaE['PdCu'] = -26.3458
ads_H    .deltaE['PdCu'] = -3.67278
ads_O    .deltaE['PdCu'] = -6.27276
ads_C    .deltaE['PdCu'] = -7.28750
ads_OH   .deltaE['PdCu'] = -10.6734
ads_CO   .deltaE['PdCu'] = -16.05400
ads_HCO  .deltaE['PdCu'] = -18.95695
ads_HCOH .deltaE['PdCu'] = -22.4260
ads_COH  .deltaE['PdCu'] = -18.39823
ads_OCH2 .deltaE['PdCu'] = -22.73870
ads_OCH3 .deltaE['PdCu'] = -26.471
ads_CH   .deltaE['PdCu'] = -11.49781
ads_CH2  .deltaE['PdCu'] = -15.3539
ads_CH3  .deltaE['PdCu'] = -19.8299
ads_CH2OH.deltaE['PdCu'] = -26.2701
#####################################################
#PtCu
#####################################################
ads_HOCO .deltaE['PtCu'] = -26.8560
ads_H    .deltaE['PtCu'] = -3.76678
ads_O    .deltaE['PtCu'] = -6.23149
ads_C    .deltaE['PtCu'] = -7.87882
ads_OH   .deltaE['PtCu'] = -10.6629
ads_CO   .deltaE['PtCu'] = -16.57052
ads_HCO  .deltaE['PtCu'] = -19.45477
ads_HCOH .deltaE['PtCu'] = -22.8997
ads_COH  .deltaE['PtCu'] = -19.13501
ads_OCH2 .deltaE['PtCu'] = -22.85264
ads_OCH3 .deltaE['PtCu'] = -26.390
ads_CH   .deltaE['PtCu'] = -12.05391
ads_CH2  .deltaE['PtCu'] = -15.8414
ads_CH3  .deltaE['PtCu'] = -20.1554
ads_CH2OH.deltaE['PtCu'] = -26.7756
#####################################################
#NiCu
#####################################################
ads_HOCO .deltaE['NiCu'] = -26.8061
ads_H    .deltaE['NiCu'] = -3.83548
ads_O    .deltaE['NiCu'] = -6.97252
ads_C    .deltaE['NiCu'] = -8.4670
ads_OH   .deltaE['NiCu'] = -11.27081
ads_CO   .deltaE['NiCu'] = -16.61708
ads_HCO  .deltaE['NiCu'] = -19.29373
ads_HCOH .deltaE['NiCu'] = -22.9392
ads_COH  .deltaE['NiCu'] = -19.31113
ads_OCH2 .deltaE['NiCu'] = -23.19331
ads_OCH3 .deltaE['NiCu'] = -27.181
ads_CH   .deltaE['NiCu'] = -12.4776
ads_CH2  .deltaE['NiCu'] = -15.8602
ads_CH3  .deltaE['NiCu'] = -20.2202
ads_CH2OH.deltaE['NiCu'] = -26.6685
#####################################################
#CoCu
#####################################################
ads_HOCO .deltaE['CoCu'] = -26.9664
ads_H    .deltaE['CoCu'] = -3.82157
ads_O    .deltaE['CoCu'] = -7.41336
ads_C    .deltaE['CoCu'] = -7.55026
ads_OH   .deltaE['CoCu'] = -11.4913
ads_CO   .deltaE['CoCu'] = -16.58706
ads_HCO  .deltaE['CoCu'] = -19.3961
ads_HCOH .deltaE['CoCu'] = -22.8301
ads_COH  .deltaE['CoCu'] = -19.78685
ads_OCH2 .deltaE['CoCu'] = -23.41671
ads_OCH3 .deltaE['CoCu'] = -27.234
ads_CH   .deltaE['CoCu'] = -12.73271
ads_CH2  .deltaE['CoCu'] = -16.1337
ads_CH3  .deltaE['CoCu'] = -20.1497
ads_CH2OH.deltaE['CoCu'] = -26.5871
#####################################################
#RhCu
#####################################################
ads_HOCO .deltaE['RhCu'] = -26.9000
ads_H    .deltaE['RhCu'] = -3.9749
ads_O    .deltaE['RhCu'] = -6.78211
ads_C    .deltaE['RhCu'] = -8.89376
ads_OH   .deltaE['RhCu'] = -10.98186
ads_CO   .deltaE['RhCu'] = -16.84026
ads_HCO  .deltaE['RhCu'] = -19.6036
ads_HCOH .deltaE['RhCu'] = -23.1831
ads_COH  .deltaE['RhCu'] = -19.88730
ads_OCH2 .deltaE['RhCu'] = -23.15607
ads_OCH3 .deltaE['RhCu'] = -26.872
ads_CH   .deltaE['RhCu'] = -12.6921
ads_CH2  .deltaE['RhCu'] =  -16.0881
ads_CH3  .deltaE['RhCu'] = -20.1831
ads_CH2OH.deltaE['RhCu'] = -26.7255
#####################################################
#IrCu
#####################################################
ads_HOCO .deltaE['IrCu'] = -27.2756
ads_H    .deltaE['IrCu'] = -4.0242
ads_O    .deltaE['IrCu'] = -7.65414
ads_C    .deltaE['IrCu'] = -9.34334
ads_OH   .deltaE['IrCu'] = -11.1436
ads_CO   .deltaE['IrCu'] = -17.33593
ads_HCO  .deltaE['IrCu'] =-20.6464
ads_HCOH .deltaE['IrCu'] = -23.8012
ads_COH  .deltaE['IrCu'] = -20.46959
ads_OCH2 .deltaE['IrCu'] = -24.08578
ads_OCH3 .deltaE['IrCu'] = -27.514
ads_CH   .deltaE['IrCu'] = -13.18678
ads_CH2  .deltaE['IrCu'] = -17.5478
ads_CH3  .deltaE['IrCu'] = -21.4278
ads_CH2OH.deltaE['IrCu'] = -27.3107

# new by Jo, 02.10.2018
#####################################################
#Mo
#####################################################
ads_N2O.deltaE['Mo'] = -21.589723  #delga G value
ads_N2 .deltaE['Mo'] = -17.382936
ads_O  .deltaE['Mo'] = -9.064903
ads_OH .deltaE['Mo'] = -11.845290
ads_H  .deltaE['Mo'] = -4.013046
#####################################################
#Ni
#####################################################
ads_N2O.deltaE['Ni'] = -19.819434  #delga G value
ads_N2 .deltaE['Ni'] = -17.174128
ads_O  .deltaE['Ni'] = -7.259955
ads_OH .deltaE['Ni'] = -10.781557
ads_H  .deltaE['Ni'] = -3.859444
#####################################################
#Pd
#####################################################
ads_N2O.deltaE['Pd'] = -21.567071  #delga G value
ads_N2 .deltaE['Pd'] = -17.037934
ads_O  .deltaE['Pd'] = -6.286974
ads_OH .deltaE['Pd'] = -10.018435
ads_H  .deltaE['Pd'] = -3.862150
#####################################################
#Pt
#####################################################
ads_N2O.deltaE['Pt'] = -21.460470  #delga G value
ads_N2 .deltaE['Pt'] = -16.887591
ads_O  .deltaE['Pt'] = -6.001339
ads_OH .deltaE['Pt'] = -9.693757
ads_H  .deltaE['Pt'] = -3.738993
#####################################################
#Fe
#####################################################
ads_N2O.deltaE['Fe'] = -22.370671  #delga G value
ads_N2 .deltaE['Fe'] = -17.224028
ads_O  .deltaE['Fe'] = -8.260101
ads_OH .deltaE['Fe'] = -11.455613
ads_H  .deltaE['Fe'] = -4.173438
#####################################################
#Cu
#####################################################
ads_N2O.deltaE['Cu'] = -21.438343  #delga G value
ads_N2 .deltaE['Cu'] = -16.743412
ads_O  .deltaE['Cu'] = -6.493218
ads_OH .deltaE['Cu'] = -10.524265
ads_H  .deltaE['Cu'] = -3.530473
#####################################################
#Au
#####################################################
ads_N2O.deltaE['Au'] = -21.472978  #delga G value
ads_N2 .deltaE['Au'] = -16.641096
ads_O  .deltaE['Au'] = -5.068474
ads_OH .deltaE['Au'] = -9.574697
ads_H  .deltaE['Au'] = -3.307320
#####################################################
#Ag
#####################################################
ads_N2O.deltaE['Ag'] = -21.468197  #delga G value
ads_N2 .deltaE['Ag'] = -16.732422
ads_O  .deltaE['Ag'] = -5.530159
ads_OH .deltaE['Ag'] = -10.111855
ads_H  .deltaE['Ag'] = -3.110078
#####################################################
#Sn
#####################################################
ads_N2O.deltaE['Sn'] = -21.686143  #delga G value
ads_N2 .deltaE['Sn'] = -17.113646
ads_O  .deltaE['Sn'] = -7.189941
ads_OH .deltaE['Sn'] = -10.666063
ads_H  .deltaE['Sn'] = -3.030966
#####################################################
#Ti
#####################################################
ads_N2O.deltaE['Ti'] = -23.616685  #delga G value
ads_N2 .deltaE['Ti'] = -17.384115
ads_O  .deltaE['Ti'] = -10.774389
ads_OH .deltaE['Ti'] = -13.109736
ads_H  .deltaE['Ti'] = -4.356588
#####################################################
#In
#####################################################
ads_N2O.deltaE['In'] = -22.705992  #delga G value
ads_N2 .deltaE['In'] = -18.069645
ads_O  .deltaE['In'] = -8.209759
ads_OH .deltaE['In'] = -11.891404
ads_H  .deltaE['In'] = -4.064961
#####################################################
#Zn
#####################################################
ads_N2O.deltaE['Zn'] = -18.189916  #delga G value
ads_N2 .deltaE['Zn'] = -16.681088
ads_O  .deltaE['Zn'] = -6.622997
ads_OH .deltaE['Zn'] = -10.212798
ads_H  .deltaE['Zn'] = -2.621970
