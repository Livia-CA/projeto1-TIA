disp('Primeira população/geração')
populacao(1:10, 1:6) = populacao();
populacao(11:12, 1:6) = -1
melhor_da_geracao = zeros(1,10);
populacaoDec = convertBinToDec(populacao, 12)
melhor_da_geracao(1) = max(populacaoDec);

for i=2:10
  paisAptos = elitismo(populacaoDec);
  filhos = crossOver(paisAptos,populacao);
  filhosMutados = mutacao(filhos);
  espacos = avaliacao(populacaoDec);
  populacao(espacos(1),:) = filhosMutados(1,:);
  populacao(espacos(2),:) = filhosMutados(2,:);
  disp('População com os novos filhos')
  populacao
  populacaoDec = convertBinToDec(populacao, 12)
  seresFracos = menosAptos(populacaoDec);
  populacao(seresFracos(1), :) = -1;
  populacao(seresFracos(2), :) = -1;
  disp('População depois de eliminar os fracos')
  populacao
  populacaoDec = convertBinToDec(populacao, 12)
  melhor_da_geracao(i) = max(populacaoDec);
endfor

plot(melhor_da_geracao, zeros(1,10))


