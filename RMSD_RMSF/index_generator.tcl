set sel1 [ atomselect top "segname PROB and name CA"]
set ind1 [ $sel1 get serial ]

set sel2 [ atomselect top "not (segname PROB) and name CA"]
set ind2 [ $sel2 get serial ]

set sel3 [ atomselect top "name CA"]
set ind3 [ $sel3 get serial ]

set sel4 [ atomselect top "segname PROD and name CA"]
set ind4 [ $sel4 get serial ]



set fout [open "CA_indexfile.ndx" "w"]

#---------- GROMACS .ndx format (comment out for NAMD)-------#
puts $fout "\[ RBD \]"
#-------------------------------------------------------------#
puts $fout $ind1

#---------- GROMACS .ndx format (comment out for NAMD)-------#
puts $fout "\[ Antibody \]"
#-------------------------------------------------------------#
puts $fout $ind2

#---------- GROMACS .ndx format (comment out for NAMD)-------#
puts $fout "\[ Total \]"
#-------------------------------------------------------------#
puts $fout $ind3

#---------- GROMACS .ndx format (comment out for NAMD)-------#
puts $fout "\[ Antibody-Binding-Domain \]"
#-------------------------------------------------------------#
puts $fout $ind4



close $fout
