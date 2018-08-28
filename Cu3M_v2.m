clear all
clc
%Copper
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%gas_phase_chemical_potential
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
kB_eV = 0.00008617343;
pH = 6.8;
T_kelvin = 291.65;
RHE_convert = kB_eV*T_kelvin*log(10)*pH;
HCOOH_poten = -29.9143;
H2_poten = -6.7919766;
CO2_poten = -23.224366;
H2O_poten = -14.193784;
O_poten = H2O_poten - H2_poten;
CH4_poten = -23.315456;
CH3OH_poten = -29.5325;
H2C_O2H2_poten = 0.36 + CO2_poten + (2*H2_poten);
%%%%%%%%%%%%%%%%%%%%%%%
%thermal_correction
%%%%%%%%%%%%%%%%%%%%%%%
%HOCO adsorbate
zpe_HOCO = 0.624+(-0.25);
CpdT_HOCO = 0.096;
minusTS_HOCO = -0.178;
thermal_HOCO = zpe_HOCO + CpdT_HOCO + minusTS_HOCO;
%H adsrobate
zpe_H = 0.160;
CpdT_H = 0.005;
minusTS_H = -0.007;
thermal_H = zpe_H + CpdT_H + minusTS_H;
%O adsrobate
zpe_O = 0.072;
CpdT_O = 0.025;
minusTS_O = -0.038;
thermal_O = zpe_O + CpdT_O + minusTS_O;
%OH adsorbate
zpe_OH = 0.364+(-0.30);
CpdT_OH = 0.046;
minusTS_OH = -0.079;
thermal_OH = zpe_OH + CpdT_OH + minusTS_OH;
%CO adsorbate
zpe_CO = 0.192+(-0.1);
CpdT_CO = 0.076;
minusTS_CO = -0.153;
thermal_CO = zpe_CO + CpdT_CO + minusTS_CO;
%HCO adsorbate
zpe_HCO = 0.444+(-0.1);
CpdT_HCO = 0.086;
minusTS_HCO = -0.184;
thermal_HCO = zpe_HCO + CpdT_HCO + minusTS_HCO;
%HCOH adsorbate 
zpe_HCOH = 0.76518+(-0.25);
CpdT_HCOH = 0.067857;
minusTS_HCOH = -0.109398;
thermal_HCOH = zpe_HCOH + CpdT_HCOH + minusTS_HCOH;
%COH adsorbate
zpe_COH = 0.451338+(-0.25);
CpdT_COH = 0.067846;
minusTS_COH = -0.110301;
thermal_COH = zpe_COH + CpdT_COH + minusTS_COH;
%CH2OH adsorbate
zpe_CH2OH = 1.07+(-0.25);
CpdT_CH2OH = 0.10;
minusTS_CH2OH = -0.22;
thermal_CH2OH = zpe_CH2OH + CpdT_CH2OH + minusTS_CH2OH;
%OCH2 adsorbate
zpe_OCH2 = 0.758+(-0.1);
CpdT_OCH2 = 0.091;
minusTS_OCH2 = -0.19;
thermal_OCH2 = zpe_OCH2 + CpdT_OCH2 + minusTS_OCH2;
%OCH3 adsorbate
zpe_OCH3 = 1.108+(-0.1);
CpdT_OCH3 = 0.093;
minusTS_OCH3 = -0.179;
thermal_OCH3 = zpe_OCH3 + CpdT_OCH3 + minusTS_OCH3;
%CH adsorbate  
zpe_CH = 0.348217;
CpdT_CH = 0.027848;
minusTS_CH = -0.039143;
thermal_CH = zpe_CH + CpdT_CH + minusTS_CH;
%C adsorbate 
zpe_C = 0.096609;
CpdT_C = 0.017357;
minusTS_C = -0.025197; 
thermal_C = zpe_C + CpdT_C + minusTS_C;
%CH2 adsorbate
zpe_CH2 = 0.589369;
CpdT_CH2 = 0.049158;
minusTS_CH2 = -0.075322;
thermal_CH2 = zpe_CH2 + CpdT_CH2 + minusTS_CH2;
%CH3 adsorbate
zpe_CH3 = 0.900309;
CpdT_CH3 = 0.059646;
minusTS_CH3 = -0.09646; 
thermal_CH3 = zpe_CH3 + CpdT_CH3 + minusTS_CH3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%E-Eslab_eV
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Cu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Cu_HOCO = -26.5274;
Cu_H = -3.65046;
Cu_O = -6.71974;
Cu_C = -7.17104;
Cu_OH = -11.14198;
Cu_CO = -15.77668;
Cu_HCO = -18.65205;
Cu_HCOH = -22.26612;
Cu_COH = -18.16700;
Cu_OCH2 = -22.61812;
Cu_OCH3 = -27.08298;
Cu_CH = -11.57807;
Cu_CH2 = -15.42094;
Cu_CH3 = -19.933390;
Cu_CH2OH = -26.2721;  %-26.2339
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%AgCu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AgCu_HOCO = -26.3112;
AgCu_H = -3.55945 ;
AgCu_O = -6.60529;
AgCu_C = -6.36873;
AgCu_OH = -10.80603;
AgCu_CO = -15.66087;
AgCu_HCO = -18.57034;
AgCu_HCOH = -22.00161;
AgCu_COH = -18.08250;
AgCu_OCH2 = -22.39973;
AgCu_OCH3 = -26.740680;
AgCu_CH = -11.23814;
AgCu_CH2 = -15.18428;
AgCu_CH3 = -19.71418;
AgCu_CH2OH = -26.1352;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%AuCu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AuCu_HOCO = -26.0553;
AuCu_H = -3.53830;
AuCu_O = -6.36351;
AuCu_C = -6.31248;
AuCu_OH = -10.61697;
AuCu_CO = -15.59131;
AuCu_HCO = -18.62954;
AuCu_HCOH = -22.07779;
AuCu_COH = -17.96348;
AuCu_OCH2 = -22.43770;
AuCu_OCH3 = -26.6496 ;
AuCu_CH = -11.041310;
AuCu_CH2 = -15.15543;
AuCu_CH3 = -19.72368;
AuCu_CH2OH = -26.16257;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%PdCu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PdCu_HOCO = -26.3458;
PdCu_H = -3.67278;
PdCu_O = -6.27276;
PdCu_C = -7.28750;
PdCu_OH = -10.6734;
PdCu_CO = -16.05400;
PdCu_HCO = -18.95695;
PdCu_HCOH = -22.4260;
PdCu_COH = -18.39823;
PdCu_OCH2 = -22.73870;
PdCu_OCH3 = -26.471  ;
PdCu_CH = -11.49781;
PdCu_CH2 = -15.3539 ;
PdCu_CH3 = -19.8299 ;
PdCu_CH2OH = -26.2701;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%PtCu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PtCu_HOCO = -26.8560;
PtCu_H = -3.76678;
PtCu_O = -6.23149;
PtCu_C = -7.87882;
PtCu_OH = -10.6629;
PtCu_CO = -16.57052;
PtCu_HCO = -19.45477;
PtCu_HCOH = -22.8997;
PtCu_COH = -19.13501;
PtCu_OCH2 = -22.85264;
PtCu_OCH3 = -26.390;
PtCu_CH = -12.05391 ;
PtCu_CH2 = -15.8414 ;
PtCu_CH3 = -20.1554 ;
PtCu_CH2OH = -26.7756;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%NiCu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NiCu_HOCO = -26.8061;
NiCu_H = -3.83548 ;
NiCu_O = -6.97252;
NiCu_C = -8.4670;
NiCu_OH = -11.27081;
NiCu_CO = -16.61708;
NiCu_HCO = -19.29373; 
NiCu_HCOH = -22.9392;
NiCu_COH = -19.31113;
NiCu_OCH2 = -23.19331;
NiCu_OCH3 = -27.181 ;
NiCu_CH = -12.4776 ;
NiCu_CH2 = -15.8602;
NiCu_CH3 = -20.2202 ;
NiCu_CH2OH = -26.6685;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CoCu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CoCu_HOCO = -26.9664;
CoCu_H = -3.82157;
CoCu_O = -7.41336;
CoCu_C = -7.55026;
CoCu_OH = -11.4913;
CoCu_CO = -16.58706;
CoCu_HCO = -19.3961;
CoCu_HCOH = -22.8301;
CoCu_COH = -19.78685;
CoCu_OCH2 = -23.41671 ;  
CoCu_OCH3 = -27.234 ;
CoCu_CH = -12.73271 ;
CoCu_CH2 = -16.1337;
CoCu_CH3 = -20.1497 ;
CoCu_CH2OH = -26.5871;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%RhCu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RhCu_HOCO = -26.9000 ;
RhCu_H = -3.9749;
RhCu_O = -6.78211;
RhCu_C = -8.89376;
RhCu_OH = -10.98186;
RhCu_CO = -16.84026;
RhCu_HCO = -19.6036; 
RhCu_HCOH = -23.1831;
RhCu_COH = -19.88730;
RhCu_OCH2 = -23.15607 ;  
RhCu_OCH3 = -26.872 ;
RhCu_CH = -12.6921 ;
RhCu_CH2 =  -16.0881;
RhCu_CH3 = -20.1831 ;
RhCu_CH2OH = -26.7255;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%IrCu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IrCu_HOCO = -27.2756;
IrCu_H = -4.0242;
IrCu_O = -7.65414;
IrCu_C = -9.34334;
IrCu_OH = -11.1436;
IrCu_CO = -17.33593;
IrCu_HCO =-20.6464 ;  
IrCu_HCOH = -23.8012 ;
IrCu_COH = -20.46959;
IrCu_OCH2 = -24.08578 ;  
IrCu_OCH3 = -27.514 ;
IrCu_CH = -13.18678;
IrCu_CH2 = -17.5478 ;
IrCu_CH3 = -21.4278 ;
IrCu_CH2OH = -27.3107;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%U_E_Copper
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    U = -2:0.001:1.5;
%     U = -0.3935;  %   U_RHE = -0.7515, RHE_convert = 0.3935 
    U_RHE = U + RHE_convert;
    elec = 0.5.*H2_poten - U - RHE_convert;
    ref = CO2_poten + 8.*elec;
    state_1Cu = (Cu_HOCO + thermal_HOCO + 7.*elec)-ref;
    state_HCOOHCu = (HCOOH_poten + 6.*elec)-ref;
    state_2Cu = (Cu_CO + thermal_CO + H2O_poten + 6.*elec)-ref;
    state_3Cu = (Cu_HCO + thermal_HCO + H2O_poten + 5.*elec)-ref;
    state_4Cu = (Cu_COH + thermal_COH + H2O_poten + 5.*elec)-ref;
    state_5Cu = (Cu_OCH2 + thermal_OCH2 + H2O_poten + 4.*elec)-ref;
    state_6Cu = (Cu_HCOH + thermal_HCOH + H2O_poten + 4.*elec)-ref;
    state_7Cu = (Cu_C + thermal_C + 2*H2O_poten + 4.*elec)-ref;
    state_8Cu = (Cu_OCH3 + thermal_OCH3 + H2O_poten + 3.*elec)-ref;
    state_9Cu = (Cu_CH2OH + thermal_CH2OH + H2O_poten + 3.*elec)-ref;
    state_10Cu = (Cu_CH + thermal_CH + 2*H2O_poten + 3.*elec)-ref;
    state_11Cu = (Cu_O + thermal_O + H2O_poten + CH4_poten + 2.*elec)-ref;
    state_12Cu = (Cu_CH2 + thermal_CH2 + 2*H2O_poten + 2.*elec)-ref;
    state_13Cu = (Cu_OH + thermal_OH + H2O_poten + CH4_poten + 1.*elec)-ref; 
    state_14Cu = (Cu_CH3 + thermal_CH3 + 2*H2O_poten + 1.*elec)-ref;
    state_15Cu = (Cu_H + thermal_H + CO2_poten + 7.*elec)-ref;
    state_CH4Cu = (CH4_poten + 2.*H2O_poten)-ref;
    state_CH3OHCu = (CH3OH_poten + H2O_poten + 2.*elec)-ref;
    state_H2Cu = (H2_poten + CO2_poten + 6.*elec)-ref;
    state_diolCu=(H2C_O2H2_poten + 4.*elec)-ref;
    state_16Cu = (CH3OH_poten + Cu_OH + thermal_OH + 3.*elec)-ref;
    
figure (1)
cmap=hsv(4);   
plot(U_RHE,state_1Cu,'g','linewidth',2)
xlabel('U_{RHE}(V)','FontName', 'Times New Roman', 'FontSize', 20);
ylim([-3.5 5.5]);
xlim([-1.5 1.5]);
ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20);
title ('Cu(211)','FontName', 'Times New Roman', 'FontSize', 20);
hold on
plot(U_RHE,state_HCOOHCu,'--g','linewidth',2)
plot(U_RHE,state_2Cu,'m','linewidth',2)
plot(U_RHE,state_3Cu,'c','linewidth',2)
plot(U_RHE,state_4Cu,'--c','linewidth',2)
plot(U_RHE,state_5Cu,'r','linewidth',2)
plot(U_RHE,state_6Cu,'--r','linewidth',2)
plot(U_RHE,state_7Cu,':r','linewidth',2)
plot(U_RHE,state_8Cu,'y','linewidth',2)
plot(U_RHE,state_9Cu,'--y','linewidth',2)
plot(U_RHE,state_10Cu,':y','linewidth',2)
plot(U_RHE,state_11Cu,'--m','linewidth',2)
plot(U_RHE,state_12Cu,':m','linewidth',2)
plot(U_RHE,state_13Cu,'b','linewidth',2)
plot(U_RHE,state_14Cu,'--b','linewidth',2)
plot(U_RHE,state_15Cu,':b','linewidth',2)
plot(U_RHE,state_16Cu,':g','linewidth',2)
plot(U_RHE,state_CH3OHCu,'k','linewidth',2)
plot(U_RHE,state_CH4Cu,'--k','linewidth',2)
plot(U_RHE,state_H2Cu,':k','linewidth',2)
plot(U_RHE,state_diolCu,'-.k','linewidth',2)

