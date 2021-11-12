mol new ionized.pdb
set all [atomselect top "all"]
set sel1 [atomselect top "protein and name CA " ]
#set sel2 [atomselect top "protein and not segname PROE and not segname PROF"]

$all set beta 0.0
$sel1 set beta 1.0
#$sel2 set beta 0.5

$all writepdb reference.pdb 
exit
