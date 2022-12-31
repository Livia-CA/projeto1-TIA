populacaoInicial = populacao();
retornoGeracao = zeros(1,10);
geracoes = (1:10);
for i=1:10
  populacaoDec = convertBinToDec(populacaoInicial);
  paisAptos = elitismo(populacaoDec);
  filhos = crossOver(paisAptos,populacaoInicial);
  filhosMutados = mutacao(filhos);
  populacaoInicial(paisAptos(1),:) = filhosMutados(1,:);
  populacaoInicial(paisAptos(2),:) = filhosMutados(2,:);
  populacaoDec = convertBinToDec(populacaoInicial);
  max(populacaoDec)
  retornoGeracao(i) = max(populacaoDec);
endfor

plot(geracoes, retornoGeracao)


