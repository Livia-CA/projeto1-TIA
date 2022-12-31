function avaliacao(filhos)
  filhosSelecionados = zeros(1,10)
  for i=1:10
    if(filho(i) >= 45)
      filhosSelecionados(i) = filho(i);
    endif
  endfor
endfunction
