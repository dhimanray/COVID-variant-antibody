#!/bin/bash

gmx rmsf -s ../complex_dry.pdb -f 50-150ns.dcd -res -o rmsf_50-150ns
tail -n +18 rmsf_50-150ns.xvg > rmsf_50-150ns.dat

gmx rmsf -s ../complex_dry.pdb -f 100-200ns.dcd -res -o rmsf_100-200ns
tail -n +18 rmsf_100-200ns.xvg > rmsf_100-200ns.dat

gmx rmsf -s ../complex_dry.pdb -f 150-250ns.dcd -res -o rmsf_150-250ns
tail -n +18 rmsf_150-250ns.xvg > rmsf_150-250ns.dat

gmx rmsf -s ../complex_dry.pdb -f 200-300ns.dcd -res -o rmsf_200-300ns
tail -n +18 rmsf_200-300ns.xvg > rmsf_200-300ns.dat
