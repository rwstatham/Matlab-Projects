N = 1000;    %number of simulations       
p = 36;     %changed from 45 to 36 per part D)
r = 81;
a = [201 275 350 425 500 575 650 725 800 875];  %left endpoints
b = [275 350 425 500 575 650 725 800 875 950];  %right endpoints
m = [0.025/37 0.025/75 0.05/75 0.075/75 0.125/75 0.175/75 0.425/75 0.05/75 0.025/75 0.025/112];
cp= [0.025 0.05 0.10 0.175 0.30 0.475 0.90 0.95 0.975 1];    %cumulative percentage
%hold on;
for S=620:630   %different S sizes
    C = 0; %total cost
    for k = 1:N
        rd = rand;
        if rd<cp(1)
            x0 = (a(1)+b(1))/2; y0=cp(1); x = x0+(rd-y0)/m(1);
        elseif rd<cp(2)
            x0 = (a(2)+b(2))/2; y0=cp(2); x = x0+(rd-y0)/m(2);
        elseif rd<cp(3)
            x0 = (a(3)+b(3))/2; y0=cp(3); x = x0+(rd-y0)/m(3);
        elseif rd<cp(4) 
            x0 = (a(4)+b(4))/2; y0=cp(4); x = x0+(rd-y0)/m(4);
        elseif rd<cp(5) 
            x0 = (a(5)+b(5))/2; y0=cp(5); x = x0+(rd-y0)/m(5);    
        elseif rd<cp(6) 
            x0 = (a(6)+b(6))/2; y0=cp(6); x = x0+(rd-y0)/m(6);  
        elseif rd<cp(7)    
            x0 = (a(7)+b(7))/2; y0=cp(7); x = x0+(rd-y0)/m(7); 
        elseif rd<cp(8) 
            x0 = (a(8)+b(8))/2; y0=cp(8); x = x0+(rd-y0)/m(8); 
        elseif rd<cp(9)     
            x0 = (a(9)+b(9))/2; y0=cp(9); x = x0+(rd-y0)/m(9);
        else 
            x0 = b(10); y0=cp(10); x = x0+(rd-y0)/m(10);     
        end     %end if
        if x<S
            Cxs = p*S;
        else 
            Cxs = p*S + (x-S)*r;
        end
        C = C + Cxs;    %adds up the cost for each simulation
    end
    C = C/N;    %takes the avg
    plot(S,C,'*');
    title(['Part D: Simulation of pool sizes [620,630], N = ' num2str(N)])
    xlabel('Pool Size') 
    ylabel('Average Cost') 
end    
           
           
        
           
        
            
           
            
            
        
        
       
            
       
    

   

