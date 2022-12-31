function [matrizNumDec] = convertBinToDec(populacao)
  matrizNumDec = zeros(10,1);
  
  for i=1:10
    for j=6:-1:1
      matrizNumDec(i,1) += populacao(i,j)*(2^(6-j));
    endfor
  endfor
  
  
endfunction


