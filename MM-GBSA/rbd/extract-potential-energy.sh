#!/bin/bash

grep ^"ENERGY:" rbd.log | awk '{print $2, $14}' > mmgbsa.dat
