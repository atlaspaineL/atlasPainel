# -*- coding: utf-8 -*-
import requests
import os

def verifica_senha_autenticacao():
    with open('modulo.py', 'r') as arquivo:
        for linha in arquivo:
            if 'senha_autenticacao' in linha:
                senha = linha.split('=')[1].strip().strip("'")
                return senha
    return None


def reativar_porta():
    os.system('pkill -f modulo.py')
    os.system('nohup python3 modulo.py &')
    
def verifica_cron():
    resultado = os.popen('crontab -l').read()
    if 'verificador.py' in resultado:
        print('Cron ativo')
        return True
    print('Cron inativo')            
    return False

def ativar_cron():
    os.system('(crontab -l ; echo "* * * * * python3 /root/verificador.py") | crontab -')
    os.system('systemctl restart cron')

def verificar_crontab():
    if not verifica_cron():
        print('Cron inativo, ativando...')
        ativar_cron()

verificar_crontab()

def verifica_servidor():
    senha = verifica_senha_autenticacao()
    if senha:
        try:
            comando = 'echo "teste"'
            resposta = requests.post('http://localhost:6969', headers={'Senha': senha}, data={'comando': comando})
            print(resposta.status_code)
            if resposta.status_code == 200:
                print('A porta esta ativa')
            else:
                print('Porta inativa')
                reativar_porta()
        except requests.exceptions.RequestException as e:
            print('Erro ao conectar ao servidor:', e)
            reativar_porta()
    else:
        print('Senha de autenticação não encontrada')

verifica_servidor()