legend('state 1Cu','HCOOH','state 2Cu','state 3Cu','state 4Cu','state 5Cu','state 6Cu','state 7Cu','state 8Cu','state 9Cu','state 10Cu','state 11Cu','state 12Cu','state 13Cu','state 14Cu','state 15Cu','state 16Cu','CH_4','CH3OH','H_2','diol')
hold off
%  
% % figure (8)
% % cmap=hsv(4);
% % x = 0:11;
% % G1 = [ref-ref, state_1Cu, state_2Cu, state_3Cu, state_4Cu, state_6Cu, state_7Cu, state_8Cu, state_9Cu, state_CH4Cu, state_CH4Cu, state_CH4Cu];
% % G2 = [ref-ref, state_1Cu, state_2Cu, state_3Cu, state_4Cu, state_10Cu, state_13Cu, state_14Cu, state_15Cu, state_16Cu, state_CH4Cu, state_CH4Cu]; 
% % % plot(x,G1,'r','LineWidth',2)
% % stairs(x,G1,'r','LineWidth',2)
% % set(gca, 'XTick',0:11,'FontName', 'Times New Roman', 'FontSize', 20)
% % ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20)
% % xlabel('reaction coordinate','FontName', 'Times New Roman', 'FontSize', 20)
% % title ('Cu(211) formaldehyde path at U = -0.75 V_{RHE}','FontName', 'Times New Roman', 'FontSize', 20)
% % set(gca,'XGrid','on','XTickLabel',[ ],'YGrid','on','FontName', 'Times New Roman', 'FontSize', 20)
% % hold on
% % % plot(x,G2,'g','LineWidth',2)
% % stairs(x,G2,'g','LineWidth',2) 
% % legend('pathway A', 'pathway B')
% % hold off
% % 
% % figure (9)
% % x = 0:11;
% % G = [ref-ref, state_1Cu, state_2Cu, state_3Cu, state_4Cu, state_10Cu, state_11Cu, state_13Cu, state_14Cu, state_15Cu, state_16Cu, state_CH4Cu];
% % plot(x,G,'-','LineWidth',2)
% % stairs(x,G,'LineWidth',2)
% % set(gca, 'XTick',0:11, 'XTickLabel',{'ref' 'state1' 'state2' 'state3' 'state4' 'state10' 'state11' 'state13' 'state14' 'state15' 'state16' 'stateCH4'})
% % ylabel('free energy (eV)')
% % title ('Cu(211) non-formaldehyde + HCO* path at U = -0.7515 VRHE')
% %     
state_ref1_Cu=[U_RHE;ref-ref;state_1Cu];
state_ref1_Cu=transpose(state_ref1_Cu);
U_ref1_Cu=state_ref1_Cu(state_ref1_Cu(:,2)<state_ref1_Cu(:,3));
U_ref1_Cu=min(U_ref1_Cu)
% % 
state_1HCOOH_Cu=[U_RHE;state_1Cu;state_HCOOHCu];
state_1HCOOH_Cu=transpose(state_1HCOOH_Cu);
U_1HCOOH_Cu=state_1HCOOH_Cu(state_1HCOOH_Cu(:,2)<state_1HCOOH_Cu(:,3));
U_1HCOOH_Cu=min(U_1HCOOH_Cu)
% % 
state_12_Cu=[U_RHE;state_1Cu;state_2Cu];
state_12_Cu=transpose(state_12_Cu);
U_12_Cu=state_12_Cu(state_12_Cu(:,2)<state_12_Cu(:,3));
U_12_Cu=min(U_12_Cu)
% % 
state_23_Cu=[U_RHE;state_2Cu;state_3Cu];
state_23_Cu=transpose(state_23_Cu);
U_23_Cu=state_23_Cu(state_23_Cu(:,2)<state_23_Cu(:,3));
U_23_Cu=min(U_23_Cu)
% % 
state_24_Cu=[U_RHE;state_2Cu;state_4Cu];
state_24_Cu=transpose(state_24_Cu);
U_24_Cu=state_24_Cu(state_24_Cu(:,2)<state_24_Cu(:,3));
U_24_Cu=min(U_24_Cu)
% % 
state_35_Cu=[U_RHE;state_3Cu;state_5Cu];
state_35_Cu=transpose(state_35_Cu);
U_35_Cu=state_35_Cu(state_35_Cu(:,2)<state_35_Cu(:,3));
U_35_Cu=min(U_35_Cu)
% % 
state_36_Cu=[U_RHE;state_3Cu;state_6Cu];
state_36_Cu=transpose(state_36_Cu);
U_36_Cu=state_36_Cu(state_36_Cu(:,2)<state_36_Cu(:,3));
U_36_Cu=min(U_36_Cu)
% %
state_46_Cu=[U_RHE;state_4Cu;state_6Cu];
state_46_Cu=transpose(state_46_Cu);
U_46_Cu=state_46_Cu(state_46_Cu(:,2)<state_46_Cu(:,3));
U_46_Cu=min(U_46_Cu)
% %
state_58_Cu=[U_RHE;state_5Cu;state_8Cu];
state_58_Cu=transpose(state_58_Cu);
U_58_Cu=state_58_Cu(state_58_Cu(:,2)<state_58_Cu(:,3));
U_58_Cu=min(U_58_Cu)
% % 
state_811_Cu=[U_RHE;state_8Cu;state_11Cu];
state_811_Cu=transpose(state_811_Cu);
U_811_Cu=state_811_Cu(state_811_Cu(:,2)<state_811_Cu(:,3));
U_811_Cu=min(U_811_Cu)
% 
state_8CH3OH_Cu=[U_RHE;state_8Cu;state_CH3OHCu];
state_8CH3OH_Cu=transpose(state_8CH3OH_Cu);
U_8CH3OH_Cu=state_8CH3OH_Cu(state_8CH3OH_Cu(:,2)<state_8CH3OH_Cu(:,3));
U_8CH3OH_Cu=min(U_8CH3OH_Cu)
% 
state_1113_Cu=[U_RHE;state_11Cu;state_13Cu];
state_1113_Cu=transpose(state_1113_Cu);
U_1113_Cu=state_1113_Cu(state_1113_Cu(:,2)<state_1113_Cu(:,3));
U_1113_Cu=min(U_1113_Cu)
%
state_13CH4_Cu=[U_RHE;state_13Cu;state_CH4Cu];
state_13CH4_Cu=transpose(state_13CH4_Cu);
U_13CH4_Cu=state_13CH4_Cu(state_13CH4_Cu(:,2)<state_13CH4_Cu(:,3));
U_13CH4_Cu=min(U_13CH4_Cu)
%
state_diol9_Cu=[U_RHE;state_diolCu;state_9Cu];
state_diol9_Cu=transpose(state_diol9_Cu);
U_diol9_Cu=state_diol9_Cu(state_diol9_Cu(:,2)<state_diol9_Cu(:,3));
U_diol9_Cu=min(U_diol9_Cu)
%
state_9CH3OH_Cu=[U_RHE;state_9Cu;state_CH3OHCu];
state_9CH3OH_Cu=transpose(state_9CH3OH_Cu);
U_9CH3OH_Cu=state_9CH3OH_Cu(state_9CH3OH_Cu(:,2)<state_9CH3OH_Cu(:,3));
U_9CH3OH_Cu=min(U_9CH3OH_Cu)
% 
state_16CH3OH_Cu=[U_RHE;state_16Cu;state_CH3OHCu];
state_16CH3OH_Cu=transpose(state_16CH3OH_Cu);
U_16CH3OH_Cu=state_16CH3OH_Cu(state_16CH3OH_Cu(:,2)<state_16CH3OH_Cu(:,3));
U_16CH3OH_Cu=min(U_16CH3OH_Cu)
% 
state_912_Cu=[U_RHE;state_9Cu;state_12Cu];
state_912_Cu=transpose(state_912_Cu);
U_912_Cu=state_912_Cu(state_912_Cu(:,2)<state_912_Cu(:,3));
U_912_Cu=min(U_912_Cu)
%
state_1214_Cu=[U_RHE;state_9Cu;state_12Cu];
state_1214_Cu=transpose(state_1214_Cu);
U_1214_Cu=state_1214_Cu(state_1214_Cu(:,2)<state_1214_Cu(:,3));
U_1214_Cu=min(U_1214_Cu)
%
state_14CH4_Cu=[U_RHE;state_14Cu;state_CH4Cu];
state_14CH4_Cu=transpose(state_14CH4_Cu);
U_14CH4_Cu=state_14CH4_Cu(state_14CH4_Cu(:,2)<state_14CH4_Cu(:,3));
U_14CH4_Cu=min(U_14CH4_Cu)
%
state_15H2_Cu=[U_RHE;state_15Cu;state_H2Cu];
state_15H2_Cu=transpose(state_15H2_Cu);
U_15H2_Cu=state_15H2_Cu(state_15H2_Cu(:,2)<state_15H2_Cu(:,3));
U_15H2_Cu=min(U_15H2_Cu)
%
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %U_E_AgCu
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      U = -2:0.001:1.5  ;
% U = -1.11101;  %   U_RHE = -0.7175, U_34_AgCu =   -0.7175
    U_RHE = U + RHE_convert;
    elec = 0.5.*H2_poten - U - RHE_convert;
    ref = CO2_poten + 8.*elec;
    state_1AgCu = (AgCu_HOCO + thermal_HOCO + 7.*elec)-ref;
    state_HCOOHAgCu = (HCOOH_poten + 6.*elec)-ref;
    state_2AgCu = (AgCu_CO + thermal_CO + H2O_poten + 6.*elec)-ref;
    state_3AgCu = (AgCu_HCO + thermal_HCO + H2O_poten + 5.*elec)-ref;
    state_4AgCu = (AgCu_COH + thermal_COH + H2O_poten + 5.*elec)-ref;
    state_5AgCu = (AgCu_OCH2 + thermal_OCH2 + H2O_poten + 4.*elec)-ref;
    state_6AgCu = (AgCu_HCOH + thermal_HCOH + H2O_poten + 4.*elec)-ref;
    state_7AgCu = (AgCu_C + thermal_C + 2*H2O_poten + 4.*elec)-ref;
    state_8AgCu = (AgCu_OCH3 + thermal_OCH3 + H2O_poten + 3.*elec)-ref;
    state_9AgCu = (AgCu_CH2OH + thermal_CH2OH + H2O_poten + 3.*elec)-ref;
    state_10AgCu = (AgCu_CH + thermal_CH + 2*H2O_poten + 3.*elec)-ref;
    state_11AgCu = (AgCu_O + thermal_O + H2O_poten + CH4_poten + 2.*elec)-ref;
    state_12AgCu = (AgCu_CH2 + thermal_CH2 + 2*H2O_poten + 2.*elec)-ref;
    state_13AgCu = (AgCu_OH + thermal_OH + H2O_poten + CH4_poten + 1.*elec)-ref; 
    state_14AgCu = (AgCu_CH3 + thermal_CH3 + 2*H2O_poten + 1.*elec)-ref;
    state_15AgCu = (AgCu_H + thermal_H + CO2_poten + 7.*elec)-ref;
    state_16AgCu = (CH3OH_poten + AgCu_OH + thermal_OH + 3.*elec)-ref;
    state_CH4AgCu = (CH4_poten + 2.*H2O_poten)-ref;
    state_CH3OHAgCu = (CH3OH_poten + H2O_poten + 2.*elec)-ref;
    state_H2AgCu = (H2_poten + CO2_poten + 6.*elec)-ref;
    state_diolAgCu=(H2C_O2H2_poten + 4.*elec)-ref;   
      
figure (2)
cmap=hsv(4);   
plot(U_RHE,state_1AgCu,'g','linewidth',2)
xlabel('U_{RHE}(V)','FontName', 'Times New Roman', 'FontSize', 20);
ylim([-3.5 5.5]);
xlim([-1.5 1.5]);
ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20);
title ('AgCu(211)','FontName', 'Times New Roman', 'FontSize', 20);
hold on
plot(U_RHE,state_HCOOHAgCu,'--g','linewidth',2)
plot(U_RHE,state_2AgCu,'m','linewidth',2)
plot(U_RHE,state_3AgCu,'c','linewidth',2)
plot(U_RHE,state_4AgCu,'--c','linewidth',2)
plot(U_RHE,state_5AgCu,'r','linewidth',2)
plot(U_RHE,state_6AgCu,'--r','linewidth',2)
plot(U_RHE,state_7AgCu,':r','linewidth',2)
plot(U_RHE,state_8AgCu,'y','linewidth',2)
plot(U_RHE,state_9AgCu,'--y','linewidth',2)
plot(U_RHE,state_10AgCu,':y','linewidth',2)
plot(U_RHE,state_11AgCu,'--m','linewidth',2)
plot(U_RHE,state_12AgCu,':m','linewidth',2)
plot(U_RHE,state_13AgCu,'b','linewidth',2)
plot(U_RHE,state_14AgCu,'--b','linewidth',2)
plot(U_RHE,state_15AgCu,':b','linewidth',2)
plot(U_RHE,state_16AgCu,':g','linewidth',2)
plot(U_RHE,state_CH3OHAgCu,'k','linewidth',2)
plot(U_RHE,state_CH4AgCu,'--k','linewidth',2)
plot(U_RHE,state_H2AgCu,':k','linewidth',2)
plot(U_RHE,state_diolAgCu,'-.k','linewidth',2)

legend('state 1AgCu','HCOOH','state 2AgCu','state 3AgCu','state 4AgCu','state 5AgCu','state 6AgCu','state 7AgCu','state 8AgCu','state 9AgCu','state 10AgCu','state 11AgCu','state 12AgCu','state 13AgCu','state 14AgCu','state 15AgCu','state 16AgCu','CH_4','CH3OH','H_2','diol')
hold off
% % %       
% % % % figure (10)
% % % % cmap=hsv(4);
% % % % x = 0:11;
% % % % G1 = [ref-ref, state_1AgCu, state_2AgCu, state_3AgCu, state_4AgCu, state_6AgCu, state_7AgCu, state_8AgCu, state_9AgCu, state_CH4AgCu, state_CH4AgCu, state_CH4AgCu];
% % % % G2 = [ref-ref, state_1AgCu, state_2AgCu, state_3AgCu, state_4AgCu, state_10AgCu, state_13AgCu, state_14AgCu, state_15AgCu, state_16AgCu, state_CH4AgCu, state_CH4AgCu]; 
% % % % % plot(x,G1,'r','LineWidth',2)
% % % % stairs(x,G1,'r','LineWidth',2)
% % % % set(gca, 'XTick',0:11,'FontName', 'Times New Roman', 'FontSize', 20)
% % % % ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20)
% % % % xlabel('reaction coordinate','FontName', 'Times New Roman', 'FontSize', 20)
% % % % title ('Ag_{3}Cu(211) formaldehyde path at U = -0.72 V_{RHE}','FontName', 'Times New Roman', 'FontSize', 20)
% % % % set(gca,'XGrid','on','XTickLabel',[ ],'YGrid','on','FontName', 'Times New Roman', 'FontSize', 20)
% % % % hold on
% % % % % plot(x,G2,'g','LineWidth',2)
% % % % stairs(x,G2,'g','LineWidth',2) 
% % % % legend('pathway A', 'pathway B')
% % % % hold off
% % %     
state_ref1_AgCu=[U_RHE;ref-ref;state_1AgCu];
state_ref1_AgCu=transpose(state_ref1_AgCu);
U_ref1_AgCu=state_ref1_AgCu(state_ref1_AgCu(:,2)<state_ref1_AgCu(:,3));
U_ref1_AgCu=min(U_ref1_AgCu)
% % 
state_1HCOOH_AgCu=[U_RHE;state_1AgCu;state_HCOOHAgCu];
state_1HCOOH_AgCu=transpose(state_1HCOOH_AgCu);
U_1HCOOH_AgCu=state_1HCOOH_AgCu(state_1HCOOH_AgCu(:,2)<state_1HCOOH_AgCu(:,3));
U_1HCOOH_AgCu=min(U_1HCOOH_AgCu)
% % 
state_12_AgCu=[U_RHE;state_1AgCu;state_2AgCu];
state_12_AgCu=transpose(state_12_AgCu);
U_12_AgCu=state_12_AgCu(state_12_AgCu(:,2)<state_12_AgCu(:,3));
U_12_AgCu=min(U_12_AgCu)
% % 
state_23_AgCu=[U_RHE;state_2AgCu;state_3AgCu];
state_23_AgCu=transpose(state_23_AgCu);
U_23_AgCu=state_23_AgCu(state_23_AgCu(:,2)<state_23_AgCu(:,3));
U_23_AgCu=min(U_23_AgCu)
% % 
state_24_AgCu=[U_RHE;state_2AgCu;state_4AgCu];
state_24_AgCu=transpose(state_24_AgCu);
U_24_AgCu=state_24_AgCu(state_24_AgCu(:,2)<state_24_AgCu(:,3));
U_24_AgCu=min(U_24_AgCu)
% % 
state_35_AgCu=[U_RHE;state_3AgCu;state_5AgCu];
state_35_AgCu=transpose(state_35_AgCu);
U_35_AgCu=state_35_AgCu(state_35_AgCu(:,2)<state_35_AgCu(:,3));
U_35_AgCu=min(U_35_AgCu)
% % 
state_36_AgCu=[U_RHE;state_3AgCu;state_6AgCu];
state_36_AgCu=transpose(state_36_AgCu);
U_36_AgCu=state_36_AgCu(state_36_AgCu(:,2)<state_36_AgCu(:,3));
U_36_AgCu=min(U_36_AgCu)
% % 
state_46_AgCu=[U_RHE;state_4AgCu;state_6AgCu];
state_46_AgCu=transpose(state_46_AgCu);
U_46_AgCu=state_46_AgCu(state_46_AgCu(:,2)<state_46_AgCu(:,3));
U_46_AgCu=min(U_46_AgCu)
% % 
state_58_AgCu=[U_RHE;state_5AgCu;state_8AgCu];
state_58_AgCu=transpose(state_58_AgCu);
U_58_AgCu=state_58_AgCu(state_58_AgCu(:,2)<state_58_AgCu(:,3));
U_58_AgCu=min(U_58_AgCu)
% % 
state_811_AgCu=[U_RHE;state_8AgCu;state_11AgCu];
state_811_AgCu=transpose(state_811_AgCu);
U_811_AgCu=state_811_AgCu(state_811_AgCu(:,2)<state_811_AgCu(:,3));
U_811_AgCu=min(U_811_AgCu)
% 
state_8CH3OH_AgCu=[U_RHE;state_8AgCu;state_CH3OHAgCu];
state_8CH3OH_AgCu=transpose(state_8CH3OH_AgCu);
U_8CH3OH_AgCu=state_8CH3OH_AgCu(state_8CH3OH_AgCu(:,2)<state_8CH3OH_AgCu(:,3));
U_8CH3OH_AgCu=min(U_8CH3OH_AgCu)
% 
state_1113_AgCu=[U_RHE;state_11AgCu;state_13AgCu];
state_1113_AgCu=transpose(state_1113_AgCu);
U_1113_AgCu=state_1113_AgCu(state_1113_AgCu(:,2)<state_1113_AgCu(:,3));
U_1113_AgCu=min(U_1113_AgCu)
%
state_13CH4_AgCu=[U_RHE;state_13AgCu;state_CH4AgCu];
state_13CH4_AgCu=transpose(state_13CH4_AgCu);
U_13CH4_AgCu=state_13CH4_AgCu(state_13CH4_AgCu(:,2)<state_13CH4_AgCu(:,3));
U_13CH4_AgCu=min(U_13CH4_AgCu)
%
state_diol9_AgCu=[U_RHE;state_diolAgCu;state_9AgCu];
state_diol9_AgCu=transpose(state_diol9_AgCu);
U_diol9_AgCu=state_diol9_AgCu(state_diol9_AgCu(:,2)<state_diol9_AgCu(:,3));
U_diol9_AgCu=min(U_diol9_AgCu)
%
state_9CH3OH_AgCu=[U_RHE;state_9AgCu;state_CH3OHAgCu];
state_9CH3OH_AgCu=transpose(state_9CH3OH_AgCu);
U_9CH3OH_AgCu=state_9CH3OH_AgCu(state_9CH3OH_AgCu(:,2)<state_9CH3OH_AgCu(:,3));
U_9CH3OH_AgCu=min(U_9CH3OH_AgCu)
% 
state_15H2_AgCu=[U_RHE;state_15AgCu;state_H2AgCu];
state_15H2_AgCu=transpose(state_15H2_AgCu);
U_15H2_AgCu=state_15H2_AgCu(state_15H2_AgCu(:,2)<state_15H2_AgCu(:,3));
U_15H2_AgCu=min(U_15H2_AgCu)
%
state_diol9_AgCu=[U_RHE;state_diolAgCu;state_9AgCu];
state_diol9_AgCu=transpose(state_diol9_AgCu);
U_diol9_AgCu=state_diol9_AgCu(state_diol9_AgCu(:,2)<state_diol9_AgCu(:,3));
U_diol9_AgCu=min(U_diol9_AgCu)
%
state_9CH3OH_AgCu=[U_RHE;state_9AgCu;state_CH3OHAgCu];
state_9CH3OH_AgCu=transpose(state_9CH3OH_AgCu);
U_9CH3OH_AgCu=state_9CH3OH_AgCu(state_9CH3OH_AgCu(:,2)<state_9CH3OH_AgCu(:,3));
U_9CH3OH_AgCu=min(U_9CH3OH_AgCu)
% 
state_16CH3OH_AgCu=[U_RHE;state_16AgCu;state_CH3OHAgCu];
state_16CH3OH_AgCu=transpose(state_16CH3OH_AgCu);
U_16CH3OH_AgCu=state_16CH3OH_AgCu(state_16CH3OH_AgCu(:,2)<state_16CH3OH_AgCu(:,3));
U_16CH3OH_AgCu=min(U_16CH3OH_AgCu)
% 
state_912_AgCu=[U_RHE;state_9AgCu;state_12AgCu];
state_912_AgCu=transpose(state_912_AgCu);
U_912_AgCu=state_912_AgCu(state_912_AgCu(:,2)<state_912_AgCu(:,3));
U_912_AgCu=min(U_912_AgCu)
%
state_1214_AgCu=[U_RHE;state_9AgCu;state_12AgCu];
state_1214_AgCu=transpose(state_1214_AgCu);
U_1214_AgCu=state_1214_AgCu(state_1214_AgCu(:,2)<state_1214_AgCu(:,3));
U_1214_AgCu=min(U_1214_AgCu)
%
state_14CH4_AgCu=[U_RHE;state_14AgCu;state_CH4AgCu];
state_14CH4_AgCu=transpose(state_14CH4_AgCu);
U_14CH4_AgCu=state_14CH4_AgCu(state_14CH4_AgCu(:,2)<state_14CH4_AgCu(:,3));
U_14CH4_AgCu=min(U_14CH4_AgCu)
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %U_E_AuCu
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     U = -2:0.001:1.5;
%   U = -1.250011;  %   U_RHE =-1.1065, U_ref1_AuCu =  -1.1065
    U_RHE = U + RHE_convert;
    elec = 0.5.*H2_poten - U - RHE_convert;
    ref = CO2_poten + 8.*elec;
    state_1AuCu = (AuCu_HOCO + thermal_HOCO + 7.*elec)-ref;
    state_HCOOHAuCu = (HCOOH_poten + 6.*elec)-ref;
    state_2AuCu = (AuCu_CO + thermal_CO + H2O_poten + 6.*elec)-ref;
    state_3AuCu = (AuCu_HCO + thermal_HCO + H2O_poten + 5.*elec)-ref;
    state_4AuCu = (AuCu_COH + thermal_COH + H2O_poten + 5.*elec)-ref;
    state_5AuCu = (AuCu_OCH2 + thermal_OCH2 + H2O_poten + 4.*elec)-ref;
    state_6AuCu = (AuCu_HCOH + thermal_HCOH + H2O_poten + 4.*elec)-ref;
    state_7AuCu = (AuCu_C + thermal_C + 2*H2O_poten + 4.*elec)-ref;
    state_8AuCu = (AuCu_OCH3 + thermal_OCH3 + H2O_poten + 3.*elec)-ref;
    state_9AuCu = (AuCu_CH2OH + thermal_CH2OH + H2O_poten + 3.*elec)-ref;
    state_10AuCu = (AuCu_CH + thermal_CH + 2*H2O_poten + 3.*elec)-ref;
    state_11AuCu = (AuCu_O + thermal_O + H2O_poten + CH4_poten + 2.*elec)-ref;
    state_12AuCu = (AuCu_CH2 + thermal_CH2 + 2*H2O_poten + 2.*elec)-ref;
    state_13AuCu = (AuCu_OH + thermal_OH + H2O_poten + CH4_poten + 1.*elec)-ref; 
    state_14AuCu = (AuCu_CH3 + thermal_CH3 + 2*H2O_poten + 1.*elec)-ref;
    state_15AuCu = (AuCu_H + thermal_H + CO2_poten + 7.*elec)-ref;
    state_16AuCu = (CH3OH_poten + AuCu_OH + thermal_OH + 3.*elec)-ref;
    state_CH4AuCu = (CH4_poten + 2.*H2O_poten)-ref;
    state_CH3OHAuCu = (CH3OH_poten + H2O_poten + 2.*elec)-ref;
    state_H2AuCu = (H2_poten + CO2_poten + 6.*elec)-ref;
    state_diolAuCu=(H2C_O2H2_poten + 4.*elec)-ref;   
