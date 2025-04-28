#!/bin/bash

# Inicia o ssh-agent e garante que as variáveis de ambiente sejam passadas corretamente
echo "Iniciando o agente ssh..."
eval "$(ssh-agent -s)"

# Adiciona a chave SSH ao agente
echo "Adicionando a chave ssh ao agente..."
ssh-add ~/.ssh/id_sql_github

# Verifica se a chave foi adicionada corretamente
echo "Verifica se a chave foi adicionada corretamente"
ssh-add -l
