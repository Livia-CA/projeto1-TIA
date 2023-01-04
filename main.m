
populacao(1:10, 1:6) = populacao()
populacao(11:12, 1:6) = -1
melhor_da_geracao = zeros(1,10);

for i=1:10
  populacaoDec = convertBinToDec(populacao, 12);
  paisAptos = elitismo(populacaoDec);
  filhos = crossOver(paisAptos,populacao);
  filhosMutados = mutacao(filhos);
  populacao(11,:) = filhosMutados(1,:);
  populacao(12,:) = filhosMutados(2,:);
  populacao
  populacaoDec = convertBinToDec(populacao, 12);
  seresFracos = menosAptos(populacaoDec);
  populacao(seresFracos(1), :) = -1;
  populacao(seresFracos(2), :) = -1;
  melhor_da_geracao(i) = max(populacaoDec);
endfor

plot(melhor_da_geracao, zeros(1:10))


