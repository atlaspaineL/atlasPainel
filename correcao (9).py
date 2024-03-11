import json
import os

with open('/etc/v2ray/config.json', 'r') as f:
    config = json.load(f)

if 'log' not in config:
    new_config = {
        'log': {
            'access': '/var/log/v2ray/access.log',
            'error': '/var/log/v2ray/error.log',
            'loglevel': 'info'
        }
    }
    new_config.update(config)
    config = new_config
    print('Configuração adicionada')
else:
    print('Já foi configurado')


with open('/etc/v2ray/config.json', 'w') as f:
    json.dump(config, f, indent=2)

os.system('systemctl restart v2ray')