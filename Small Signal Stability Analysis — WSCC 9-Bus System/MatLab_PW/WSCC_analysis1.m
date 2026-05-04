clear
close all
clc
warning off
path(path,'Load_flow');
%                        a                                                 AVR   PSS  
[A, B, pos_var, ~] = small_sgn_linp('Grid_WSCC_Sauer','gendat_WSCC_9_bus',  1,  0);

[V,eigenvalues] = eig(A); % eigenalaysi
W = adjoint(V)/det(V); % left eigenvectors
% V*W; % test, the result is an unitary matrix: V*W = I

lambda = diag(eigenvalues); % eigenvalues

% taking only one eig./mode
damping = round(-real(lambda(1:2:end))./abs(lambda(1:2:end)),3) % damping
frequency = imag(lambda(1:2:end)/(2*pi)) % frequency
% help: A.' returns the nonconjugate transpose of A
part_fact = abs(V.*W.')./abs(max(V.*W.')); % participation factors (normalized)
%% figures for modal analysis - normalized mode shapes
for i = 1:3 % names
   label = sprintf('Gen%i',i); 
   name_gen{i} = label;
end    

n = [0 0 1; 1 0 0; 0 1 0]; % color settings

figure
C = compass(V([4,5,6],1)./abs(max(V([4,5,6],1)))); % take the speed index
for k = 1:3 % add the color
        C(k).Color = n(k,:);
end
legend(name_gen);
title('Mode shape - first mode')

%% figures for modal analysis - normalized mode shapes
for i = 1:3 % names
   label = sprintf('Gen%i',i); 
   name_gen{i} = label;
end    

n = [0 0 1; 1 0 0; 0 1 0]; % color settings

figure
C = compass(V([4,5,6],3)./abs(max(V([4,5,6],3)))); % take the speed index
for k = 1:3 % add the color
        C(k).Color = n(k,:);
end
legend(name_gen);
title('Mode shape - second mode')

% %% figures for modal analysis - normalized mode shapes
% for i = 1:3 % names
%    label = sprintf('Gen%i',i); 
%    name_gen{i} = label;
% end    
% 
% n = [0 0 1; 1 0 0; 0 1 0]; % color settings
% 
% figure
% C = compass(V([4,5,6],7)./abs(max(V([4,5,6],7)))); % take the speed index
% for k = 1:3 % add the color
%         C(k).Color = n(k,:);
% end
% legend(name_gen);
% title('Mode shape - third mode')
% 
% 
% %% figures for modal analysis - normalized mode shapes
% for i = 1:3 % names
%    label = sprintf('Gen%i',i); 
%    name_gen{i} = label;
% end    
% 
% n = [0 0 1; 1 0 0; 0 1 0]; % color settings
% 
% figure
% C = compass(V([4,5,6],9)./abs(max(V([4,5,6],9)))); % take the speed index
% for k = 1:3 % add the color
%         C(k).Color = n(k,:);
% end
% legend(name_gen);
% title('Mode shape - fourth mode')
% 
% 
% %% figures for modal analysis - normalized mode shapes
% for i = 1:3 % names
%    label = sprintf('Gen%i',i); 
%    name_gen{i} = label;
% end    
% 
% n = [0 0 1; 1 0 0; 0 1 0]; % color settings
% 
% figure
% C = compass(V([4,5,6],11)./abs(max(V([4,5,6],11)))); % take the speed index
% for k = 1:3 % add the color
%         C(k).Color = n(k,:);
% end
% legend(name_gen);
% title('Mode shape - fifth mode')
% 
% 
% %% figures for modal analysis - normalized mode shapes
% for i = 1:3 % names
%    label = sprintf('Gen%i',i); 
%    name_gen{i} = label;
% end    
% 
% n = [0 0 1; 1 0 0; 0 1 0]; % color settings
% 
% figure
% C = compass(V([4,5,6],13)./abs(max(V([4,5,6],13)))); % take the speed index
% for k = 1:3 % add the color
%         C(k).Color = n(k,:);
% end
% legend(name_gen);
% title('Mode shape - sixth mode')
% 
% 
% %% figures for modal analysis - normalized mode shapes
% for i = 1:3 % names
%    label = sprintf('Gen%i',i); 
%    name_gen{i} = label;
% end    
% 
% n = [0 0 1; 1 0 0; 0 1 0]; % color settings
% 
% figure
% C = compass(V([4,5,6],15)./abs(max(V([4,5,6],15)))); % take the speed index
% for k = 1:3 % add the color
%         C(k).Color = n(k,:);
% end
% legend(name_gen);
% title('Mode shape - seventh mode')
% 
% 
% %% figures for modal analysis - normalized mode shapes
% for i = 1:3 % names
%    label = sprintf('Gen%i',i); 
%    name_gen{i} = label;
% end    
% 
% n = [0 0 1; 1 0 0; 0 1 0]; % color settings
% 
% figure
% C = compass(V([4,5,6],19)./abs(max(V([4,5,6],19)))); % take the speed index
% for k = 1:3 % add the color
%         C(k).Color = n(k,:);
% end
% legend(name_gen);
% title('Mode shape - eighth mode')
% 
% 
% %% figures for modal analysis - normalized mode shapes
% for i = 1:3 % names
%    label = sprintf('Gen%i',i); 
%    name_gen{i} = label;
% end    
% 
% n = [0 0 1; 1 0 0; 0 1 0]; % color settings
% 
% figure
% C = compass(V([4,5,6],21)./abs(max(V([4,5,6],21)))); % take the speed index
% for k = 1:3 % add the color
%         C(k).Color = n(k,:);
% end
% legend(name_gen);
% title('Mode shape - ninth mode')
% 
% %% figures for modal analysis - normalized mode shapes
% for i = 1:3 % names
%    label = sprintf('Gen%i',i); 
%    name_gen{i} = label;
% end    
% 
% n = [0 0 1; 1 0 0; 0 1 0]; % color settings
% 
% figure
% C = compass(V([4,5,6],23)./abs(max(V([4,5,6],23)))); % take the speed index
% for k = 1:3 % add the color
%         C(k).Color = n(k,:);
% end
% legend(name_gen);
% title('Mode shape - tenth mode')


% plot
figure
plot(real(round(lambda,3)),imag(lambda),'xw','MarkerSize',12,'Markeredgecolor',[0,0,1],'LineWidth',2.5);
grid on
xlabel('Real'); ylabel('Imag'); title('Complex space');
% legend('DG1=0')