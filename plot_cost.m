function plot(iterations, J_history)
  plot(1:iterations, J_history);
  xlabel('Iterations');
  ylabel('Cost function');
  xlim([0, iterations]);
end
