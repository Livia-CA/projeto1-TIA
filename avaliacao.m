function [espacos] = avaliacao(populacaoDec)
  espacos = [0,0]; %Endeço/índice dos espaços nulos/vazios na matriz da população
  c = 0; %Quantidade de espaços vazios encontrados
  i = 1; %Índice para percorrer o vetor

  %Enquanto não encontrar espaços vazios e o vetor da população em decimal não tiver acabado, faça:
  while(c < 2 && i < 13)
    if(populacaoDec(i) < 0)
      c++;
      espacos(c) = i;
    endif
    i++;

    %Para verificar erros de lógica
    if(i > 13)
    i
    disp('Erro na avaliação')
    endif

  endwhile
endfunction
