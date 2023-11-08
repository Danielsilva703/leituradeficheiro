#!/bin/bash

pares=()   #criação das variáveis "pares" e "impares"
impares=() #


while IFS= read -r numero; do  #o "IFS" vai permitir que o read leia os numeros em linhas separadas
  if ((numero % 2 == 0)); then #isto verifica se o numero é par
    pares+=("$numero") #se for par adiciona à lista de numeros pares
  else
    impares+=("$numero") #se for impar adiciona à lista de numeros impares
  fi
done < numeros.txt

echo "Números pares:"         #
for par in "${pares[@]}"; do  #ciclo for para iterar sobre cada numero no arquivo de texto
  echo "$par"                 #  
done

echo "Números ímpares:"
for impar in "${impares[@]}"; do
  echo "$impar"
done

