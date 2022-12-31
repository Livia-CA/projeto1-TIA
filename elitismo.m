function [doismaisAptos] = elitismo(vetor)
  doismaisAptos = zeros(1,2);
  for i= 1:2
    [valor, indice] = max(vetor);
    doismaisAptos(i) = indice;
    vetor(indice) = 0;
  endfor


endfunction
