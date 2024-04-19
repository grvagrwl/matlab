pkg load control

k=1000;
wp1=100;
wp2=500;
wp3=700;
s=tf('s');
L=k/[(1+s/wp1)*(1+s/wp2)*(1+s/wp3)];

frq=0:0.1:10000;
[b,a]=bode(L,frq);
H=freqresp(L,frq);
magH=abs(H);

h=a./(1+a);
##semilogx(frq,20*log10(magH))
##grid on

