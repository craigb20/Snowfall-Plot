% Plot of daily snowfall, highlighting the heaviest snowfall day

format compact
clear, clc, close all

% Snowfall data
Month = {'Nov','Nov','Dec','Jan','Jan','Jan','Jan','Jan','Jan','Jan','Jan','Jan','Jan', ...
'Feb','Feb','Feb','Feb','Feb','Feb','Feb','Feb','Feb','Feb','Feb','Feb','Feb','Feb','Feb','Feb', ...
'Mar','Mar','Mar','Mar','Mar','Mar'};
Day = [27,28,6,3,6,9,15,24,26,27,28,30,31,2,5,7,8,9,10,11,12,14,15,17,19,21,22,25,26,1,2,3,15,20,21];
Year = [2014,2014,2014,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015,2015, ...
        2015,2015,2015,2015,2015,2015];
Inches = [0.3,2.3,0.3,1.4,0.2,0.2,0.8,5.1,2.3,22.1,0.2,0.7,1.3,16.2,0.8,0.9,7.4,14.0,1.5,0.5,1.0,3.2,13.0,0.6,2.4,1.1,0.1,1.9,0.2, ...
          1.9,0.2,1.6,2.9,0.5,1.2];

% Convert Month, Day, Year to datetime for plotting
dates = datetime(Year, month(datetime(Month,'InputFormat','MMM')), Day);

% Find the maximum snowfall
[max_snow, max_index] = max(Inches);

% Plot snowfall
figure;
plot(dates, Inches, '-o', 'LineWidth', 1.5, 'MarkerSize', 6, 'Color', [0 0.4470 0.7410]) % blue line
hold on

% Highlight the heaviest snowfall day
plot(dates(max_index), max_snow, 'ro', 'MarkerSize', 10, 'LineWidth', 2)
text(dates(max_index), max_snow+1, sprintf('Max: %.1f"', max_snow), 'Color','red', 'FontWeight','bold')

% Add labels and title
xlabel('Date')
ylabel('Accumulation (in.)')
title('Daily Snowfall (Nov 2014 – Mar 2015)')
grid on
hold off