%       
figure (3)
cmap=hsv(4);   
plot(U_RHE,state_1AuCu,'g','linewidth',2)
xlabel('U_{RHE}(V)','FontName', 'Times New Roman', 'FontSize', 20);
ylim([-3.5 5.5]);
xlim([-1.5 1.5]);
ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20);
title ('AuCu(211)','FontName', 'Times New Roman', 'FontSize', 20);
hold on
plot(U_RHE,state_HCOOHAuCu,'--g','linewidth',2)
plot(U_RHE,state_2AuCu,'m','linewidth',2)
plot(U_RHE,state_3AuCu,'c','linewidth',2)
plot(U_RHE,state_4AuCu,'--c','linewidth',2)
plot(U_RHE,state_5AuCu,'r','linewidth',2)
plot(U_RHE,state_6AuCu,'--r','linewidth',2)
plot(U_RHE,state_7AuCu,':r','linewidth',2)
plot(U_RHE,state_8AuCu,'y','linewidth',2)
plot(U_RHE,state_9AuCu,'--y','linewidth',2)
plot(U_RHE,state_10AuCu,':y','linewidth',2)
plot(U_RHE,state_11AuCu,'--m','linewidth',2)
plot(U_RHE,state_12AuCu,':m','linewidth',2)
plot(U_RHE,state_13AuCu,'b','linewidth',2)
plot(U_RHE,state_14AuCu,'--b','linewidth',2)
plot(U_RHE,state_15AuCu,':b','linewidth',2)
plot(U_RHE,state_16AuCu,':g','linewidth',2)
plot(U_RHE,state_CH3OHAuCu,'k','linewidth',2)
plot(U_RHE,state_CH4AuCu,'--k','linewidth',2)
plot(U_RHE,state_H2AuCu,':k','linewidth',2)
plot(U_RHE,state_diolAuCu,'-.k','linewidth',2)

legend('state 1AuCu','HCOOH','state 2AuCu','state 3AuCu','state 4AuCu','state 5AuCu','state 6AuCu','state 7AuCu','state 8AuCu','state 9AuCu','state 10AuCu','state 11AuCu','state 12AuCu','state 13AuCu','state 14AuCu','state 15AuCu','state 16AuCu','CH_4','CH3OH','H_2','diol')
hold off
% % %       
% % % % figure (12)
% % % % cmap=hsv(4);
% % % % x = 0:11;
% % % % G1 = [ref-ref, state_1AuCu, state_2AuCu, state_3AuCu, state_4AuCu, state_6AuCu, state_7AuCu, state_8AuCu, state_9AuCu, state_CH4AuCu, state_CH4AuCu, state_CH4AuCu];
% % % % G2 = [ref-ref, state_1AuCu, state_2AuCu, state_3AuCu, state_4AuCu, state_10AuCu, state_13AuCu, state_14AuCu, state_15AuCu, state_16AuCu, state_CH4AuCu, state_CH4AuCu]; 
% % % % stairs(x,G1,'r','LineWidth',2)
% % % % set(gca, 'XTick',0:11,'FontName', 'Times New Roman', 'FontSize', 20)
% % % % ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20)
% % % % xlabel('reaction coordinate','FontName', 'Times New Roman', 'FontSize', 20)
% % % % title ('Au_{3}Cu(211) formaldehyde path at U = -0.86 V_{RHE}','FontName', 'Times New Roman', 'FontSize', 20)
% % % % set(gca,'XGrid','on','XTickLabel',[ ],'YGrid','on','FontName', 'Times New Roman', 'FontSize', 20)
% % % % hold on
% % % % stairs(x,G2,'g','LineWidth',2) 
% % % % legend('pathway A', 'pathway B')
% % % % hold off
% % %     
state_ref1_AuCu=[U_RHE;ref-ref;state_1AuCu];
state_ref1_AuCu=transpose(state_ref1_AuCu);
U_ref1_AuCu=state_ref1_AuCu(state_ref1_AuCu(:,2)<state_ref1_AuCu(:,3));
U_ref1_AuCu=min(U_ref1_AuCu)
% % 
state_1HCOOH_AuCu=[U_RHE;state_1AuCu;state_HCOOHAuCu];
state_1HCOOH_AuCu=transpose(state_1HCOOH_AuCu);
U_1HCOOH_AuCu=state_1HCOOH_AuCu(state_1HCOOH_AuCu(:,2)<state_1HCOOH_AuCu(:,3));
U_1HCOOH_AuCu=min(U_1HCOOH_AuCu)
% % 
state_12_AuCu=[U_RHE;state_1AuCu;state_2AuCu];
state_12_AuCu=transpose(state_12_AuCu);
U_12_AuCu=state_12_AuCu(state_12_AuCu(:,2)<state_12_AuCu(:,3));
U_12_AuCu=min(U_12_AuCu)
% % 
state_23_AuCu=[U_RHE;state_2AuCu;state_3AuCu];
state_23_AuCu=transpose(state_23_AuCu);
U_23_AuCu=state_23_AuCu(state_23_AuCu(:,2)<state_23_AuCu(:,3));
U_23_AuCu=min(U_23_AuCu)
% % 
state_24_AuCu=[U_RHE;state_2AuCu;state_4AuCu];
state_24_AuCu=transpose(state_24_AuCu);
U_24_AuCu=state_24_AuCu(state_24_AuCu(:,2)<state_24_AuCu(:,3));
U_24_AuCu=min(U_24_AuCu)
% % 
state_35_AuCu=[U_RHE;state_3AuCu;state_5AuCu];
state_35_AuCu=transpose(state_35_AuCu);
U_35_AuCu=state_35_AuCu(state_35_AuCu(:,2)<state_35_AuCu(:,3));
U_35_AuCu=min(U_35_AuCu)
% % 
state_36_AuCu=[U_RHE;state_3AuCu;state_6AuCu];
state_36_AuCu=transpose(state_36_AuCu);
U_36_AuCu=state_36_AuCu(state_36_AuCu(:,2)<state_36_AuCu(:,3));
U_36_AuCu=min(U_36_AuCu)
% % 
state_46_AuCu=[U_RHE;state_4AuCu;state_6AuCu];
state_46_AuCu=transpose(state_46_AuCu);
U_46_AuCu=state_46_AuCu(state_46_AuCu(:,2)<state_46_AuCu(:,3));
U_46_AuCu=min(U_46_AuCu)
% % 
state_58_AuCu=[U_RHE;state_5AuCu;state_8AuCu];
state_58_AuCu=transpose(state_58_AuCu);
U_58_AuCu=state_58_AuCu(state_58_AuCu(:,2)<state_58_AuCu(:,3));
U_58_AuCu=min(U_58_AuCu)
% % 
state_811_AuCu=[U_RHE;state_8AuCu;state_11AuCu];
state_811_AuCu=transpose(state_811_AuCu);
U_811_AuCu=state_811_AuCu(state_811_AuCu(:,2)<state_811_AuCu(:,3));
U_811_AuCu=min(U_811_AuCu)
% 
state_8CH3OH_AuCu=[U_RHE;state_8AuCu;state_CH3OHAuCu];
state_8CH3OH_AuCu=transpose(state_8CH3OH_AuCu);
U_8CH3OH_AuCu=state_8CH3OH_AuCu(state_8CH3OH_AuCu(:,2)<state_8CH3OH_AuCu(:,3));
U_8CH3OH_AuCu=min(U_8CH3OH_AuCu)
% 
state_1113_AuCu=[U_RHE;state_11AuCu;state_13AuCu];
state_1113_AuCu=transpose(state_1113_AuCu);
U_1113_AuCu=state_1113_AuCu(state_1113_AuCu(:,2)<state_1113_AuCu(:,3));
U_1113_AuCu=min(U_1113_AuCu)
%
state_13CH4_AuCu=[U_RHE;state_13AuCu;state_CH4AuCu];
state_13CH4_AuCu=transpose(state_13CH4_AuCu);
U_13CH4_AuCu=state_13CH4_AuCu(state_13CH4_AuCu(:,2)<state_13CH4_AuCu(:,3));
U_13CH4_AuCu=min(U_13CH4_AuCu)
%
state_diol9_AuCu=[U_RHE;state_diolAuCu;state_9AuCu];
state_diol9_AuCu=transpose(state_diol9_AuCu);
U_diol9_AuCu=state_diol9_AuCu(state_diol9_AuCu(:,2)<state_diol9_AuCu(:,3));
U_diol9_AuCu=min(U_diol9_AuCu)
%
state_9CH3OH_AuCu=[U_RHE;state_9AuCu;state_CH3OHAuCu];
state_9CH3OH_AuCu=transpose(state_9CH3OH_AuCu);
U_9CH3OH_AuCu=state_9CH3OH_AuCu(state_9CH3OH_AuCu(:,2)<state_9CH3OH_AuCu(:,3));
U_9CH3OH_AuCu=min(U_9CH3OH_AuCu)
% 
state_15H2_AuCu=[U_RHE;state_15AuCu;state_H2AuCu];
state_15H2_AuCu=transpose(state_15H2_AuCu);
U_15H2_AuCu=state_15H2_AuCu(state_15H2_AuCu(:,2)<state_15H2_AuCu(:,3));
U_15H2_AuCu=min(U_15H2_AuCu)
% 
state_diol9_AuCu=[U_RHE;state_diolAuCu;state_9AuCu];
state_diol9_AuCu=transpose(state_diol9_AuCu);
U_diol9_AuCu=state_diol9_AuCu(state_diol9_AuCu(:,2)<state_diol9_AuCu(:,3));
U_diol9_AuCu=min(U_diol9_AuCu)
%
state_9CH3OH_AuCu=[U_RHE;state_9AuCu;state_CH3OHAuCu];
state_9CH3OH_AuCu=transpose(state_9CH3OH_AuCu);
U_9CH3OH_AuCu=state_9CH3OH_AuCu(state_9CH3OH_AuCu(:,2)<state_9CH3OH_AuCu(:,3));
U_9CH3OH_AuCu=min(U_9CH3OH_AuCu)
% 
state_16CH3OH_AuCu=[U_RHE;state_16AuCu;state_CH3OHAuCu];
state_16CH3OH_AuCu=transpose(state_16CH3OH_AuCu);
U_16CH3OH_AuCu=state_16CH3OH_AuCu(state_16CH3OH_AuCu(:,2)<state_16CH3OH_AuCu(:,3));
U_16CH3OH_AuCu=min(U_16CH3OH_AuCu)
% 
state_912_AuCu=[U_RHE;state_9AuCu;state_12AuCu];
state_912_AuCu=transpose(state_912_AuCu);
U_912_AuCu=state_912_AuCu(state_912_AuCu(:,2)<state_912_AuCu(:,3));
U_912_AuCu=min(U_912_AuCu)
%
state_1214_AuCu=[U_RHE;state_9AuCu;state_12AuCu];
state_1214_AuCu=transpose(state_1214_AuCu);
U_1214_AuCu=state_1214_AuCu(state_1214_AuCu(:,2)<state_1214_AuCu(:,3));
U_1214_AuCu=min(U_1214_AuCu)
%
state_14CH4_AuCu=[U_RHE;state_14AuCu;state_CH4AuCu];
state_14CH4_AuCu=transpose(state_14CH4_AuCu);
U_14CH4_AuCu=state_14CH4_AuCu(state_14CH4_AuCu(:,2)<state_14CH4_AuCu(:,3));
U_14CH4_AuCu=min(U_14CH4_AuCu)
%%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %U_E_PdCu
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     U = -2:0.001:1.5;
%     U = -1.256;  %   U_RHE =-1.1065, U_ref1_PdCu =  -1.1065
    U_RHE = U + RHE_convert;
    elec = 0.5.*H2_poten - U - RHE_convert;
    ref = CO2_poten + 8.*elec;
    state_1PdCu = (PdCu_HOCO + thermal_HOCO + 7.*elec)-ref;
    state_HCOOHPdCu = (HCOOH_poten + 6.*elec)-ref;
    state_2PdCu = (PdCu_CO + thermal_CO + H2O_poten + 6.*elec)-ref;
    state_3PdCu = (PdCu_HCO + thermal_HCO + H2O_poten + 5.*elec)-ref;
    state_4PdCu = (PdCu_COH + thermal_COH + H2O_poten + 5.*elec)-ref;
    state_5PdCu = (PdCu_OCH2 + thermal_OCH2 + H2O_poten + 4.*elec)-ref;
    state_6PdCu = (PdCu_HCOH + thermal_HCOH + H2O_poten + 4.*elec)-ref;
    state_7PdCu = (PdCu_C + thermal_C + 2*H2O_poten + 4.*elec)-ref;
    state_8PdCu = (PdCu_OCH3 + thermal_OCH3 + H2O_poten + 3.*elec)-ref;
    state_9PdCu = (PdCu_CH2OH + thermal_CH2OH + H2O_poten + 3.*elec)-ref;
    state_10PdCu = (PdCu_CH + thermal_CH + 2*H2O_poten + 3.*elec)-ref;
    state_11PdCu = (PdCu_O + thermal_O + H2O_poten + CH4_poten + 2.*elec)-ref;
    state_12PdCu = (PdCu_CH2 + thermal_CH2 + 2*H2O_poten + 2.*elec)-ref;
    state_13PdCu = (PdCu_OH + thermal_OH + H2O_poten + CH4_poten + 1.*elec)-ref; 
    state_14PdCu = (PdCu_CH3 + thermal_CH3 + 2*H2O_poten + 1.*elec)-ref;
    state_15PdCu = (PdCu_H + thermal_H + CO2_poten + 7.*elec)-ref;
    state_16PdCu = (CH3OH_poten + PdCu_OH + thermal_OH + 3.*elec)-ref;
    state_CH4PdCu = (CH4_poten + 2.*H2O_poten)-ref;
    state_CH3OHPdCu = (CH3OH_poten + H2O_poten + 2.*elec)-ref;
    state_H2PdCu = (H2_poten + CO2_poten + 6.*elec)-ref;
    state_diolPdCu=(H2C_O2H2_poten + 4.*elec)-ref;   
      
