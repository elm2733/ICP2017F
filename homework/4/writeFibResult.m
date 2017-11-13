%8. (B) This will display both functions from part A
n = 1:35;

for i=length(n):-1:1
    printtimeFib(i) = timeFib(i);
    printtimeFibLoop(i) = timeFibLoop(i);
    writetable(struct2table(printtimeFib),'fibOutput.txt');
    writetable(struct2table(printtimeFibLoop),'fibLoopOutput.txt');
end
    