% Importowanie danych z pliku csv
% Skrypt importujący dane z pliku daneP.csv

filename = 'cwiczenia_A2_pliki/daneP.csv'; % Nazwa pliku
data = uiimport(filename); % Import danych

variables = data.Properties.VariableNames; 
numVariables = numel(variables);
% Tworzenie osobnych wykresów dla każdej zmiennej
for i = 1:numVariables
    figure; % Tworzenie nowego wykresu
    plot(data{:,i}); % Rysowanie wykresu dla zmiennej i
    title(variables{i}); % Dodawanie tytułu opartego o nazwę zmiennej
    xlabel('Indeks'); % Etykieta osi x
    ylabel(variables{i}); % Etykieta osi y

end