figure (4)
cmap=hsv(4);   
plot(U_RHE,state_1PdCu,'g','linewidth',2)
xlabel('U_{RHE}(V)','FontName', 'Times New Roman', 'FontSize', 20);
ylim([-3.5 5.5]);
xlim([-1.5 1.5]);
ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20);
title ('PdCu(211)','FontName', 'Times New Roman', 'FontSize', 20);
hold on
plot(U_RHE,state_HCOOHPdCu,'--g','linewidth',2)
plot(U_RHE,state_2PdCu,'m','linewidth',2)
plot(U_RHE,state_3PdCu,'c','linewidth',2)
plot(U_RHE,state_4PdCu,'--c','linewidth',2)
plot(U_RHE,state_5PdCu,'r','linewidth',2)
plot(U_RHE,state_6PdCu,'--r','linewidth',2)
plot(U_RHE,state_7PdCu,':r','linewidth',2)
plot(U_RHE,state_8PdCu,'y','linewidth',2)
plot(U_RHE,state_9PdCu,'--y','linewidth',2)
plot(U_RHE,state_10PdCu,':y','linewidth',2)
plot(U_RHE,state_11PdCu,'--m','linewidth',5)
plot(U_RHE,state_12PdCu,':m','linewidth',2)
plot(U_RHE,state_13PdCu,'b','linewidth',2)
plot(U_RHE,state_14PdCu,'--b','linewidth',2)
plot(U_RHE,state_15PdCu,':b','linewidth',2)
plot(U_RHE,state_16PdCu,':g','linewidth',2)
plot(U_RHE,state_CH3OHPdCu,'k','linewidth',2)
plot(U_RHE,state_CH4PdCu,'--k','linewidth',2)
plot(U_RHE,state_H2PdCu,':k','linewidth',2)
plot(U_RHE,state_diolPdCu,'-.k','linewidth',2)

legend('state 1PdCu','HCOOH','state 2PdCu','state 3PdCu','state 4PdCu','state 5PdCu','state 6PdCu','state 7PdCu','state 8PdCu','state 9PdCu','state 10PdCu','state 11PdCu','state 12PdCu','state 13PdCu','state 14PdCu','state 15PdCu','state 16PdCu','CH_4','CH3OH','H_2','diol')
hold off
% % % %     
state_ref1_PdCu=[U_RHE;ref-ref;state_1PdCu];
state_ref1_PdCu=transpose(state_ref1_PdCu);
U_ref1_PdCu=state_ref1_PdCu(state_ref1_PdCu(:,2)<state_ref1_PdCu(:,3));
U_ref1_PdCu=min(U_ref1_PdCu)
% % 
state_1HCOOH_PdCu=[U_RHE;state_1PdCu;state_HCOOHPdCu];
state_1HCOOH_PdCu=transpose(state_1HCOOH_PdCu);
U_1HCOOH_PdCu=state_1HCOOH_PdCu(state_1HCOOH_PdCu(:,2)<state_1HCOOH_PdCu(:,3));
U_1HCOOH_PdCu=min(U_1HCOOH_PdCu)
% % 
state_12_PdCu=[U_RHE;state_1PdCu;state_2PdCu];
state_12_PdCu=transpose(state_12_PdCu);
U_12_PdCu=state_12_PdCu(state_12_PdCu(:,2)<state_12_PdCu(:,3));
U_12_PdCu=min(U_12_PdCu)
% % 
state_23_PdCu=[U_RHE;state_2PdCu;state_3PdCu];
state_23_PdCu=transpose(state_23_PdCu);
U_23_PdCu=state_23_PdCu(state_23_PdCu(:,2)<state_23_PdCu(:,3));
U_23_PdCu=min(U_23_PdCu)
% % 
state_24_PdCu=[U_RHE;state_2PdCu;state_4PdCu];
state_24_PdCu=transpose(state_24_PdCu);
U_24_PdCu=state_24_PdCu(state_24_PdCu(:,2)<state_24_PdCu(:,3));
U_24_PdCu=min(U_24_PdCu)
% % 
state_35_PdCu=[U_RHE;state_3PdCu;state_5PdCu];
state_35_PdCu=transpose(state_35_PdCu);
U_35_PdCu=state_35_PdCu(state_35_PdCu(:,2)<state_35_PdCu(:,3));
U_35_PdCu=min(U_35_PdCu)
% % 
state_36_PdCu=[U_RHE;state_3PdCu;state_6PdCu];
state_36_PdCu=transpose(state_36_PdCu);
U_36_PdCu=state_36_PdCu(state_36_PdCu(:,2)<state_36_PdCu(:,3));
U_36_PdCu=min(U_36_PdCu)
% % 
state_46_PdCu=[U_RHE;state_4PdCu;state_6PdCu];
state_46_PdCu=transpose(state_46_PdCu);
U_46_PdCu=state_46_PdCu(state_46_PdCu(:,2)<state_46_PdCu(:,3));
U_46_PdCu=min(U_46_PdCu)
% % 
state_59_PdCu=[U_RHE;state_5PdCu;state_9PdCu];
state_59_PdCu=transpose(state_59_PdCu);
U_59_PdCu=state_59_PdCu(state_59_PdCu(:,2)<state_59_PdCu(:,3));
U_59_PdCu=min(U_59_PdCu)
%
state_58_PdCu=[U_RHE;state_5PdCu;state_8PdCu];
state_58_PdCu=transpose(state_58_PdCu);
U_58_PdCu=state_58_PdCu(state_58_PdCu(:,2)<state_58_PdCu(:,3));
U_58_PdCu=min(U_58_PdCu)
% % 
state_811_PdCu=[U_RHE;state_8PdCu;state_11PdCu];
state_811_PdCu=transpose(state_811_PdCu);
U_811_PdCu=state_811_PdCu(state_811_PdCu(:,2)<state_811_PdCu(:,3));
U_811_PdCu=min(U_811_PdCu)
% 
state_8CH3OH_PdCu=[U_RHE;state_8PdCu;state_CH3OHPdCu];
state_8CH3OH_PdCu=transpose(state_8CH3OH_PdCu);
U_8CH3OH_PdCu=state_8CH3OH_PdCu(state_8CH3OH_PdCu(:,2)<state_8CH3OH_PdCu(:,3));
U_8CH3OH_PdCu=min(U_8CH3OH_PdCu)
% 
state_1113_PdCu=[U_RHE;state_11PdCu;state_13PdCu];
state_1113_PdCu=transpose(state_1113_PdCu);
U_1113_PdCu=state_1113_PdCu(state_1113_PdCu(:,2)<state_1113_PdCu(:,3));
U_1113_PdCu=min(U_1113_PdCu)
%
state_13CH4_PdCu=[U_RHE;state_13PdCu;state_CH4PdCu];
state_13CH4_PdCu=transpose(state_13CH4_PdCu);
U_13CH4_PdCu=state_13CH4_PdCu(state_13CH4_PdCu(:,2)<state_13CH4_PdCu(:,3));
U_13CH4_PdCu=min(U_13CH4_PdCu)
%
state_diol9_PdCu=[U_RHE;state_diolPdCu;state_9PdCu];
state_diol9_PdCu=transpose(state_diol9_PdCu);
U_diol9_PdCu=state_diol9_PdCu(state_diol9_PdCu(:,2)<state_diol9_PdCu(:,3));
U_diol9_PdCu=min(U_diol9_PdCu)
%
state_9CH3OH_PdCu=[U_RHE;state_9PdCu;state_CH3OHPdCu];
state_9CH3OH_PdCu=transpose(state_9CH3OH_PdCu);
U_9CH3OH_PdCu=state_9CH3OH_PdCu(state_9CH3OH_PdCu(:,2)<state_9CH3OH_PdCu(:,3));
U_9CH3OH_PdCu=min(U_9CH3OH_PdCu)
% 
state_15H2_PdCu=[U_RHE;state_15PdCu;state_H2PdCu];
state_15H2_PdCu=transpose(state_15H2_PdCu);
U_15H2_PdCu=state_15H2_PdCu(state_15H2_PdCu(:,2)<state_15H2_PdCu(:,3));
U_15H2_PdCu=min(U_15H2_PdCu)
%
state_diol9_PdCu=[U_RHE;state_diolPdCu;state_9PdCu];
state_diol9_PdCu=transpose(state_diol9_PdCu);
U_diol9_PdCu=state_diol9_PdCu(state_diol9_PdCu(:,2)<state_diol9_PdCu(:,3));
U_diol9_PdCu=min(U_diol9_PdCu)
%
state_9CH3OH_PdCu=[U_RHE;state_9PdCu;state_CH3OHPdCu];
state_9CH3OH_PdCu=transpose(state_9CH3OH_PdCu);
U_9CH3OH_PdCu=state_9CH3OH_PdCu(state_9CH3OH_PdCu(:,2)<state_9CH3OH_PdCu(:,3));
U_9CH3OH_PdCu=min(U_9CH3OH_PdCu)
% 
state_16CH3OH_PdCu=[U_RHE;state_16PdCu;state_CH3OHPdCu];
state_16CH3OH_PdCu=transpose(state_16CH3OH_PdCu);
U_16CH3OH_PdCu=state_16CH3OH_PdCu(state_16CH3OH_PdCu(:,2)<state_16CH3OH_PdCu(:,3));
U_16CH3OH_PdCu=min(U_16CH3OH_PdCu)
% 
state_912_PdCu=[U_RHE;state_9PdCu;state_12PdCu];
state_912_PdCu=transpose(state_912_PdCu);
U_912_PdCu=state_912_PdCu(state_912_PdCu(:,2)<state_912_PdCu(:,3));
U_912_PdCu=min(U_912_PdCu)
%
state_1214_PdCu=[U_RHE;state_9PdCu;state_12PdCu];
state_1214_PdCu=transpose(state_1214_PdCu);
U_1214_PdCu=state_1214_PdCu(state_1214_PdCu(:,2)<state_1214_PdCu(:,3));
U_1214_PdCu=min(U_1214_PdCu)
%
state_14CH4_PdCu=[U_RHE;state_14PdCu;state_CH4PdCu];
state_14CH4_PdCu=transpose(state_14CH4_PdCu);
U_14CH4_PdCu=state_14CH4_PdCu(state_14CH4_PdCu(:,2)<state_14CH4_PdCu(:,3));
U_14CH4_PdCu=min(U_14CH4_PdCu)
% % %
% % % figure (13)
% % % cmap=hsv(4);
% % % x = 0:19;
% % % G1 = [ref-ref, state_1PdCu, state_2PdCu, state_3PdCu, state_4PdCu, state_5PdCu, state_6PdCu, state_7PdCu, state_8PdCu, state_9PdCu, state_CH4PdCu, state_10PdCu, state_13PdCu, state_14PdCu, state_15PdCu, state_16PdCu, state_17PdCu, state_H2PdCu,  state_H2OPdCu];
% % % G2 = [ref-ref, state_1PdCu, state_2PdCu, state_3PdCu, state_4PdCu, state_10PdCu, state_13PdCu, state_14PdCu, state_15PdCu, state_16PdCu, state_CH4PdCu, state_CH4PdCu]; 
% % % % plot(x,G1,'r','LineWidth',2)
% % % stairs(x,G1,'r','LineWidth',2)
% % % set(gca, 'XTick',0:11,'FontName', 'Times New Roman', 'FontSize', 20)
% % % ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20)
% % % xlabel('reaction coordinate','FontName', 'Times New Roman', 'FontSize', 20)
% % % title ('Cu(211) formaldehyde path at U = -0.75 V_{RHE}','FontName', 'Times New Roman', 'FontSize', 20)
% % % set(gca,'XGrid','on','XTickLabel',[ ],'YGrid','on','FontName', 'Times New Roman', 'FontSize', 20)
% % % hold on
% % % % plot(x,G2,'g','LineWidth',2)
% % % stairs(x,G2,'g','LineWidth',2) 
% % % legend('pathway A', 'pathway B')
% % % hold off
% % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %U_E_PtCu
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     U = -2:0.001:1.5;
%     U = -1.250011;  %   U_RHE =-1.1065, U_ref1_PtCu =  -1.1065
    U_RHE = U + RHE_convert;
    elec = 0.5.*H2_poten - U - RHE_convert;
    ref = CO2_poten + 8.*elec;
    state_1PtCu = (PtCu_HOCO + thermal_HOCO + 7.*elec)-ref;
    state_HCOOHPtCu = (HCOOH_poten + 6.*elec)-ref;
    state_2PtCu = (PtCu_CO + thermal_CO + H2O_poten + 6.*elec)-ref;
    state_3PtCu = (PtCu_HCO + thermal_HCO + H2O_poten + 5.*elec)-ref;
    state_4PtCu = (PtCu_COH + thermal_COH + H2O_poten + 5.*elec)-ref;
    state_5PtCu = (PtCu_OCH2 + thermal_OCH2 + H2O_poten + 4.*elec)-ref;
    state_6PtCu = (PtCu_HCOH + thermal_HCOH + H2O_poten + 4.*elec)-ref;
    state_7PtCu = (PtCu_C + thermal_C + 2*H2O_poten + 4.*elec)-ref;
    state_8PtCu = (PtCu_OCH3 + thermal_OCH3 + H2O_poten + 3.*elec)-ref;
    state_9PtCu = (PtCu_CH2OH + thermal_CH2OH + H2O_poten + 3.*elec)-ref;
    state_10PtCu = (PtCu_CH + thermal_CH + 2*H2O_poten + 3.*elec)-ref;
    state_11PtCu = (PtCu_O + thermal_O + H2O_poten + CH4_poten + 2.*elec)-ref;
    state_12PtCu = (PtCu_CH2 + thermal_CH2 + 2*H2O_poten + 2.*elec)-ref;
    state_13PtCu = (PtCu_OH + thermal_OH + H2O_poten + CH4_poten + 1.*elec)-ref; 
    state_14PtCu = (PtCu_CH3 + thermal_CH3 + 2*H2O_poten + 1.*elec)-ref;
    state_15PtCu = (PtCu_H + thermal_H + CO2_poten + 7.*elec)-ref;
    state_16PtCu = (CH3OH_poten + PtCu_OH + thermal_OH + 3.*elec)-ref;
    state_CH4PtCu = (CH4_poten + 2.*H2O_poten)-ref;
    state_CH3OHPtCu = (CH3OH_poten + H2O_poten + 2.*elec)-ref;
    state_H2PtCu = (H2_poten + CO2_poten + 6.*elec)-ref;
    state_diolPtCu=(H2C_O2H2_poten + 4.*elec)-ref;   
      
figure (5)
cmap=hsv(4);   
plot(U_RHE,state_1PtCu,'g','linewidth',2)
xlabel('U_{RHE}(V)','FontName', 'Times New Roman', 'FontSize', 20);
ylim([-3.5 5.5]);
xlim([-1.5 1.5]);
ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20);
title ('PtCu(211)','FontName', 'Times New Roman', 'FontSize', 20);
hold on
plot(U_RHE,state_HCOOHPtCu,'--g','linewidth',2)
plot(U_RHE,state_2PtCu,'m','linewidth',2)
plot(U_RHE,state_3PtCu,'c','linewidth',2)
plot(U_RHE,state_4PtCu,'--c','linewidth',2)
plot(U_RHE,state_5PtCu,'r','linewidth',2)
plot(U_RHE,state_6PtCu,'--r','linewidth',2)
plot(U_RHE,state_7PtCu,':r','linewidth',2)
plot(U_RHE,state_8PtCu,'y','linewidth',2)
plot(U_RHE,state_9PtCu,'--y','linewidth',2)
plot(U_RHE,state_10PtCu,':y','linewidth',2)
plot(U_RHE,state_11PtCu,'--m','linewidth',2)
plot(U_RHE,state_12PtCu,':m','linewidth',5)
plot(U_RHE,state_13PtCu,'b','linewidth',2)
plot(U_RHE,state_14PtCu,'--b','linewidth',2)
plot(U_RHE,state_15PtCu,':b','linewidth',2)
plot(U_RHE,state_16PtCu,':g','linewidth',2)
plot(U_RHE,state_CH3OHPtCu,'k','linewidth',2)
plot(U_RHE,state_CH4PtCu,'--k','linewidth',2)
plot(U_RHE,state_H2PtCu,':k','linewidth',2)
plot(U_RHE,state_diolPtCu,'-.k','linewidth',2)

