
function addwaitbar(n,maxamount)

h = waitbar(0,'processing...');
while n < maxamount
    waitbar(n/maxamount)
    pause(0.1)
end
close(h)
end