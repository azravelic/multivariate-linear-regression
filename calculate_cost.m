function J = calculate_cost(theta, X, Y)
  h = X *theta; # 50 x 1
  m = length(Y); #50
  J = (1/(2*m))*sum((h-Y).^2);

end
