function X = inversa(A)
% Calcula la inversa de la matriu quadrada A

% Descomposici√≥ matriu A
dA = decomposition(A);

I = eye(size(A));   % matriu identitat
n = size(A,1);      % mida matriu
X = zeros(size(A)); % matriu inversa

% Resoluci√≥ sistema lineal per a la matriu d'identitat
for j = 1:n
    b = I(:,j);
    X(:,j) = dA\b;
end
end