legend('state 1PtCu','HCOOH','state 2PtCu','state 3PtCu','state 4PtCu','state 5PtCu','state 6PtCu','state 7PtCu','state 8PtCu','state 9PtCu','state 10PtCu','state 11PtCu','state 12PtCu','state 13PtCu','state 14PtCu','state 15PtCu','state 16PtCu','CH_4','CH3OH','H_2','diol')
hold off
% % % %     
state_ref1_PtCu=[U_RHE;ref-ref;state_1PtCu];
state_ref1_PtCu=transpose(state_ref1_PtCu);
U_ref1_PtCu=state_ref1_PtCu(state_ref1_PtCu(:,2)<state_ref1_PtCu(:,3));
U_ref1_PtCu=min(U_ref1_PtCu)
% % 
state_1HCOOH_PtCu=[U_RHE;state_1PtCu;state_HCOOHPtCu];
state_1HCOOH_PtCu=transpose(state_1HCOOH_PtCu);
U_1HCOOH_PtCu=state_1HCOOH_PtCu(state_1HCOOH_PtCu(:,2)<state_1HCOOH_PtCu(:,3));
U_1HCOOH_PtCu=min(U_1HCOOH_PtCu)
% % 
state_12_PtCu=[U_RHE;state_1PtCu;state_2PtCu];
state_12_PtCu=transpose(state_12_PtCu);
U_12_PtCu=state_12_PtCu(state_12_PtCu(:,2)<state_12_PtCu(:,3));
U_12_PtCu=min(U_12_PtCu)
% % 
state_23_PtCu=[U_RHE;state_2PtCu;state_3PtCu];
state_23_PtCu=transpose(state_23_PtCu);
U_23_PtCu=state_23_PtCu(state_23_PtCu(:,2)<state_23_PtCu(:,3));
U_23_PtCu=min(U_23_PtCu)
% % 
state_24_PtCu=[U_RHE;state_2PtCu;state_4PtCu];
state_24_PtCu=transpose(state_24_PtCu);
U_24_PtCu=state_24_PtCu(state_24_PtCu(:,2)<state_24_PtCu(:,3));
U_24_PtCu=min(U_24_PtCu)
% % 
state_36_PtCu=[U_RHE;state_3PtCu;state_6PtCu];
state_36_PtCu=transpose(state_36_PtCu);
U_36_PtCu=state_36_PtCu(state_36_PtCu(:,2)<state_36_PtCu(:,3));
U_36_PtCu=min(U_36_PtCu)
% % 
state_35_PtCu=[U_RHE;state_3PtCu;state_5PtCu];
state_35_PtCu=transpose(state_35_PtCu);
U_35_PtCu=state_35_PtCu(state_35_PtCu(:,2)<state_35_PtCu(:,3));
U_35_PtCu=min(U_35_PtCu)
% % 
state_46_PtCu=[U_RHE;state_4PtCu;state_6PtCu];
state_46_PtCu=transpose(state_46_PtCu);
U_46_PtCu=state_46_PtCu(state_46_PtCu(:,2)<state_46_PtCu(:,3));
U_46_PtCu=min(U_46_PtCu)
% % 
state_69_PtCu=[U_RHE;state_6PtCu;state_9PtCu];
state_69_PtCu=transpose(state_69_PtCu);
U_69_PtCu=state_69_PtCu(state_69_PtCu(:,2)<state_69_PtCu(:,3));
U_69_PtCu=min(U_69_PtCu)
%
state_610_PtCu=[U_RHE;state_6PtCu;state_10PtCu];
state_610_PtCu=transpose(state_610_PtCu);
U_610_PtCu=state_610_PtCu(state_610_PtCu(:,2)<state_610_PtCu(:,3));
U_610_PtCu=min(U_610_PtCu)
% % 
state_1012_PtCu=[U_RHE;state_10PtCu;state_12PtCu];
state_1012_PtCu=transpose(state_1012_PtCu);
U_1012_PtCu=state_1012_PtCu(state_1012_PtCu(:,2)<state_1012_PtCu(:,3));
U_1012_PtCu=min(U_1012_PtCu)
%
state_1214_PtCu=[U_RHE;state_12PtCu;state_14PtCu];
state_1214_PtCu=transpose(state_1214_PtCu);
U_1214_PtCu=state_1214_PtCu(state_1214_PtCu(:,2)<state_1214_PtCu(:,3));
U_1214_PtCu=min(U_1214_PtCu)
%
state_13CH4_PtCu=[U_RHE;state_13PtCu;state_CH4PtCu];
state_13CH4_PtCu=transpose(state_13CH4_PtCu);
U_13CH4_PtCu=state_13CH4_PtCu(state_13CH4_PtCu(:,2)<state_13CH4_PtCu(:,3));
U_13CH4_PtCu=min(U_13CH4_PtCu)
%
state_14CH4_PtCu=[U_RHE;state_14PtCu;state_CH4PtCu];
state_14CH4_PtCu=transpose(state_14CH4_PtCu);
U_14CH4_PtCu=state_14CH4_PtCu(state_14CH4_PtCu(:,2)<state_14CH4_PtCu(:,3));
U_14CH4_PtCu=min(U_14CH4_PtCu)
%
state_diol9_PtCu=[U_RHE;state_diolPtCu;state_9PtCu];
state_diol9_PtCu=transpose(state_diol9_PtCu);
U_diol9_PtCu=state_diol9_PtCu(state_diol9_PtCu(:,2)<state_diol9_PtCu(:,3));
U_diol9_PtCu=min(U_diol9_PtCu)
%
state_8CH3OH_PtCu=[U_RHE;state_8PtCu;state_CH3OHPtCu];
state_8CH3OH_PtCu=transpose(state_8CH3OH_PtCu);
U_8CH3OH_PtCu=state_8CH3OH_PtCu(state_8CH3OH_PtCu(:,2)<state_8CH3OH_PtCu(:,3));
U_8CH3OH_PtCu=min(U_8CH3OH_PtCu)
% 
state_9CH3OH_PtCu=[U_RHE;state_9PtCu;state_CH3OHPtCu];
state_9CH3OH_PtCu=transpose(state_9CH3OH_PtCu);
U_9CH3OH_PtCu=state_9CH3OH_PtCu(state_9CH3OH_PtCu(:,2)<state_9CH3OH_PtCu(:,3));
U_9CH3OH_PtCu=min(U_9CH3OH_PtCu)
% 
state_15H2_PtCu=[U_RHE;state_15PtCu;state_H2PtCu];
state_15H2_PtCu=transpose(state_15H2_PtCu);
U_15H2_PtCu=state_15H2_PtCu(state_15H2_PtCu(:,2)<state_15H2_PtCu(:,3));
U_15H2_PtCu=min(U_15H2_PtCu)
% % 
state_diol9_PtCu=[U_RHE;state_diolPtCu;state_9PtCu];
state_diol9_PtCu=transpose(state_diol9_PtCu);
U_diol9_PtCu=state_diol9_PtCu(state_diol9_PtCu(:,2)<state_diol9_PtCu(:,3));
U_diol9_PtCu=min(U_diol9_PtCu)
%
state_9CH3OH_PtCu=[U_RHE;state_9PtCu;state_CH3OHPtCu];
state_9CH3OH_PtCu=transpose(state_9CH3OH_PtCu);
U_9CH3OH_PtCu=state_9CH3OH_PtCu(state_9CH3OH_PtCu(:,2)<state_9CH3OH_PtCu(:,3));
U_9CH3OH_PtCu=min(U_9CH3OH_PtCu)
% 
state_16CH3OH_PtCu=[U_RHE;state_16PtCu;state_CH3OHPtCu];
state_16CH3OH_PtCu=transpose(state_16CH3OH_PtCu);
U_16CH3OH_PtCu=state_16CH3OH_PtCu(state_16CH3OH_PtCu(:,2)<state_16CH3OH_PtCu(:,3));
U_16CH3OH_PtCu=min(U_16CH3OH_PtCu)
% 
state_912_PtCu=[U_RHE;state_9PtCu;state_12PtCu];
state_912_PtCu=transpose(state_912_PtCu);
U_912_PtCu=state_912_PtCu(state_912_PtCu(:,2)<state_912_PtCu(:,3));
U_912_PtCu=min(U_912_PtCu)
%
state_1214_PtCu=[U_RHE;state_9PtCu;state_12PtCu];
state_1214_PtCu=transpose(state_1214_PtCu);
U_1214_PtCu=state_1214_PtCu(state_1214_PtCu(:,2)<state_1214_PtCu(:,3));
U_1214_PtCu=min(U_1214_PtCu)
%
state_14CH4_PtCu=[U_RHE;state_14PtCu;state_CH4PtCu];
state_14CH4_PtCu=transpose(state_14CH4_PtCu);
U_14CH4_PtCu=state_14CH4_PtCu(state_14CH4_PtCu(:,2)<state_14CH4_PtCu(:,3));
U_14CH4_PtCu=min(U_14CH4_PtCu)
%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %U_E_CoCu
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     U = -2:0.001:1.5;
%     U = -1.2560;  %   U_RHE =-1.1065, U_ref1_CoCu =  -1.1065
    U_RHE = U + RHE_convert;
    elec = 0.5.*H2_poten - U - RHE_convert;
    ref = CO2_poten + 8.*elec;
    state_1CoCu = (CoCu_HOCO + thermal_HOCO + 7.*elec)-ref;
    state_HCOOHCoCu = (HCOOH_poten + 6.*elec)-ref;
    state_2CoCu = (CoCu_CO + thermal_CO + H2O_poten + 6.*elec)-ref;
    state_3CoCu = (CoCu_HCO + thermal_HCO + H2O_poten + 5.*elec)-ref;
    state_4CoCu = (CoCu_COH + thermal_COH + H2O_poten + 5.*elec)-ref;
    state_5CoCu = (CoCu_OCH2 + thermal_OCH2 + H2O_poten + 4.*elec)-ref;
    state_6CoCu = (CoCu_HCOH + thermal_HCOH + H2O_poten + 4.*elec)-ref;
    state_7CoCu = (CoCu_C + thermal_C + 2*H2O_poten + 4.*elec)-ref;
    state_8CoCu = (CoCu_OCH3 + thermal_OCH3 + H2O_poten + 3.*elec)-ref;
    state_9CoCu = (CoCu_CH2OH + thermal_CH2OH + H2O_poten + 3.*elec)-ref;
    state_10CoCu = (CoCu_CH + thermal_CH + 2*H2O_poten + 3.*elec)-ref;
    state_11CoCu = (CoCu_O + thermal_O + H2O_poten + CH4_poten + 2.*elec)-ref;
    state_12CoCu = (CoCu_CH2 + thermal_CH2 + 2*H2O_poten + 2.*elec)-ref;
    state_13CoCu = (CoCu_OH + thermal_OH + H2O_poten + CH4_poten + 1.*elec)-ref; 
    state_14CoCu = (CoCu_CH3 + thermal_CH3 + 2*H2O_poten + 1.*elec)-ref;
    state_15CoCu = (CoCu_H + thermal_H + CO2_poten + 7.*elec)-ref;
    state_16CoCu = (CH3OH_poten + CoCu_OH + thermal_OH + 3.*elec)-ref;
    state_CH4CoCu = (CH4_poten + 2.*H2O_poten)-ref;
    state_CH3OHCoCu = (CH3OH_poten + H2O_poten + 2.*elec)-ref;
    state_H2CoCu = (H2_poten + CO2_poten + 6.*elec)-ref;
    state_diolCoCu=(H2C_O2H2_poten + 4.*elec)-ref;   
%       
figure (6)
cmap=hsv(4);   
plot(U_RHE,state_1CoCu,'g','linewidth',2)
xlabel('U_{RHE}(V)','FontName', 'Times New Roman', 'FontSize', 20);
ylim([-3.5 5.5]);
xlim([-1.5 1.5]);
ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20);
title ('CoCu(211)','FontName', 'Times New Roman', 'FontSize', 20);
hold on
plot(U_RHE,state_HCOOHCoCu,'--g','linewidth',2)
plot(U_RHE,state_2CoCu,'m','linewidth',2)
plot(U_RHE,state_3CoCu,'c','linewidth',2)
plot(U_RHE,state_4CoCu,'--c','linewidth',2)
plot(U_RHE,state_5CoCu,'r','linewidth',2)
plot(U_RHE,state_6CoCu,'--r','linewidth',2)
plot(U_RHE,state_7CoCu,':r','linewidth',2)
plot(U_RHE,state_8CoCu,'y','linewidth',2)
plot(U_RHE,state_9CoCu,'--y','linewidth',2)
plot(U_RHE,state_10CoCu,':y','linewidth',2)
plot(U_RHE,state_11CoCu,'--m','linewidth',2)
plot(U_RHE,state_12CoCu,':m','linewidth',2)
plot(U_RHE,state_13CoCu,'b','linewidth',2)
plot(U_RHE,state_14CoCu,'--b','linewidth',2)
plot(U_RHE,state_15CoCu,':b','linewidth',2)
plot(U_RHE,state_16CoCu,':g','linewidth',2)
plot(U_RHE,state_CH3OHCoCu,'k','linewidth',2)
plot(U_RHE,state_CH4CoCu,'--k','linewidth',2)
plot(U_RHE,state_H2CoCu,':k','linewidth',2)
plot(U_RHE,state_diolCoCu,'-.k','linewidth',2)

legend('state 1CoCu','HCOOH','state 2CoCu','state 3CoCu','state 4CoCu','state 5CoCu','state 6CoCu','state 7CoCu','state 8CoCu','state 9CoCu','state 10CoCu','state 11CoCu','state 12CoCu','state 13CoCu','state 14CoCu','state 15CoCu','state 16CoCu','CH_4','CH3OH','H_2','diol')
hold off
% % % %     
state_ref1_CoCu=[U_RHE;ref-ref;state_1CoCu];
state_ref1_CoCu=transpose(state_ref1_CoCu);
U_ref1_CoCu=state_ref1_CoCu(state_ref1_CoCu(:,2)<state_ref1_CoCu(:,3));
U_ref1_CoCu=min(U_ref1_CoCu)
% % 
state_1HCOOH_CoCu=[U_RHE;state_1CoCu;state_HCOOHCoCu];
state_1HCOOH_CoCu=transpose(state_1HCOOH_CoCu);
U_1HCOOH_CoCu=state_1HCOOH_CoCu(state_1HCOOH_CoCu(:,2)<state_1HCOOH_CoCu(:,3));
U_1HCOOH_CoCu=min(U_1HCOOH_CoCu)
% % 
state_12_CoCu=[U_RHE;state_1CoCu;state_2CoCu];
state_12_CoCu=transpose(state_12_CoCu);
U_12_CoCu=state_12_CoCu(state_12_CoCu(:,2)<state_12_CoCu(:,3));
U_12_CoCu=min(U_12_CoCu)
% % 
state_23_CoCu=[U_RHE;state_2CoCu;state_3CoCu];
state_23_CoCu=transpose(state_23_CoCu);
U_23_CoCu=state_23_CoCu(state_23_CoCu(:,2)<state_23_CoCu(:,3));
U_23_CoCu=min(U_23_CoCu)
% % 
state_24_CoCu=[U_RHE;state_2CoCu;state_4CoCu];
state_24_CoCu=transpose(state_24_CoCu);
U_24_CoCu=state_24_CoCu(state_24_CoCu(:,2)<state_24_CoCu(:,3));
U_24_CoCu=min(U_24_CoCu)
% % 
state_45_CoCu=[U_RHE;state_4CoCu;state_5CoCu];
state_45_CoCu=transpose(state_45_CoCu);
U_45_CoCu=state_45_CoCu(state_45_CoCu(:,2)<state_45_CoCu(:,3));
U_45_CoCu=min(U_45_CoCu)
% % 
state_35_CoCu=[U_RHE;state_3CoCu;state_5CoCu];
state_35_CoCu=transpose(state_35_CoCu);
U_35_CoCu=state_35_CoCu(state_35_CoCu(:,2)<state_35_CoCu(:,3));
U_35_CoCu=min(U_35_CoCu)
% % 
state_36_CoCu=[U_RHE;state_3CoCu;state_6CoCu];
state_36_CoCu=transpose(state_36_CoCu);
U_36_CoCu=state_36_CoCu(state_36_CoCu(:,2)<state_36_CoCu(:,3));
U_36_CoCu=min(U_36_CoCu)
% % 
state_46_CoCu=[U_RHE;state_4CoCu;state_6CoCu];
state_46_CoCu=transpose(state_46_CoCu);
U_46_CoCu=state_46_CoCu(state_46_CoCu(:,2)<state_46_CoCu(:,3));
U_46_CoCu=min(U_46_CoCu)
%
state_58_CoCu=[U_RHE;state_5CoCu;state_8CoCu];
state_58_CoCu=transpose(state_58_CoCu);
U_58_CoCu=state_58_CoCu(state_58_CoCu(:,2)<state_58_CoCu(:,3));
U_58_CoCu=min(U_58_CoCu)
% % 
state_811_CoCu=[U_RHE;state_8CoCu;state_11CoCu];
state_811_CoCu=transpose(state_811_CoCu);
U_811_CoCu=state_811_CoCu(state_811_CoCu(:,2)<state_811_CoCu(:,3));
U_811_CoCu=min(U_811_CoCu)
% 
state_8CH3OH_CoCu=[U_RHE;state_8CoCu;state_CH3OHCoCu];
state_8CH3OH_CoCu=transpose(state_8CH3OH_CoCu);
U_8CH3OH_CoCu=state_8CH3OH_CoCu(state_8CH3OH_CoCu(:,2)<state_8CH3OH_CoCu(:,3));
U_8CH3OH_CoCu=min(U_8CH3OH_CoCu)
% 
state_1113_CoCu=[U_RHE;state_11CoCu;state_13CoCu];
state_1113_CoCu=transpose(state_1113_CoCu);
U_1113_CoCu=state_1113_CoCu(state_1113_CoCu(:,2)<state_1113_CoCu(:,3));
U_1113_CoCu=min(U_1113_CoCu)
%
state_13CH4_CoCu=[U_RHE;state_13CoCu;state_CH4CoCu];
state_13CH4_CoCu=transpose(state_13CH4_CoCu);
U_13CH4_CoCu=state_13CH4_CoCu(state_13CH4_CoCu(:,2)<state_13CH4_CoCu(:,3));
U_13CH4_CoCu=min(U_13CH4_CoCu)
%
state_diol9_CoCu=[U_RHE;state_diolCoCu;state_9CoCu];
state_diol9_CoCu=transpose(state_diol9_CoCu);
U_diol9_CoCu=state_diol9_CoCu(state_diol9_CoCu(:,2)<state_diol9_CoCu(:,3));
U_diol9_CoCu=min(U_diol9_CoCu)
%
state_9CH3OH_CoCu=[U_RHE;state_9CoCu;state_CH3OHCoCu];
state_9CH3OH_CoCu=transpose(state_9CH3OH_CoCu);
U_9CH3OH_CoCu=state_9CH3OH_CoCu(state_9CH3OH_CoCu(:,2)<state_9CH3OH_CoCu(:,3));
U_9CH3OH_CoCu=min(U_9CH3OH_CoCu)
% 
state_15H2_CoCu=[U_RHE;state_15CoCu;state_H2CoCu];
state_15H2_CoCu=transpose(state_15H2_CoCu);
U_15H2_CoCu=state_15H2_CoCu(state_15H2_CoCu(:,2)<state_15H2_CoCu(:,3));
U_15H2_CoCu=min(U_15H2_CoCu)
% % % 
state_diol9_CoCu=[U_RHE;state_diolCoCu;state_9CoCu];
state_diol9_CoCu=transpose(state_diol9_CoCu);
U_diol9_CoCu=state_diol9_CoCu(state_diol9_CoCu(:,2)<state_diol9_CoCu(:,3));
U_diol9_CoCu=min(U_diol9_CoCu)
%
state_9CH3OH_CoCu=[U_RHE;state_9CoCu;state_CH3OHCoCu];
state_9CH3OH_CoCu=transpose(state_9CH3OH_CoCu);
U_9CH3OH_CoCu=state_9CH3OH_CoCu(state_9CH3OH_CoCu(:,2)<state_9CH3OH_CoCu(:,3));
U_9CH3OH_CoCu=min(U_9CH3OH_CoCu)
% 
state_16CH3OH_CoCu=[U_RHE;state_16CoCu;state_CH3OHCoCu];
state_16CH3OH_CoCu=transpose(state_16CH3OH_CoCu);
U_16CH3OH_CoCu=state_16CH3OH_CoCu(state_16CH3OH_CoCu(:,2)<state_16CH3OH_CoCu(:,3));
U_16CH3OH_CoCu=min(U_16CH3OH_CoCu)
% 
state_912_CoCu=[U_RHE;state_9CoCu;state_12CoCu];
state_912_CoCu=transpose(state_912_CoCu);
U_912_CoCu=state_912_CoCu(state_912_CoCu(:,2)<state_912_CoCu(:,3));
U_912_CoCu=min(U_912_CoCu)
%
state_1214_CoCu=[U_RHE;state_9CoCu;state_12CoCu];
state_1214_CoCu=transpose(state_1214_CoCu);
U_1214_CoCu=state_1214_CoCu(state_1214_CoCu(:,2)<state_1214_CoCu(:,3));
U_1214_CoCu=min(U_1214_CoCu)
%
state_14CH4_CoCu=[U_RHE;state_14CoCu;state_CH4CoCu];
state_14CH4_CoCu=transpose(state_14CH4_CoCu);
U_14CH4_CoCu=state_14CH4_CoCu(state_14CH4_CoCu(:,2)<state_14CH4_CoCu(:,3));
U_14CH4_CoCu=min(U_14CH4_CoCu)
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %U_E_NiCu
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     U = -2:0.001:1.5;
% %     U = -1.250011;  %   U_RHE =-1.1065, U_ref1_NiCu =  -1.1065
    U_RHE = U + RHE_convert;
    elec = 0.5.*H2_poten - U - RHE_convert;
    ref = CO2_poten + 8.*elec;
    state_1NiCu = (NiCu_HOCO + thermal_HOCO + 7.*elec)-ref;
    state_HCOOHNiCu = (HCOOH_poten + 6.*elec)-ref;
    state_2NiCu = (NiCu_CO + thermal_CO + H2O_poten + 6.*elec)-ref;
    state_3NiCu = (NiCu_HCO + thermal_HCO + H2O_poten + 5.*elec)-ref;
    state_4NiCu = (NiCu_COH + thermal_COH + H2O_poten + 5.*elec)-ref;
    state_5NiCu = (NiCu_OCH2 + thermal_OCH2 + H2O_poten + 4.*elec)-ref;
    state_6NiCu = (NiCu_HCOH + thermal_HCOH + H2O_poten + 4.*elec)-ref;
    state_7NiCu = (NiCu_C + thermal_C + 2*H2O_poten + 4.*elec)-ref;
    state_8NiCu = (NiCu_OCH3 + thermal_OCH3 + H2O_poten + 3.*elec)-ref;
    state_9NiCu = (NiCu_CH2OH + thermal_CH2OH + H2O_poten + 3.*elec)-ref;
    state_10NiCu = (NiCu_CH + thermal_CH + 2*H2O_poten + 3.*elec)-ref;
    state_11NiCu = (NiCu_O + thermal_O + H2O_poten + CH4_poten + 2.*elec)-ref;
    state_12NiCu = (NiCu_CH2 + thermal_CH2 + 2*H2O_poten + 2.*elec)-ref;
    state_13NiCu = (NiCu_OH + thermal_OH + H2O_poten + CH4_poten + 1.*elec)-ref; 
    state_14NiCu = (NiCu_CH3 + thermal_CH3 + 2*H2O_poten + 1.*elec)-ref;
    state_15NiCu = (NiCu_H + thermal_H + CO2_poten + 7.*elec)-ref;
    state_16NiCu = (CH3OH_poten + NiCu_OH + thermal_OH + 3.*elec)-ref;
    state_CH4NiCu = (CH4_poten + 2.*H2O_poten)-ref;
    state_CH3OHNiCu = (CH3OH_poten + H2O_poten + 2.*elec)-ref;
    state_H2NiCu = (H2_poten + CO2_poten + 6.*elec)-ref;
    state_diolNiCu=(H2C_O2H2_poten + 4.*elec)-ref;   
      
