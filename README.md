# Apache Setup Script

Este repositório contém um script automatizado para instalação e configuração básica de um servidor Apache em sistemas Linux baseados em Debian (como Ubuntu).

## Requisitos

- Distribuição baseada em Debian (ex: Ubuntu)
- Permissões de superusuário (sudo)
- Git instalado

## Instalação

Clone o repositório e execute o script:

```bash
git clone https://github.com/SEU_USUARIO/apache-setup-script.git
cd apache-setup-script
chmod +x setup_apache.sh
./setup_apache.sh


:information_source: O que o script faz?
Atualiza pacotes do sistema com apt update && upgrade

Instala o Apache2

Cria um arquivo index.html simples em /var/www/html

Define permissões corretas na pasta

Habilita e inicia o serviço com systemctl

Libera as portas HTTP/HTTPS no UFW (ufw allow in "Apache Full")