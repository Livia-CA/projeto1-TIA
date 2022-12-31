function [populacaoMutada] = mutacao(m)

  probabilidade = 0;
  populacaoMutada = m;
  for i = 1:2
    for  j = 1:6
      probabilidade = rand();
      if(probabilidade >= 0.95)
         populacaoMutada(i,j) = 1 - m(i,j);
      endif
    endfor
  endfor


endfunction