figure (7)
cmap=hsv(4);   
plot(U_RHE,state_1NiCu,'g','linewidth',2)
xlabel('U_{RHE}(V)','FontName', 'Times New Roman', 'FontSize', 20);
ylim([-3.5 5.5]);
xlim([-1.5 1.5]);
ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20);
title ('NiCu(211)','FontName', 'Times New Roman', 'FontSize', 20);
hold on
plot(U_RHE,state_HCOOHNiCu,'--g','linewidth',2)
plot(U_RHE,state_2NiCu,'m','linewidth',2)
plot(U_RHE,state_3NiCu,'c','linewidth',2)
plot(U_RHE,state_4NiCu,'--c','linewidth',2)
plot(U_RHE,state_5NiCu,'r','linewidth',2)
plot(U_RHE,state_6NiCu,'--r','linewidth',2)
plot(U_RHE,state_7NiCu,':r','linewidth',2)
plot(U_RHE,state_8NiCu,'y','linewidth',2)
plot(U_RHE,state_9NiCu,'--y','linewidth',2)
plot(U_RHE,state_10NiCu,':y','linewidth',2)
plot(U_RHE,state_11NiCu,'--m','linewidth',2)
plot(U_RHE,state_12NiCu,':m','linewidth',2)
plot(U_RHE,state_13NiCu,'b','linewidth',2)
plot(U_RHE,state_14NiCu,'--b','linewidth',2)
plot(U_RHE,state_15NiCu,':b','linewidth',2)
plot(U_RHE,state_16NiCu,':g','linewidth',2)
plot(U_RHE,state_CH3OHNiCu,'k','linewidth',2)
plot(U_RHE,state_CH4NiCu,'--k','linewidth',2)
plot(U_RHE,state_H2NiCu,':k','linewidth',2)
plot(U_RHE,state_diolNiCu,'-.k','linewidth',2)

legend('state 1NiCu','HCOOH','state 2NiCu','state 3NiCu','state 4NiCu','state 5NiCu','state 6NiCu','state 7NiCu','state 8NiCu','state 9NiCu','state 10NiCu','state 11NiCu','state 12NiCu','state 13NiCu','state 14NiCu','state 15NiCu','state 16NiCu','CH_4','CH3OH','H_2','diol')
hold off
% % % %     
state_ref1_NiCu=[U_RHE;ref-ref;state_1NiCu];
state_ref1_NiCu=transpose(state_ref1_NiCu);
U_ref1_NiCu=state_ref1_NiCu(state_ref1_NiCu(:,2)<state_ref1_NiCu(:,3));
U_ref1_NiCu=min(U_ref1_NiCu)
% % 
state_1HCOOH_NiCu=[U_RHE;state_1NiCu;state_HCOOHNiCu];
state_1HCOOH_NiCu=transpose(state_1HCOOH_NiCu);
U_1HCOOH_NiCu=state_1HCOOH_NiCu(state_1HCOOH_NiCu(:,2)<state_1HCOOH_NiCu(:,3));
U_1HCOOH_NiCu=min(U_1HCOOH_NiCu)
% % 
state_12_NiCu=[U_RHE;state_1NiCu;state_2NiCu];
state_12_NiCu=transpose(state_12_NiCu);
U_12_NiCu=state_12_NiCu(state_12_NiCu(:,2)<state_12_NiCu(:,3));
U_12_NiCu=min(U_12_NiCu)
% % 
state_23_NiCu=[U_RHE;state_2NiCu;state_3NiCu];
state_23_NiCu=transpose(state_23_NiCu);
U_23_NiCu=state_23_NiCu(state_23_NiCu(:,2)<state_23_NiCu(:,3));
U_23_NiCu=min(U_23_NiCu)
% % 
state_24_NiCu=[U_RHE;state_2NiCu;state_4NiCu];
state_24_NiCu=transpose(state_24_NiCu);
U_24_NiCu=state_24_NiCu(state_24_NiCu(:,2)<state_24_NiCu(:,3));
U_24_NiCu=min(U_24_NiCu)
% % 
state_47_NiCu=[U_RHE;state_4NiCu;state_7NiCu];
state_47_NiCu=transpose(state_47_NiCu);
U_47_NiCu=state_47_NiCu(state_47_NiCu(:,2)<state_47_NiCu(:,3));
U_47_NiCu=min(U_47_NiCu)
%%
state_45_NiCu=[U_RHE;state_4NiCu;state_5NiCu];
state_45_NiCu=transpose(state_45_NiCu);
U_45_NiCu=state_45_NiCu(state_45_NiCu(:,2)<state_45_NiCu(:,3));
U_45_NiCu=min(U_45_NiCu)
%
state_35_NiCu=[U_RHE;state_3NiCu;state_5NiCu];
state_35_NiCu=transpose(state_35_NiCu);
U_35_NiCu=state_35_NiCu(state_35_NiCu(:,2)<state_35_NiCu(:,3));
U_35_NiCu=min(U_35_NiCu)
% % 
state_36_NiCu=[U_RHE;state_3NiCu;state_6NiCu];
state_36_NiCu=transpose(state_36_NiCu);
U_36_NiCu=state_36_NiCu(state_36_NiCu(:,2)<state_36_NiCu(:,3));
U_36_NiCu=min(U_36_NiCu)
% % 
state_46_NiCu=[U_RHE;state_4NiCu;state_6NiCu];
state_46_NiCu=transpose(state_46_NiCu);
U_46_NiCu=state_46_NiCu(state_46_NiCu(:,2)<state_46_NiCu(:,3));
U_46_NiCu=min(U_46_NiCu)
% % 
state_710_NiCu=[U_RHE;state_7NiCu;state_10NiCu];
state_710_NiCu=transpose(state_710_NiCu);
U_710_NiCu=state_710_NiCu(state_710_NiCu(:,2)<state_710_NiCu(:,3));
U_710_NiCu=min(U_710_NiCu)
% % 
state_1012_NiCu=[U_RHE;state_10NiCu;state_12NiCu];
state_1012_NiCu=transpose(state_1012_NiCu);
U_1012_NiCu=state_1012_NiCu(state_1012_NiCu(:,2)<state_1012_NiCu(:,3));
U_1012_NiCu=min(U_1012_NiCu)
%
state_1214_NiCu=[U_RHE;state_12NiCu;state_14NiCu];
state_1214_NiCu=transpose(state_1214_NiCu);
U_1214_NiCu=state_1214_NiCu(state_1214_NiCu(:,2)<state_1214_NiCu(:,3));
U_1214_NiCu=min(U_1214_NiCu)
%
state_14CH4_NiCu=[U_RHE;state_14NiCu;state_CH4NiCu];
state_14CH4_NiCu=transpose(state_14CH4_NiCu);
U_14CH4_NiCu=state_14CH4_NiCu(state_14CH4_NiCu(:,2)<state_14CH4_NiCu(:,3));
U_14CH4_NiCu=min(U_14CH4_NiCu)
%
%%
state_58_NiCu=[U_RHE;state_5NiCu;state_8NiCu];
state_58_NiCu=transpose(state_58_NiCu);
U_58_NiCu=state_58_NiCu(state_58_NiCu(:,2)<state_58_NiCu(:,3));
U_58_NiCu=min(U_58_NiCu)
%
state_811_NiCu=[U_RHE;state_8NiCu;state_11NiCu];
state_811_NiCu=transpose(state_811_NiCu);
U_811_NiCu=state_811_NiCu(state_811_NiCu(:,2)<state_811_NiCu(:,3));
U_811_NiCu=min(U_811_NiCu)
%
state_1113_NiCu=[U_RHE;state_11NiCu;state_13NiCu];
state_1113_NiCu=transpose(state_1113_NiCu);
U_1113_NiCu=state_1113_NiCu(state_1113_NiCu(:,2)<state_1113_NiCu(:,3));
U_1113_NiCu=min(U_1113_NiCu)
%
state_13CH4_NiCu=[U_RHE;state_13NiCu;state_CH4NiCu];
state_13CH4_NiCu=transpose(state_13CH4_NiCu);
U_13CH4_NiCu=state_13CH4_NiCu(state_13CH4_NiCu(:,2)<state_13CH4_NiCu(:,3));
U_13CH4_NiCu=min(U_13CH4_NiCu)
%%
state_diol9_NiCu=[U_RHE;state_diolNiCu;state_9NiCu];
state_diol9_NiCu=transpose(state_diol9_NiCu);
U_diol9_NiCu=state_diol9_NiCu(state_diol9_NiCu(:,2)<state_diol9_NiCu(:,3));
U_diol9_NiCu=min(U_diol9_NiCu)
%
state_8CH3OH_NiCu=[U_RHE;state_8NiCu;state_CH3OHNiCu];
state_8CH3OH_NiCu=transpose(state_8CH3OH_NiCu);
U_8CH3OH_NiCu=state_8CH3OH_NiCu(state_8CH3OH_NiCu(:,2)<state_8CH3OH_NiCu(:,3));
U_8CH3OH_NiCu=min(U_8CH3OH_NiCu)
% 
state_9CH3OH_NiCu=[U_RHE;state_9NiCu;state_CH3OHNiCu];
state_9CH3OH_NiCu=transpose(state_9CH3OH_NiCu);
U_9CH3OH_NiCu=state_9CH3OH_NiCu(state_9CH3OH_NiCu(:,2)<state_9CH3OH_NiCu(:,3));
U_9CH3OH_NiCu=min(U_9CH3OH_NiCu)
% 
state_15H2_NiCu=[U_RHE;state_15NiCu;state_H2NiCu];
state_15H2_NiCu=transpose(state_15H2_NiCu);
U_15H2_NiCu=state_15H2_NiCu(state_15H2_NiCu(:,2)<state_15H2_NiCu(:,3));
U_15H2_NiCu=min(U_15H2_NiCu)
%
state_diol9_NiCu=[U_RHE;state_diolNiCu;state_9NiCu];
state_diol9_NiCu=transpose(state_diol9_NiCu);
U_diol9_NiCu=state_diol9_NiCu(state_diol9_NiCu(:,2)<state_diol9_NiCu(:,3));
U_diol9_NiCu=min(U_diol9_NiCu)
%
state_9CH3OH_NiCu=[U_RHE;state_9NiCu;state_CH3OHNiCu];
state_9CH3OH_NiCu=transpose(state_9CH3OH_NiCu);
U_9CH3OH_NiCu=state_9CH3OH_NiCu(state_9CH3OH_NiCu(:,2)<state_9CH3OH_NiCu(:,3));
U_9CH3OH_NiCu=min(U_9CH3OH_NiCu)
% 
state_16CH3OH_NiCu=[U_RHE;state_16NiCu;state_CH3OHNiCu];
state_16CH3OH_NiCu=transpose(state_16CH3OH_NiCu);
U_16CH3OH_NiCu=state_16CH3OH_NiCu(state_16CH3OH_NiCu(:,2)<state_16CH3OH_NiCu(:,3));
U_16CH3OH_NiCu=min(U_16CH3OH_NiCu)
% 
state_912_NiCu=[U_RHE;state_9NiCu;state_12NiCu];
state_912_NiCu=transpose(state_912_NiCu);
U_912_NiCu=state_912_NiCu(state_912_NiCu(:,2)<state_912_NiCu(:,3));
U_912_NiCu=min(U_912_NiCu)
%
state_1214_NiCu=[U_RHE;state_9NiCu;state_12NiCu];
state_1214_NiCu=transpose(state_1214_NiCu);
U_1214_NiCu=state_1214_NiCu(state_1214_NiCu(:,2)<state_1214_NiCu(:,3));
U_1214_NiCu=min(U_1214_NiCu)
%
state_14CH4_NiCu=[U_RHE;state_14NiCu;state_CH4NiCu];
state_14CH4_NiCu=transpose(state_14CH4_NiCu);
U_14CH4_NiCu=state_14CH4_NiCu(state_14CH4_NiCu(:,2)<state_14CH4_NiCu(:,3));
U_14CH4_NiCu=min(U_14CH4_NiCu)
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %U_E_RhCu
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     U = -2:0.001:1.5;
%     U = -1.250011;  %   U_RHE =-1.1065, U_ref1_RhCu =  -1.1065
    U_RHE = U + RHE_convert;
    elec = 0.5.*H2_poten - U - RHE_convert;
    ref = CO2_poten + 8.*elec;
    state_1RhCu = (RhCu_HOCO + thermal_HOCO + 7.*elec)-ref;
    state_HCOOHRhCu = (HCOOH_poten + 6.*elec)-ref;
    state_2RhCu = (RhCu_CO + thermal_CO + H2O_poten + 6.*elec)-ref;
    state_3RhCu = (RhCu_HCO + thermal_HCO + H2O_poten + 5.*elec)-ref;
    state_4RhCu = (RhCu_COH + thermal_COH + H2O_poten + 5.*elec)-ref;
    state_5RhCu = (RhCu_OCH2 + thermal_OCH2 + H2O_poten + 4.*elec)-ref;
    state_6RhCu = (RhCu_HCOH + thermal_HCOH + H2O_poten + 4.*elec)-ref;
    state_7RhCu = (RhCu_C + thermal_C + 2*H2O_poten + 4.*elec)-ref;
    state_8RhCu = (RhCu_OCH3 + thermal_OCH3 + H2O_poten + 3.*elec)-ref;
    state_9RhCu = (RhCu_CH2OH + thermal_CH2OH + H2O_poten + 3.*elec)-ref;
    state_10RhCu = (RhCu_CH + thermal_CH + 2*H2O_poten + 3.*elec)-ref;
    state_11RhCu = (RhCu_O + thermal_O + H2O_poten + CH4_poten + 2.*elec)-ref;
    state_12RhCu = (RhCu_CH2 + thermal_CH2 + 2*H2O_poten + 2.*elec)-ref;
    state_13RhCu = (RhCu_OH + thermal_OH + H2O_poten + CH4_poten + 1.*elec)-ref; 
    state_14RhCu = (RhCu_CH3 + thermal_CH3 + 2*H2O_poten + 1.*elec)-ref;
    state_15RhCu = (RhCu_H + thermal_H + CO2_poten + 7.*elec)-ref;
    state_16RhCu = (CH3OH_poten + RhCu_OH + thermal_OH + 3.*elec)-ref;
    state_CH4RhCu = (CH4_poten + 2.*H2O_poten)-ref;
    state_CH3OHRhCu = (CH3OH_poten + H2O_poten + 2.*elec)-ref;
    state_H2RhCu = (H2_poten + CO2_poten + 6.*elec)-ref;
    state_diolRhCu=(H2C_O2H2_poten + 4.*elec)-ref;   
      
