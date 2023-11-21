message = 0b100100u32;
disp("message");
disp(dec2bin(message));
messageLength = 6;
divisor = 0b1101u32;
disp("Divisor");
disp(dec2bin(divisor));
divisorlen = 4;
message = bitshift(message,(divisorlen-1));
divisor = bitshift(divisor,messageLength-1);
div_ver = divisor;
rem = message;

for i = 1:messageLength
    if bitget(rem,messageLength + (divisorlen-1))
        rem = bitxor(rem,divisor);
    end
    divisor = bitshift(divisor,-1);
end

crc = rem;
disp("CRC");
disp(dec2bin(crc));
message_crc = bitxor(message,crc);
rem = message_crc;
disp("Message with CRC");
disp(dec2bin(message_crc));

for i = 1: messageLength
    if bitget(rem,messageLength+(divisorlen-i))
        rem = bitxor(rem,div_ver);
    end
    div_ver = bitshift(div_ver,-1)
end

disp("Remainer");
disp(dec2bin(rem));
if(rem == 0)
    disp("No error");
else
    disp("Error is present");
end