clear all
close all
fc=1.5e9;
d1=100;
d=[100:100:1000];
n=[2 3 6];
c=3*10^8;
m=c/fc;
for i=1:3
a(i,:)=-20*(log10(m/(4*pi*d1)))+10*n(1,i)*log10(d./d1);
end
semilogx(d,a(1,:),'k-o')
hold on
semilogx(d,a(2,:),'r-s')
hold on
semilogx(d,a(3,:),'g-p')
hold on
grid on
legend('n=2','n=3','n=6')
xlabel('distance')
ylabel('path loss in dB')
title('path loss in db for different path loss exponent')
