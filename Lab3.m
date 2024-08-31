clear; close all; clc;
TR=1;
TIP=0;
P=100; 
m=zeros(1,P);
for c=1:P/2
    m(c)=0.95;
end
for c=P/2+1:P
    m(c)=0.45;
end
k=zeros(1,P+1);
for c=1:P/2
    k(c)=85;
end
for c=P/2+1:P+1
    k(c)=25;
end
a=0.5; 
Tmax=2*pi*sqrt(mean(m)/mean(k)); 
ti=0; tf=80*Tmax; N=100000; t=linspace(ti,tf,N); dt=t(2)-t(1); 
eta=zeros(N,P); 
eta0=zeros(1,P);
eta(1,:)=eta0; eta(2,:)=eta0;
A=2*a;
OM=pi/2;
etas=zeros(1,N);
for c=1:N
    if A*sin(OM*t(c))>=0
        etas(c)=A*sin(OM*t(c));
    else
        break;
    end
end
etad=zeros(1,N);
for i=2:N-1
    for j=2:P-1
    eta(i+1,j)=2*eta(i,j)-eta(i-1,j)+...
       dt^2/m(j)*(k(j)*(eta(i,j-1)-eta(i,j))+k(j+1)*(eta(i,j+1)-eta(i,j)));
    end
    eta(i+1,1)=2*eta(i,1)-eta(i-1,1)+...
        dt^2/m(1)*(k(1)*(etas(i)-eta(i,1))+k(2)*(eta(i,2)-eta(i,1)));
    eta(i+1,P)=2*eta(i,P)-eta(i-1,P)+...
        dt^2/m(P)*(k(P)*(eta(i,P-1)-eta(i,P))+k(P+1)*(etad(i)-eta(i,P)));
end
x=a:a:P*a;
figure(1);
set(1,'Position',[50,100,1200,300]); 
tic; simt=0;
while simt<=tf 
    hold off; 
    index=abs(t-simt)==min(abs(t-simt));
   if TIP==1
      plot((x(:)+eta(index,:)')*[1,1],[-A,A],'-g','MarkerSize',20); hold on;
      title('Unda longitudinala');
    else
      plot(x(:),eta(index,:),'.r','MarkerSize',20); hold on;
      ylabel('eta / m');
      title('Unda transversala');
    end
    xlabel('x / m');
    axis([x(1)-a x(P)+a,-2*A,2*A]);
    if TR==1
        simt=toc;
       text(0.8*x(P),1.5*A,['t = ',num2str(round(t(index))),' s']);
    else
        simt=simt+5e-2;
       text(0.8*x(P),1.5*A,['t = ',num2str(round(t(index)*10)),' ds']);
   end
   pause(1e-6)
end
% Viteza de propagare v=lambda/T,unde T=2*pi*sqrt(m/k).
