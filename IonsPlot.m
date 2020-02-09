% Cations measured 
% reading in excel file and making vectors cause i hate importing directly 
[~,~,raw] = xlsread('Cations_Measured ');
% Cation & depth vecs- BLS3, LCLS3, SLS2- descending order 
for i = 2:10
    Ca(i) = raw{i,2}/1000;
    K(i) = raw{i,3}/1000;
    Mg(i) = raw{i,4}/1000;
    Na(i) = raw{i,5}/1000;
    D(i) = raw{i,6};
end
% Anion- same order as cations
for j = 12:20
    Cl(j) = raw{j,2}/1000
    So4(j) = raw{j,3}/1000
end
Cl = Cl(12:end)
So4 = So4(12:end)
% BLS3
figure(1)
subplot(2,2,1)
plot(Ca(2:4), D(2:4), 'o-b', K(2:4), D(2:4), 'o-g', Mg(2:4), D(2:4), 'o-c', Na(2:4), D(2:4), 'o-r')
title('Basque Lake-Site 2')
xlabel('Ion Concentration (ppt)')
%xlim([0 175])
ylabel('Depth (cm)')
xlim([-.5 2.5])
legend('Ca', 'K', 'Mg', 'Na', 'Location', 'east')
% LCLS3
subplot(2,2,2)
plot(Ca(5:7), D(5:7), 'o-b', K(5:7), D(5:7), 'o-g', Mg(5:7), D(5:7), 'o-c', Na(5:7), D(5:7), 'o-r')
title('Last Chance Lake-Site 3')
xlabel('Ion Concentration (ppt)')
ylabel('Depth (cm)')
legend('Ca', 'K', 'Mg', 'Na')
% SLS2
subplot(2,2,3)
plot(Ca(8:10), D(8:10), 'o-b', K(8:10), D(8:10), 'o-g', Mg(8:10), D(8:10), 'o-c', Na(8:10), D(8:10), 'o-r')
title('Salt Lake-Site 2')
xlabel('Ion Concentration (ppt)')
ylabel('Depth (cm)')
legend('Ca', 'K', 'Mg', 'Na')

% plotting per cation concentration 
figure(2)
% Calcium
subplot(2,2,1)
plot(Ca(2:4),D(2:4),'o-c',Ca(5:7),D(5:7),'o-r',Ca(8:10),D(8:10),'o-g')
title('Calcium')
xlabel('Ion Concentration (ppt)')
%xlim([0 15])
ylabel('Depth (cm)')
legend('BLS3', 'LCLS3', 'SLS2', 'Location', 'west')
% Potassium
subplot(2,2,2)
plot(K(2:4),D(2:4),'o-c',K(5:7),D(5:7),'o-r',K(8:10),D(8:10),'o-g')
%xlim([0 30])
title('Potassium')
xlabel('Ion Concentration (ppt)')
ylabel('Depth (cm)')
legend('BLS3', 'LCLS3', 'SLS2', 'Location', 'west')
% Magnesium
subplot(2,2,3)
plot(Mg(2:4),D(2:4),'o-c',Mg(5:7),D(5:7),'o-r',Mg(8:10),D(8:10),'o-g')
% xlim([0,16])
title('Magnesium')
xlabel('Ion Concentration (ppt)')
ylabel('Depth (cm)')
legend('BLS3', 'LCLS3', 'SLS2')
% Sodium
subplot(2,2,4)
plot(Na(2:4),D(2:4),'o-c',Na(5:7),D(5:7),'o-r',Na(8:10),D(8:10),'o-g')
% xlim([500,6500])
title('Sodium')
xlabel('Ion Concentration (ppt)')
ylabel('Depth (cm)')
legend('BLS3', 'LCLS3', 'SLS2', 'Location', 'north')
% Now just anions
% Chloride 
figure(3)
subplot(2,2,1)
plot(Cl(1:3), D(2:4), 'o:m',Cl(4:6),D(5:7),'o:b',Cl(7:9),D(8:10),'o:g')
xlabel('Ion Concentration (ppt)')
ylabel('Depth (cm)')
legend('BLS3', 'LCLS3', 'SLS2', 'Location', 'north')
title('Chloride')
% Sulfate 
subplot(2,2,2)
plot(So4(1:3), D(2:4), 'o:m',So4(4:6),D(5:7),'o:b',So4(7:9),D(8:10),'o:g')
xlabel('Ion Concentration (ppt)')
ylabel('Depth (cm)')
legend('BLS3', 'LCLS3', 'SLS2', 'Location', 'north')
title('Sulfate')
