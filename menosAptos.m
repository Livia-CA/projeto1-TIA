function [doismenosAptos] = menosAptos(vetor)
  doismenosAptos = zeros(1,2);
  for i= 1:2
    [valor, indice] = min(vetor);
    doismenosAptos(i) = indice;
    vetor(indice) = 100;
  endfor


endfunction
