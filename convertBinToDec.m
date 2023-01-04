  function [matrizNumDec] = convertBinToDec(populacao, n)
  matrizNumDec = zeros(n,1);

  for i=1:n
    for j=1:6
      matrizNumDec(i,1) += populacao(i,j)*(2^(j-1));
    endfor
  endfor


endfunction