figure (8)
cmap=hsv(4);   
plot(U_RHE,state_1RhCu,'g','linewidth',2)
xlabel('U_{RHE}(V)','FontName', 'Times New Roman', 'FontSize', 20);
ylim([-3.5 5.5]);
xlim([-1.5 1.5]);
ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20);
title ('RhCu(211)','FontName', 'Times New Roman', 'FontSize', 20);
hold on
plot(U_RHE,state_HCOOHRhCu,'--g','linewidth',2)
plot(U_RHE,state_2RhCu,'m','linewidth',2)
plot(U_RHE,state_3RhCu,'c','linewidth',2)
plot(U_RHE,state_4RhCu,'--c','linewidth',2)
plot(U_RHE,state_5RhCu,'r','linewidth',2)
plot(U_RHE,state_6RhCu,'--r','linewidth',2)
plot(U_RHE,state_7RhCu,':r','linewidth',2)
plot(U_RHE,state_8RhCu,'y','linewidth',2)
plot(U_RHE,state_9RhCu,'--y','linewidth',2)
plot(U_RHE,state_10RhCu,':y','linewidth',2)
plot(U_RHE,state_11RhCu,'--m','linewidth',2)
plot(U_RHE,state_12RhCu,':m','linewidth',2)
plot(U_RHE,state_13RhCu,'b','linewidth',2)
plot(U_RHE,state_14RhCu,'--b','linewidth',2)
plot(U_RHE,state_15RhCu,':b','linewidth',2)
plot(U_RHE,state_16RhCu,':g','linewidth',2)
plot(U_RHE,state_CH3OHRhCu,'k','linewidth',2)
plot(U_RHE,state_CH4RhCu,'--k','linewidth',2)
plot(U_RHE,state_H2RhCu,':k','linewidth',2)
plot(U_RHE,state_diolRhCu,'-.k','linewidth',2)

legend('state 1RhCu','HCOOH','state 2RhCu','state 3RhCu','state 4RhCu','state 5RhCu','state 6RhCu','state 7RhCu','state 8RhCu','state 9RhCu','state 10RhCu','state 11RhCu','state 12RhCu','state 13RhCu','state 14RhCu','state 15RhCu','state 16RhCu','CH_4','CH3OH','H_2','diol')
hold off
% % % %     
state_ref1_RhCu=[U_RHE;ref-ref;state_1RhCu];
state_ref1_RhCu=transpose(state_ref1_RhCu);
U_ref1_RhCu=state_ref1_RhCu(state_ref1_RhCu(:,2)<state_ref1_RhCu(:,3));
U_ref1_RhCu=min(U_ref1_RhCu)
%
state_1HCOOH_RhCu=[U_RHE;state_1RhCu;state_HCOOHRhCu];
state_1HCOOH_RhCu=transpose(state_1HCOOH_RhCu);
U_1HCOOH_RhCu=state_1HCOOH_RhCu(state_1HCOOH_RhCu(:,2)<state_1HCOOH_RhCu(:,3));
U_1HCOOH_RhCu=min(U_1HCOOH_RhCu)
% % 
state_12_RhCu=[U_RHE;state_1RhCu;state_2RhCu];
state_12_RhCu=transpose(state_12_RhCu);
U_12_RhCu=state_12_RhCu(state_12_RhCu(:,2)<state_12_RhCu(:,3));
U_12_RhCu=min(U_12_RhCu)
% % 
state_23_RhCu=[U_RHE;state_2RhCu;state_3RhCu];
state_23_RhCu=transpose(state_23_RhCu);
U_23_RhCu=state_23_RhCu(state_23_RhCu(:,2)<state_23_RhCu(:,3));
U_23_RhCu=min(U_23_RhCu)
% % 
state_24_RhCu=[U_RHE;state_2RhCu;state_4RhCu];
state_24_RhCu=transpose(state_24_RhCu);
U_24_RhCu=state_24_RhCu(state_24_RhCu(:,2)<state_24_RhCu(:,3));
U_24_RhCu=min(U_24_RhCu)
% % 
state_35_RhCu=[U_RHE;state_3RhCu;state_5RhCu];
state_35_RhCu=transpose(state_35_RhCu);
U_35_RhCu=state_35_RhCu(state_35_RhCu(:,2)<state_35_RhCu(:,3));
U_35_RhCu=min(U_35_RhCu)
% % 
state_36_RhCu=[U_RHE;state_3RhCu;state_6RhCu];
state_36_RhCu=transpose(state_36_RhCu);
U_36_RhCu=state_36_RhCu(state_36_RhCu(:,2)<state_36_RhCu(:,3));
U_36_RhCu=min(U_36_RhCu)
% % 
state_46_RhCu=[U_RHE;state_4RhCu;state_6RhCu];
state_46_RhCu=transpose(state_46_RhCu);
U_46_RhCu=state_46_RhCu(state_46_RhCu(:,2)<state_46_RhCu(:,3));
U_46_RhCu=min(U_46_RhCu)
% % 
state_47_RhCu=[U_RHE;state_4RhCu;state_7RhCu];
state_47_RhCu=transpose(state_47_RhCu);
U_47_RhCu=state_47_RhCu(state_47_RhCu(:,2)<state_47_RhCu(:,3));
U_47_RhCu=min(U_47_RhCu)
%%
state_710_RhCu=[U_RHE;state_7RhCu;state_10RhCu];
state_710_RhCu=transpose(state_710_RhCu);
U_710_RhCu=state_710_RhCu(state_710_RhCu(:,2)<state_710_RhCu(:,3));
U_710_RhCu=min(U_710_RhCu)
% % 
state_1012_RhCu=[U_RHE;state_10RhCu;state_12RhCu];
state_1012_RhCu=transpose(state_1012_RhCu);
U_1012_RhCu=state_1012_RhCu(state_1012_RhCu(:,2)<state_1012_RhCu(:,3));
U_1012_RhCu=min(U_1012_RhCu)
%
state_1214_RhCu=[U_RHE;state_12RhCu;state_14RhCu];
state_1214_RhCu=transpose(state_1214_RhCu);
U_1214_RhCu=state_1214_RhCu(state_1214_RhCu(:,2)<state_1214_RhCu(:,3));
U_1214_RhCu=min(U_1214_RhCu)
%
state_14CH4_RhCu=[U_RHE;state_14RhCu;state_CH4RhCu];
state_14CH4_RhCu=transpose(state_14CH4_RhCu);
U_14CH4_RhCu=state_14CH4_RhCu(state_14CH4_RhCu(:,2)<state_14CH4_RhCu(:,3));
U_14CH4_RhCu=min(U_14CH4_RhCu)
%
%%
state_diol9_RhCu=[U_RHE;state_diolRhCu;state_9RhCu];
state_diol9_RhCu=transpose(state_diol9_RhCu);
U_diol9_RhCu=state_diol9_RhCu(state_diol9_RhCu(:,2)<state_diol9_RhCu(:,3));
U_diol9_RhCu=min(U_diol9_RhCu)
%
state_8CH3OH_RhCu=[U_RHE;state_8RhCu;state_CH3OHRhCu];
state_8CH3OH_RhCu=transpose(state_8CH3OH_RhCu);
U_8CH3OH_RhCu=state_8CH3OH_RhCu(state_8CH3OH_RhCu(:,2)<state_8CH3OH_RhCu(:,3));
U_8CH3OH_RhCu=min(U_8CH3OH_RhCu)
% 
state_9CH3OH_RhCu=[U_RHE;state_9RhCu;state_CH3OHRhCu];
state_9CH3OH_RhCu=transpose(state_9CH3OH_RhCu);
U_9CH3OH_RhCu=state_9CH3OH_RhCu(state_9CH3OH_RhCu(:,2)<state_9CH3OH_RhCu(:,3));
U_9CH3OH_RhCu=min(U_9CH3OH_RhCu)
% 
state_15H2_RhCu=[U_RHE;state_15RhCu;state_H2RhCu];
state_15H2_RhCu=transpose(state_15H2_RhCu);
U_15H2_RhCu=state_15H2_RhCu(state_15H2_RhCu(:,2)<state_15H2_RhCu(:,3));
U_15H2_RhCu=min(U_15H2_RhCu)
%
state_diol9_RhCu=[U_RHE;state_diolRhCu;state_9RhCu];
state_diol9_RhCu=transpose(state_diol9_RhCu);
U_diol9_RhCu=state_diol9_RhCu(state_diol9_RhCu(:,2)<state_diol9_RhCu(:,3));
U_diol9_RhCu=min(U_diol9_RhCu)
%
state_9CH3OH_RhCu=[U_RHE;state_9RhCu;state_CH3OHRhCu];
state_9CH3OH_RhCu=transpose(state_9CH3OH_RhCu);
U_9CH3OH_RhCu=state_9CH3OH_RhCu(state_9CH3OH_RhCu(:,2)<state_9CH3OH_RhCu(:,3));
U_9CH3OH_RhCu=min(U_9CH3OH_RhCu)
% 
state_16CH3OH_RhCu=[U_RHE;state_16RhCu;state_CH3OHRhCu];
state_16CH3OH_RhCu=transpose(state_16CH3OH_RhCu);
U_16CH3OH_RhCu=state_16CH3OH_RhCu(state_16CH3OH_RhCu(:,2)<state_16CH3OH_RhCu(:,3));
U_16CH3OH_RhCu=min(U_16CH3OH_RhCu)
% 
state_912_RhCu=[U_RHE;state_9RhCu;state_12RhCu];
state_912_RhCu=transpose(state_912_RhCu);
U_912_RhCu=state_912_RhCu(state_912_RhCu(:,2)<state_912_RhCu(:,3));
U_912_RhCu=min(U_912_RhCu)
%
state_1214_RhCu=[U_RHE;state_9RhCu;state_12RhCu];
state_1214_RhCu=transpose(state_1214_RhCu);
U_1214_RhCu=state_1214_RhCu(state_1214_RhCu(:,2)<state_1214_RhCu(:,3));
U_1214_RhCu=min(U_1214_RhCu)
%
state_13CH4_RhCu=[U_RHE;state_13RhCu;state_CH4RhCu];
state_13CH4_RhCu=transpose(state_13CH4_RhCu);
U_13CH4_RhCu=state_13CH4_RhCu(state_13CH4_RhCu(:,2)<state_13CH4_RhCu(:,3));
U_13CH4_RhCu=min(U_13CH4_RhCu)
%
state_14CH4_RhCu=[U_RHE;state_14RhCu;state_CH4RhCu];
state_14CH4_RhCu=transpose(state_14CH4_RhCu);
U_14CH4_RhCu=state_14CH4_RhCu(state_14CH4_RhCu(:,2)<state_14CH4_RhCu(:,3));
U_14CH4_RhCu=min(U_14CH4_RhCu)
% % % 
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % %U_E_IrCu
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     U = -2:0.001:1.5;
%     U = -1.250011;  %   U_RHE =-1.1065, U_ref1_IrCu =  -1.1065
    U_RHE = U + RHE_convert;
    elec = 0.5.*H2_poten - U - RHE_convert;
    ref = CO2_poten + 8.*elec;
    state_1IrCu = (IrCu_HOCO + thermal_HOCO + 7.*elec)-ref;
    state_HCOOHIrCu = (HCOOH_poten + 6.*elec)-ref;
    state_2IrCu = (IrCu_CO + thermal_CO + H2O_poten + 6.*elec)-ref;
    state_3IrCu = (IrCu_HCO + thermal_HCO + H2O_poten + 5.*elec)-ref;
    state_4IrCu = (IrCu_COH + thermal_COH + H2O_poten + 5.*elec)-ref;
    state_5IrCu = (IrCu_OCH2 + thermal_OCH2 + H2O_poten + 4.*elec)-ref;
    state_6IrCu = (IrCu_HCOH + thermal_HCOH + H2O_poten + 4.*elec)-ref;
    state_7IrCu = (IrCu_C + thermal_C + 2*H2O_poten + 4.*elec)-ref;
    state_8IrCu = (IrCu_OCH3 + thermal_OCH3 + H2O_poten + 3.*elec)-ref;
    state_9IrCu = (IrCu_CH2OH + thermal_CH2OH + H2O_poten + 3.*elec)-ref;
    state_10IrCu = (IrCu_CH + thermal_CH + 2*H2O_poten + 3.*elec)-ref;
    state_11IrCu = (IrCu_O + thermal_O + H2O_poten + CH4_poten + 2.*elec)-ref;
    state_12IrCu = (IrCu_CH2 + thermal_CH2 + 2*H2O_poten + 2.*elec)-ref;
    state_13IrCu = (IrCu_OH + thermal_OH + H2O_poten + CH4_poten + 1.*elec)-ref; 
    state_14IrCu = (IrCu_CH3 + thermal_CH3 + 2*H2O_poten + 1.*elec)-ref;
    state_15IrCu = (IrCu_H + thermal_H + CO2_poten + 7.*elec)-ref;
    state_16IrCu = (CH3OH_poten + IrCu_OH + thermal_OH + 3.*elec)-ref;
    state_CH4IrCu = (CH4_poten + 2.*H2O_poten)-ref;
    state_CH3OHIrCu = (CH3OH_poten + H2O_poten + 2.*elec)-ref;
    state_H2IrCu = (H2_poten + CO2_poten + 6.*elec)-ref;
    state_diolIrCu=(H2C_O2H2_poten + 4.*elec)-ref;   
%       
figure (9)
cmap=hsv(4);   
plot(U_RHE,state_1IrCu,'g','linewidth',2)
xlabel('U_{RHE}(V)','FontName', 'Times New Roman', 'FontSize', 20);
ylim([-3.5 5.5]);
xlim([-1.5 1.5]);
ylabel('free energy (eV)','FontName', 'Times New Roman', 'FontSize', 20);
title ('IrCu(211)','FontName', 'Times New Roman', 'FontSize', 20);
hold on
plot(U_RHE,state_HCOOHIrCu,'--g','linewidth',2)
plot(U_RHE,state_2IrCu,'m','linewidth',2)
plot(U_RHE,state_3IrCu,'c','linewidth',2)
plot(U_RHE,state_4IrCu,'--c','linewidth',2)
plot(U_RHE,state_5IrCu,'r','linewidth',2)
plot(U_RHE,state_6IrCu,'--r','linewidth',2)
plot(U_RHE,state_7IrCu,':r','linewidth',2)
plot(U_RHE,state_8IrCu,'y','linewidth',2)
plot(U_RHE,state_9IrCu,'--y','linewidth',2)
plot(U_RHE,state_10IrCu,':y','linewidth',2)
plot(U_RHE,state_11IrCu,'--m','linewidth',2)
plot(U_RHE,state_12IrCu,':m','linewidth',2)
plot(U_RHE,state_13IrCu,'b','linewidth',2)
plot(U_RHE,state_14IrCu,'--b','linewidth',2)
plot(U_RHE,state_15IrCu,':b','linewidth',2)
plot(U_RHE,state_16IrCu,':g','linewidth',2)
plot(U_RHE,state_CH3OHIrCu,'k','linewidth',2)
plot(U_RHE,state_CH4IrCu,'--k','linewidth',2)
plot(U_RHE,state_H2IrCu,':k','linewidth',2)
plot(U_RHE,state_diolIrCu,'-.k','linewidth',2)

