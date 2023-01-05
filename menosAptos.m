function [doismenosAptos] = menosAptos(populacao)
  doismenosAptos = zeros(1,2);
  for i= 1:2
    [valor, indice] = min(populacao);
    if(valor < 0)
      i--;
      populacao(indice) = 100;
      continue;
    endif
    doismenosAptos(i) = indice;
    populacao(indice) = 100;
  endfor

endfunction
