#!/bin/bash

echo "Atualizando sistema..."
sudo apt update && sudo apt upgrade -y

echo "Instalando Apache2..."
sudo apt install apache2 -y

echo "Habilitando e iniciando o serviço Apache..."
sudo systemctl enable apache2
sudo systemctl start apache2

echo "Criando página inicial personalizada..."
echo "<!DOCTYPE html>
<html>
<head><title>Servidor Apache Automatizado</title></head>
<body>
<h1>Servidor Apache funcionando com sucesso!</h1>
<p>Script executado em: $(date)</p>
</body>
</html>" | sudo tee /var/www/html/index.html > /dev/null

echo "Definindo permissões padrão..."
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

echo "Configurando firewall (UFW) para liberar portas HTTP e HTTPS..."
sudo ufw allow in "Apache Full"

echo "Status do Apache:"
sudo systemctl status apache2 | grep Active

echo "Script finalizado com sucesso!"
