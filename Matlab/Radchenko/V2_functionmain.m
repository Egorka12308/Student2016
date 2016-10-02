%CONSTANTS%
A=1;
t=0:1:100; %function with step 1 from 0 to 100 in the axes t%
tau1=16;
tau2=5;
%FUNCTION CALL FROM FILE V2_functionexp.m%
[y] = V2_functionexp(A,t,tau1,tau2);
%FILTER PARAMETERS%
k=5;
l=5;
M=16;
%FUNCTION CALL FROM FILE V2_trianglefilter.m%
[s] = V2_trianglefilter(y,k,l,M);
%NORMALIZATION CONSTANT%
N=max(y)/max(s);
hold on %retains plots in the current axes so that new plots added to the axes do not delete existing plots
grid on %display axes grid lines
%FUNCTION GRAPH%
plot (t,y,'b') %creates a 2-D line plot of the data in y versus the corresponding values in t,coloured by blue
%FILTRATED FUNCTION GRAPH%
plot (t,N*s,'r') %creates a 2-D line plot of the data in N*s versus the corresponding values in t, coloured by red