#!/bin/bash

read -p "Insira a URL do alvo: " URL
read -p "Insira o nome do usuário alvo: " USUARIO

WORDLIST="wordlist.txt"
MSG_ERRO="Login Incorreto."

if [-z "$URL"]; then
    echo "[ERRO] A URL não pode estar vazia."
    exit 1
fi

if ! command -v curl &> /dev/null; then
    echo "[ERRO] O comando 'curl' não foi encontrado. Instale-o para continuar."
    exit 1
fi

if [! -f "$WORDLIST"]; then
    echo "[ERRO] O arquivo da wordlist '$WORDLIST' não foi encontrado."
    exit 1
fi

