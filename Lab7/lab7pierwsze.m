% Parametry wejściowe
tau = [8.7 , 0.08]; % wektor czasów stałych
n = [5, 11, 23]; % wektor stopni wielomianu Padé


% Rysowanie charakterystyk
for i = 1:length(tau)
    for j = 1:length(n)
        
        % Obliczenie funkcji Padé
        pade(tau(i), n(j));
        
        
        % Oczekiwanie na kliknięcie przez użytkownika
        waitforbuttonpress;
    end
end