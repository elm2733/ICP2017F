%3. Riddle
rng('shuffle');
nsample = 1000;
winCounter = 0;
oddsOfWin = zeros(nsample,1);
doors = [1,2,3];
for isample = 2:nsample+1
    doorWithCar = randi(3);
    myChoice = randi(3);
    hostChoice = doors(doors~=doorWithCar);
    hostChoice = hostChoice(hostChoice~=myChoice);
    hostChoice = hostChoice(randi(length(hostChoice)));
    if myChoice == doorWithCar
        winCounter = winCounter + 1;
        oddsOfWin(isample) = winCounter/isample;
    else
        oddsOfWin(isample) = oddsOfWin(isample-1);
    end
    disp(['odds of winning by NOT switching:',num2str(oddsOfWin(isample))]);
end
plot(oddsOfWin,'lineWidth',3,'color','red');
set(gca,'xscale','log');