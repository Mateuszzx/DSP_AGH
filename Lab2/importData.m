% Importowanie danych z pliku csv
% Skrypt importujący dane z pliku daneP.csv

filename = 'cwiczenia_A2_pliki/daneP.csv'; % Nazwa pliku
data = uiimport(filename); % Import danych

variables = data.colheaders;
numVariables = numel(variables);
% Tworzenie osobnych wykresów dla każdej zmiennej
clf;
figure;
set(gcf, "Position", [100 100 1000 400])
for i = 1:numVariables
    subplot(1, numVariables, i);
    plot(data.data(:, i)); % Rysowanie wykresu dla zmiennej i
    title(variables(i)); % Dodawanie tytułu opartego o nazwę zmiennej
    xlabel('Indeks'); % Etykieta osi x
    ylabel(variables(i)); % Etykieta osi y

end

