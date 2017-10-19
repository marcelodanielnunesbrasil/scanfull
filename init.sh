#!/bin/bash
#SCRIPT DE SCANFULL#

echo "ENTRADA DE PARAMETROS DA REDE IP:"

read rhosts;

echo "INFORME AS PORTAS:"

read ports;

echo "TIPOS DOS TOPICOS:"

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

