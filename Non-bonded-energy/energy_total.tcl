mol new ../charmm.psf
mol addfile trajectory_1ns_interval.dcd waitfor all

set sel1 [atomselect top "segname PROA or segname CARA"]
set sel2 [atomselect top "not (segname PROA or segname CARA)"]
set execute /home/dhiman/NAMD_2.14_Linux-x86_64-multicore/namd2

set prm1 toppar/par_all36m_prot.prm
set prm2 toppar/par_all36_carb.prm
set prm3 toppar/toppar_all36_carb_glycopeptide.str

set tempfile temp
set outfile Energy_output_total
package require namdenergy
namdenergy -sel $sel1 $sel2 -exe $execute -par $prm1 -par $prm2 -par $prm3 -elec -vdw -tempname ${tempfile} -ofile ${outfile}
