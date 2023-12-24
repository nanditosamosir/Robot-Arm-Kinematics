for x = 1:18
    for y = -18:18
        for z = 0:23
            D = sqrt(x^2 + y^2);
            d = D - 9;
                
            Zoffset = z - 5;
                
            R = sqrt(d^2 + Zoffset^2);
            if abs(d/R) <= 1 && abs((5^2 + R^2 - 5^2)/(2 * 5 * R)) <= 1
                theta1 = atand(y/x);
                
                alpha_1 = acosd(d/R);
                
                alpha_2 = acosd((5^2 + R^2 - 5^2)/(2 * 5 * R));
                
                theta2 = alpha_1 + alpha_2;
                
                theta3 = acosd((5^2 + 5 ^2 - R^2)/(2 * 5 * 5));
                
                theta4 = 180 - ((180 - (alpha_2 + theta3)) - alpha_1);
                if theta1 >= 0 && theta1 <= 180 && theta2 <= 90 && theta2 >= 0 && theta3 >= 0 && theta3 <= 180 && theta4 >= 0 && theta4 <= 180
                    disp(['Valid combination found: x=', num2str(x), ', y=', num2str(y), ', z=', num2str(z), ...
                        ', theta1=', num2str(theta1), ', theta2=', num2str(theta2), ', theta3=', num2str(theta3), ', theta4=', num2str(theta4)]);
                end
            end
        end
    end
end