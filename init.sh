#!/bin/bash

# Script SCANFULL

echo "Entrada de parâmetros da rede IP:"
read rhosts;

echo "Informe as portas:"
read ports;

echo "Tipo dos tópicos:"
read threads;

echo "
use auxiliary/scanner/portscan/ack
set rhosts  $rhosts
set ports   $ports
set threads $threads
run

use auxiliary/scanner/portscan/syn
set rhosts  $rhosts
set ports   $ports
set threads $threads
run

use auxiliary/scanner/portscan/tcp
set rhosts  $rhosts
set ports   $ports
set threads $threads
run

use auxiliary/scanner/portscan/xmas
set rhosts  $rhosts
set ports   $ports
set threads $threads
run" > portscan.rc
msfconsole -r portscan.rc

