#!/bin/bash

cd rbd

namd2 +p4 rbd.conf > rbd.log

./extract_potential_energy.sh 

cd ..

cd antibody

namd2 +p4 antibody.conf > antibody.log

./extract_potential_energy.sh

cd ..

cd total

namd2 +p4 total.conf > total.log

./extract_potential_energy.sh

cd ..
