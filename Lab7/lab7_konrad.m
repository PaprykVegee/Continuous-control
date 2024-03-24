% Parametry wejściowe
tau = [6.8 , 0.11]; % wektor czasów stałych
n = [9, 20, 31]; % wektor stopni wielomianu Padé


% Rysowanie charakterystyk
for i = 1:length(tau)
    for j = 1:length(n)
        
        % Obliczenie funkcji Padé
        pade(tau(i), n(j));
        
        
        % Oczekiwanie na kliknięcie przez użytkownika
        waitforbuttonpress;
    end
end