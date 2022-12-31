function [filhos] = crossOver(pais, popu)
  %Cruzando a primeira metade
  aux = popu(pais(1), 1:3);
  popu(pais(1), 1:3) = popu(pais(2), 1:3);
  popu(pais(2), 1:3) = aux;
  %disp('Cruzado')

  filhos(1, :) = popu(pais(1), :);
  filhos(2, :) = popu(pais(2), :);
endfunction
