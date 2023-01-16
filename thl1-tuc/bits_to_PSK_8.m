function[X_in]=bits_to_PSK_8(bit_seq,A)
X_in=zeros(length(bit_seq),2);
for k=1:length(bit_seq)
    if(bit_seq(k,1)==0 && bit_seq(k,2)==0 && bit_seq(k,3)==0);
        X_in(k,1)=A*cos(2*pi*0);
         X_in(k,2)=A*sin(2*pi*0);
    elseif(bit_seq(k,1)==0 && bit_seq(k,2)==0 && bit_seq(k,3)==1);
        X_in(k,1)=A*cos(2*pi*1/8);
         X_in(k,2)=A*sin(2*pi*1/8);
        elseif(bit_seq(k,1)==0 && bit_seq(k,2)==1 && bit_seq(k,3)==1);
        X_in(k,1)=A*cos(2*pi*2/8);
         X_in(k,2)=A*sin(2*pi*2/8);
          elseif(bit_seq(k,1)==0 && bit_seq(k,2)==1 && bit_seq(k,3)==0);
        X_in(k,1)=A*cos(2*pi*3/8);
         X_in(k,2)=A*sin(2*pi*3/8);
           elseif(bit_seq(k,1)==1 && bit_seq(k,2)==1 && bit_seq(k,3)==0);
        X_in(k,1)=A*cos(2*pi*4/8);
         X_in(k,2)=A*sin(2*pi*4/8);
         elseif(bit_seq(k,1)==1 && bit_seq(k,2)==0 && bit_seq(k,3)==0);
        X_in(k,1)=A*cos(2*pi*5/8);
         X_in(k,2)=A*sin(2*pi*5/8);
          elseif(bit_seq(k,1)==1 && bit_seq(k,2)==0 && bit_seq(k,3)==1);
        X_in(k,1)=A*cos(2*pi*6/8);
         X_in(k,2)=A*sin(2*pi*6/8);
   
         elseif(bit_seq(k,1)==1 && bit_seq(k,2)==1 && bit_seq(k,3)==1);
        X_in(k,1)=A*cos(2*pi*7/8);
         X_in(k,2)=A*sin(2*pi*7/8);
    end
end
end