legend('state 1IrCu','HCOOH','state 2IrCu','state 3IrCu','state 4IrCu','state 5IrCu','state 6IrCu','state 7IrCu','state 8IrCu','state 9IrCu','state 10IrCu','state 11IrCu','state 12IrCu','state 13IrCu','state 14IrCu','state 15IrCu','state 16IrCu','CH_4','CH3OH','H_2','diol')
hold off
% % %     
state_ref1_IrCu=[U_RHE;ref-ref;state_1IrCu];
state_ref1_IrCu=transpose(state_ref1_IrCu);
U_ref1_IrCu=state_ref1_IrCu(state_ref1_IrCu(:,2)<state_ref1_IrCu(:,3));
U_ref1_IrCu=min(U_ref1_IrCu)
% % 
state_1HCOOH_IrCu=[U_RHE;state_1IrCu;state_HCOOHIrCu];
state_1HCOOH_IrCu=transpose(state_1HCOOH_IrCu);
U_1HCOOH_IrCu=state_1HCOOH_IrCu(state_1HCOOH_IrCu(:,2)<state_1HCOOH_IrCu(:,3));
U_1HCOOH_IrCu=min(U_1HCOOH_IrCu)
% % 
state_12_IrCu=[U_RHE;state_1IrCu;state_2IrCu];
state_12_IrCu=transpose(state_12_IrCu);
U_12_IrCu=state_12_IrCu(state_12_IrCu(:,2)<state_12_IrCu(:,3));
U_12_IrCu=min(U_12_IrCu)
% % 
state_23_IrCu=[U_RHE;state_2IrCu;state_3IrCu];
state_23_IrCu=transpose(state_23_IrCu);
U_23_IrCu=state_23_IrCu(state_23_IrCu(:,2)<state_23_IrCu(:,3));
U_23_IrCu=min(U_23_IrCu)
% % 
state_24_IrCu=[U_RHE;state_2IrCu;state_4IrCu];
state_24_IrCu=transpose(state_24_IrCu);
U_24_IrCu=state_24_IrCu(state_24_IrCu(:,2)<state_24_IrCu(:,3));
U_24_IrCu=min(U_24_IrCu)
% % 
state_35_IrCu=[U_RHE;state_3IrCu;state_5IrCu];
state_35_IrCu=transpose(state_35_IrCu);
U_35_IrCu=state_35_IrCu(state_35_IrCu(:,2)<state_35_IrCu(:,3));
U_35_IrCu=min(U_35_IrCu)
% % 
state_36_IrCu=[U_RHE;state_3IrCu;state_6IrCu];
state_36_IrCu=transpose(state_36_IrCu);
U_36_IrCu=state_36_IrCu(state_36_IrCu(:,2)<state_36_IrCu(:,3));
U_36_IrCu=min(U_36_IrCu)
% % 
state_46_IrCu=[U_RHE;state_4IrCu;state_6IrCu];
state_46_IrCu=transpose(state_46_IrCu);
U_46_IrCu=state_46_IrCu(state_46_IrCu(:,2)<state_46_IrCu(:,3));
U_46_IrCu=min(U_46_IrCu)
% % 
state_47_IrCu=[U_RHE;state_4IrCu;state_7IrCu];
state_47_IrCu=transpose(state_47_IrCu);
U_47_IrCu=state_47_IrCu(state_47_IrCu(:,2)<state_47_IrCu(:,3));
U_47_IrCu=min(U_47_IrCu)
%%
state_45_IrCu=[U_RHE;state_4IrCu;state_5IrCu];
state_45_IrCu=transpose(state_45_IrCu);
U_45_IrCu=state_45_IrCu(state_45_IrCu(:,2)<state_45_IrCu(:,3));
U_45_IrCu=min(U_45_IrCu)
%
state_710_IrCu=[U_RHE;state_7IrCu;state_10IrCu];
state_710_IrCu=transpose(state_710_IrCu);
U_710_IrCu=state_710_IrCu(state_710_IrCu(:,2)<state_710_IrCu(:,3));
U_710_IrCu=min(U_710_IrCu)
% % 
state_1012_IrCu=[U_RHE;state_10IrCu;state_12IrCu];
state_1012_IrCu=transpose(state_1012_IrCu);
U_1012_IrCu=state_1012_IrCu(state_1012_IrCu(:,2)<state_1012_IrCu(:,3));
U_1012_IrCu=min(U_1012_IrCu)
%
state_1214_IrCu=[U_RHE;state_12IrCu;state_14IrCu];
state_1214_IrCu=transpose(state_1214_IrCu);
U_1214_IrCu=state_1214_IrCu(state_1214_IrCu(:,2)<state_1214_IrCu(:,3));
U_1214_IrCu=min(U_1214_IrCu)
%
state_13CH4_IrCu=[U_RHE;state_13IrCu;state_CH4IrCu];
state_13CH4_IrCu=transpose(state_13CH4_IrCu);
U_13CH4_IrCu=state_13CH4_IrCu(state_13CH4_IrCu(:,2)<state_13CH4_IrCu(:,3));
U_13CH4_IrCu=min(U_13CH4_IrCu)
%
state_14CH4_IrCu=[U_RHE;state_14IrCu;state_CH4IrCu];
state_14CH4_IrCu=transpose(state_14CH4_IrCu);
U_14CH4_IrCu=state_14CH4_IrCu(state_14CH4_IrCu(:,2)<state_14CH4_IrCu(:,3));
U_14CH4_IrCu=min(U_14CH4_IrCu)
%
state_58_IrCu=[U_RHE;state_5IrCu;state_8IrCu];
state_58_IrCu=transpose(state_58_IrCu);
U_58_IrCu=state_58_IrCu(state_58_IrCu(:,2)<state_58_IrCu(:,3));
U_58_IrCu=min(U_58_IrCu)
%%
state_59_IrCu=[U_RHE;state_5IrCu;state_9IrCu];
state_59_IrCu=transpose(state_59_IrCu);
U_59_IrCu=state_59_IrCu(state_59_IrCu(:,2)<state_59_IrCu(:,3));
U_59_IrCu=min(U_59_IrCu)
%
state_diol9_IrCu=[U_RHE;state_diolIrCu;state_9IrCu];
state_diol9_IrCu=transpose(state_diol9_IrCu);
U_diol9_IrCu=state_diol9_IrCu(state_diol9_IrCu(:,2)<state_diol9_IrCu(:,3));
U_diol9_IrCu=min(U_diol9_IrCu)
%
state_8CH3OH_IrCu=[U_RHE;state_8IrCu;state_CH3OHIrCu];
state_8CH3OH_IrCu=transpose(state_8CH3OH_IrCu);
U_8CH3OH_IrCu=state_8CH3OH_IrCu(state_8CH3OH_IrCu(:,2)<state_8CH3OH_IrCu(:,3));
U_8CH3OH_IrCu=min(U_8CH3OH_IrCu)
% 
state_9CH3OH_IrCu=[U_RHE;state_9IrCu;state_CH3OHIrCu];
state_9CH3OH_IrCu=transpose(state_9CH3OH_IrCu);
U_9CH3OH_IrCu=state_9CH3OH_IrCu(state_9CH3OH_IrCu(:,2)<state_9CH3OH_IrCu(:,3));
U_9CH3OH_IrCu=min(U_9CH3OH_IrCu)
% 
state_15H2_IrCu=[U_RHE;state_15IrCu;state_H2IrCu];
state_15H2_IrCu=transpose(state_15H2_IrCu);
U_15H2_IrCu=state_15H2_IrCu(state_15H2_IrCu(:,2)<state_15H2_IrCu(:,3));
U_15H2_IrCu=min(U_15H2_IrCu)
% % 
state_diol9_IrCu=[U_RHE;state_diolIrCu;state_9IrCu];
state_diol9_IrCu=transpose(state_diol9_IrCu);
U_diol9_IrCu=state_diol9_IrCu(state_diol9_IrCu(:,2)<state_diol9_IrCu(:,3));
U_diol9_IrCu=min(U_diol9_IrCu)
%
state_9CH3OH_IrCu=[U_RHE;state_9IrCu;state_CH3OHIrCu];
state_9CH3OH_IrCu=transpose(state_9CH3OH_IrCu);
U_9CH3OH_IrCu=state_9CH3OH_IrCu(state_9CH3OH_IrCu(:,2)<state_9CH3OH_IrCu(:,3));
U_9CH3OH_IrCu=min(U_9CH3OH_IrCu)
% 
state_16CH3OH_IrCu=[U_RHE;state_16IrCu;state_CH3OHIrCu];
state_16CH3OH_IrCu=transpose(state_16CH3OH_IrCu);
U_16CH3OH_IrCu=state_16CH3OH_IrCu(state_16CH3OH_IrCu(:,2)<state_16CH3OH_IrCu(:,3));
U_16CH3OH_IrCu=min(U_16CH3OH_IrCu)
% 
state_912_IrCu=[U_RHE;state_9IrCu;state_12IrCu];
state_912_IrCu=transpose(state_912_IrCu);
U_912_IrCu=state_912_IrCu(state_912_IrCu(:,2)<state_912_IrCu(:,3));
U_912_IrCu=min(U_912_IrCu)
%
state_1214_IrCu=[U_RHE;state_9IrCu;state_12IrCu];
state_1214_IrCu=transpose(state_1214_IrCu);
U_1214_IrCu=state_1214_IrCu(state_1214_IrCu(:,2)<state_1214_IrCu(:,3));
U_1214_IrCu=min(U_1214_IrCu)
%
state_14CH4_IrCu=[U_RHE;state_14IrCu;state_CH4IrCu];
state_14CH4_IrCu=transpose(state_14CH4_IrCu);
U_14CH4_IrCu=state_14CH4_IrCu(state_14CH4_IrCu(:,2)<state_14CH4_IrCu(:,3));
U_14CH4_IrCu=min(U_14CH4_IrCu)
%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % x = 1:9;
% % U_ref1=[U_ref1_AuCu,U_ref1_AgCu,U_ref1_Cu,U_ref1_PdCu,U_ref1_PtCu,U_ref1_NiCu,U_ref1_CoCu,U_ref1_RhCu,U_ref1_IrCu]
% % U_1HCOOH=[U_1HCOOH_AuCu,U_1HCOOH_AgCu,U_1HCOOH_Cu,U_1HCOOH_PdCu,U_1HCOOH_PtCu,U_1HCOOH_NiCu,U_1HCOOH_CoCu,U_1HCOOH_RhCu,U_1HCOOH_IrCu]
% % U_23=[U_23_AuCu,U_23_AgCu,U_23_Cu,U_23_PdCu,U_23_PtCu,U_23_NiCu,U_23_CoCu,U_23_RhCu,U_23_IrCu]
% % U_34=[U_34_AuCu,U_34_AgCu,U_34_Cu,U_34_PdCu,U_34_PtCu,U_34_NiCu,U_34_CoCu,U_34_RhCu,U_34_IrCu]
% % U_35=[U_35_AuCu,U_35_AgCu,U_35_Cu,U_35_PdCu,U_35_PtCu,U_35_NiCu,U_35_CoCu,U_35_RhCu,U_35_IrCu]
% % U_46=[U_46_Cu,U_46_AgCu,U_46_AuCu,U_46_PdCu,U_46_PtCu,U_46_CoCu,U_46_NiCu,U_46_RhCu,U_46_IrCu]
% % U_67=[U_67_Cu,U_67_AgCu,U_67_AuCu,U_67_PdCu,U_67_PtCu,U_67_CoCu,U_67_NiCu,U_67_RhCu,U_67_IrCu]
% % U_78=[U_78_Cu,U_78_AgCu,U_78_AuCu,U_78_PdCu,U_78_PtCu,U_78_CoCu,U_78_NiCu,U_78_RhCu,U_78_IrCu]
% % U_89=[U_89_Cu,U_89_AgCu,U_89_AuCu,U_89_PdCu,U_89_PtCu,U_89_CoCu,U_89_NiCu,U_89_RhCu,U_89_IrCu]
% % U_9CH4=[U_9CH4_Cu,U_9CH4_AgCu,U_9CH4_AuCu,U_9CH4_PdCu,U_9CH4_PtCu,U_9CH4_CoCu,U_9CH4_NiCu,U_9CH4_RhCu,U_9CH4_IrCu]
% % U_410=[U_410_Cu,U_410_AgCu,U_410_AuCu,U_410_PdCu,U_410_PtCu,U_410_CoCu,U_410_NiCu,U_410_RhCu,U_410_IrCu]
% % U_1113=[U_1113_Cu,U_1113_AgCu,U_1113_AuCu,U_1113_PdCu,U_1113_PtCu,U_1113_CoCu,U_1113_NiCu,U_1113_RhCu,U_1113_IrCu]
% % U_510=[U_510_Cu,U_510_AgCu,U_510_AuCu,U_510_PdCu,U_510_PtCu,U_510_CoCu,U_510_NiCu,U_510_RhCu,U_510_IrCu]
% % U_1213=[U_1213_Cu,U_1213_AgCu,U_1213_AuCu,U_1213_PdCu,U_1213_PtCu,U_1213_CoCu,U_1213_NiCu,U_1213_RhCu,U_1213_IrCu]
% % U_1314=[U_1314_Cu,U_1314_AgCu,U_1314_AuCu,U_1314_PdCu,U_1314_PtCu,U_1314_CoCu,U_1314_NiCu,U_1314_RhCu,U_1314_IrCu]
% % U_1415=[U_1415_Cu,U_1415_AgCu,U_1415_AuCu,U_1415_PdCu,U_1415_PtCu,U_1415_CoCu,U_1415_NiCu,U_1415_RhCu,U_1415_IrCu]
% % U_1516=[U_1516_Cu,U_1516_AgCu,U_1516_AuCu,U_1516_PdCu,U_1516_PtCu,U_1516_CoCu,U_1516_NiCu,U_1516_RhCu,U_1516_IrCu]
% % U_16CH4=[U_16CH4_Cu,U_16CH4_AgCu,U_16CH4_AuCu,U_16CH4_PdCu,U_16CH4_PtCu,U_16CH4_CoCu,U_16CH4_NiCu,U_16CH4_RhCu,U_16CH4_IrCu]
% % U_17H2=[U_17H2_AuCu,U_17H2_AgCu,U_17H2_Cu,U_17H2_PdCu,U_17H2_PtCu,U_17H2_NiCu,U_17H2_CoCu,U_17H2_RhCu,U_17H2_IrCu]
% % U_413=[U_413_Cu,U_413_AgCu,U_413_AuCu,U_413_PdCu,U_413_PtCu,U_413_CoCu,U_413_NiCu,U_413_RhCu,U_413_IrCu]
% % U_1014=[U_1014_Cu,U_1014_AgCu,U_1014_AuCu,U_1014_PdCu,U_1014_PtCu,U_1014_CoCu,U_1014_NiCu,U_1014_RhCu,U_1014_IrCu]
% % U_513=[U_513_Cu,U_513_AgCu,U_513_AuCu,U_513_PdCu,U_513_PtCu,U_513_CoCu,U_513_NiCu,U_513_RhCu,U_513_IrCu]
% % 
% % figure (10)
% % cmap=hsv(4);
% % plot(x,U_ref1,'ok','MarkerSize',9,'LineWidth',3)
% % set(gca, 'XTick',1:9, 'XTickLabel',{'Cu3Au' 'Cu3Ag' 'Cu' 'Cu3Pd' 'Cu3Pt' 'Cu3Ni' 'Cu3Co' 'Cu3Rh' 'Cu3Ir'},'FontName', 'Times New Roman', 'FontSize', 20)
% % ylabel('Limiting potential (V_{RHE})','FontName', 'Times New Roman', 'FontSize', 20)
% % title ('Limiting potential','FontName', 'Times New Roman', 'FontSize', 20)
% % hold on
% % plot(x,U_1HCOOH,'sk','MarkerSize',9,'LineWidth',3)
% % plot(x,U_34,'+k','MarkerSize',9,'LineWidth',3)
% % plot(x,U_35,'*k','MarkerSize',9,'LineWidth',3)
% % plot(x,U_23,'xk','MarkerSize',9,'LineWidth',5)
% % plot(x,U_17H2,'kd','MarkerSize',9,'LineWidth',5)
% % legend('CO2-->HOCO*','HOCO*-->HCOOH','CO*-->HCO*','CO*-->COH*','OH*-->H2O','H*-->H2')
% % hold off
% % 
% % figure (11)
% % plot(x,U_46,'ko','MarkerSize',9,'LineWidth',2)
% % set(gca, 'XTick',1:9, 'XTickLabel',{'Cu' 'Cu3Ag' 'Cu3Au' 'Cu3Pd' 'Cu3Pt' 'Cu3Co' 'Cu3Ni' 'Cu3Rh' 'Cu3Ir'},'FontName', 'Times New Roman', 'FontSize', 20)
% % ylabel('Limiting potential (V_{RHE})','FontName', 'Times New Roman', 'FontSize', 20)
% % title ('Limiting potential state 4-CH_4 (formaldehyde path)','FontName', 'Times New Roman', 'FontSize', 20)
% % hold on
% % plot(x,U_67,'k+','MarkerSize',9,'LineWidth',2)
% % plot(x,U_78,'k*','MarkerSize',9,'LineWidth',2)
% % plot(x,U_89,'kx','MarkerSize',9,'LineWidth',2)
% % plot(x,U_413,'ks','MarkerSize',9,'LineWidth',2)
% % plot(x,U_410,'kd','MarkerSize',9,'LineWidth',2)
% % legend('U 46','U 67','U 78','U 89','U 4-13','U 4-10')
% % hold off
% % 
% % figure (12)
% % plot(x,U_1014,'ko','MarkerSize',9,'LineWidth',2)
% % set(gca, 'XTick',1:9, 'XTickLabel',{'Cu' 'Cu3Ag' 'Cu3Au' 'Cu3Pd' 'Cu3Pt' 'Cu3Co' 'Cu3Ni' 'Cu3Rh' 'Cu3Ir'},'FontName', 'Times New Roman', 'FontSize', 20)
% % ylabel('Limiting potential (V_{RHE})','FontName', 'Times New Roman', 'FontSize', 20)
% % title ('Limiting potential state 4-CH_4 (non-formaldehyde+HCO* path)','FontName', 'Times New Roman', 'FontSize', 20)
% % hold on
% % plot(x,U_1415,'k+','MarkerSize',9,'LineWidth',2)
% % plot(x,U_1516,'k*','MarkerSize',9,'LineWidth',2)
% % plot(x,U_16CH4,'kx','MarkerSize',9,'LineWidth',2)
% % plot(x,U_513,'ks','MarkerSize',9,'LineWidth',2)
% % plot(x,U_510,'kd','MarkerSize',9,'LineWidth',2)
% % % plot(x,U_17H2,'k^','MarkerSize',9,'LineWidth',2)
% % legend('U 10-14','U 14-15','U 15-16','U 16-CH_4','U 5-13','U 5-10')
% % hold off
%  
% % figure (13)
% % plot(x,U_510,'ko','MarkerSize',9,'LineWidth',2)
% % set(gca, 'XTick',1:9, 'XTickLabel',{'Cu' 'Cu3Ag' 'Cu3Au' 'Cu3Pd' 'Cu3Pt' 'Cu3Co' 'Cu3Ni' 'Cu3Rh' 'Cu3Ir'},'FontName', 'Times New Roman', 'FontSize', 20)
% % ylabel('Limiting potential (V_{RHE})','FontName', 'Times New Roman', 'FontSize', 20)
% % title ('Limiting potential state 4-CH_4 (non-formaldehyde+COH* path)','FontName', 'Times New Roman', 'FontSize', 20)
% % hold on
% % plot(x,U_1213,'k+','MarkerSize',9,'LineWidth',2)
% % plot(x,U_1314,'k*','MarkerSize',9,'LineWidth',2)
% % plot(x,U_1415,'kx','MarkerSize',9,'LineWidth',2)
% % plot(x,U_1516,'ks','MarkerSize',9,'LineWidth',2)
% % plot(x,U_16CH4,'kd','MarkerSize',9,'LineWidth',2)
% % plot(x,U_17H2,'k^','MarkerSize',9,'LineWidth',2)
% % legend('U 5-10','U 12-13','U 13-14','U 14-15','U 15-16','U 16-CH_4','U 17-H_2')
% % hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

