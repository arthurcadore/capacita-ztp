#!/bin/bash

read -p "Deseja inicializar (true) ou desativar (false) o appliance ZTP?" opcao

if [[ "$opcao" == "true" ]]; then
    echo "Desabilitando o DHCP nativo..."
     sudo systemctl stop systemd-networkd.socket
     sudo systemctl stop systemd-networkd
    echo "Verificando status dos serviços:"
     systemctl status systemd-networkd.socket
     systemctl status systemd-networkd
    echo "verificando status das portas:"
     ss -lnu 
    echo "Iniciando o appliance ZTP..."
    docker compose up & 
elif [[ "$opcao" == "false" ]]; then
    echo "Deligando o appliance ZTP..."
    docker compose down

    echo "Habilitando o DHCP nativo..."
     systemctl start systemd-networkd.socket
     systemctl start systemd-networkd

    echo "Verificando status dos serviços:"
     systemctl status systemd-networkd.socket
     systemctl status systemd-networkd
     ss -lnu 
else
    echo "Opção inválida. Use 'true' para habilitar ou 'false' para desabilitar o appliance ZTP."
fi
