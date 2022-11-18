
function [distLoxo_AB]= loxodistance (lambdaA, lambdaB,phiA,phiB)
%input angles in degrees

% C�lculo das longitudes e latitudes diferenciais, em minutos
deltaFi_AB = abs(phiA*60 - phiB*60);
deltaLambda_AB = abs(lambdaA*60 - lambdaB*60);

% Convers�o das latitudes de A e de B para graus decimais

% Corre��o das latitudes de A e de B, em minutos
fiA_ast = (10800/pi)*log(tand(phiA/2 + 45)); % Latitude corrigida de A
fiB_ast = (10800/pi)*log(tand(phiB/2 + 45)); % Latitude corrigida de B

deltaFiAB_ast = abs(fiA_ast - fiB_ast);  % Latitude diferencial corrigida
 
% C�lculo do rumo ou do suplementar deste mesmo, em radianos
V = atan2(deltaLambda_AB, deltaFiAB_ast);

% C�lculo da dist�ncia loxodr�mico, em milhas na�ticas
distLoxo_AB = deltaFi_AB/cos(V); %NM


