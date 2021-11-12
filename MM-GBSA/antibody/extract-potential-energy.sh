#!/bin/bash

grep ^"ENERGY:" antibody.log | awk '{print $2, $14}' > mmgbsa.dat
