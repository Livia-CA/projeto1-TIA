disp('Primeira população/geração')
populacaoInit = populacao();
populacaoInit(11:12, 1:6) = -1
melhor_da_geracao = zeros(1,10);
populacaoDec = convertBinToDec(populacaoInit, 12)
melhor_da_geracao(1) = max(populacaoDec);

for i=2:10
  paisAptos = elitismo(populacaoDec);
  filhos = crossOver(paisAptos,populacaoInit);
  filhosMutados = mutacao(filhos);
  espacos = avaliacao(populacaoDec);
  populacaoInit(espacos(1),:) = filhosMutados(1,:);
  populacaoInit(espacos(2),:) = filhosMutados(2,:);
  disp('População com os novos filhos')
  populacaoInit
  populacaoDec = convertBinToDec(populacaoInit, 12)
  seresFracos = menosAptos(populacaoDec);
  populacaoInit(seresFracos(1), :) = -1;
  populacaoInit(seresFracos(2), :) = -1;
  disp('População depois de eliminar os fracos')
  populacaoInit
  populacaoDec = convertBinToDec(populacaoInit, 12)
  melhor_da_geracao(i) = max(populacaoDec);
endfor

plot(melhor_da_geracao, zeros(1,10))


