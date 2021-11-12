#!/bin/bash

grep ^"ENERGY:" total.log | awk '{print $2, $14}' > mmgbsa.dat
