function b_set_chipmem_wloc(n)
%b_set_chipmem_wloc(n)
%   Sends "b" command instruction to set on chip pattern memory
%   write location to n.
%   n = 0..2047
%   MaizeChip 1.0 Sept 2013 TLH
%   MaizeChip 2.0 Communications Aug 2016 JJM

%global com
q = instrfind; %('Port',com);
if q.bytesAvailable
    junk = char(fread(q,q.bytesAvailable));
end

startcode = 170;
endcode = 85;
bcmd = 6;
data = [0 0 0 floor(n/256) rem(n,256)];
fwrite(q,[startcode bcmd data endcode 1 1 1 1 1 1 1 1]);

end

