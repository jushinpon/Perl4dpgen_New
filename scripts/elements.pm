##This module is developed by Prof. Shin-Pon JU at NSYSU on March 28 2021
package elements; 

use strict;
use warnings;

our (%element); # density (g/cm3), arrangement, mass, lat a , lat c

$element{"Nb"} = [8.57,"bcc",92.90638,3.30,3.30]; 
$element{"Ta"} = [16.69,"bcc",180.94788,3.30,3.30]; 
$element{"Ti"} = [4.506,"hcp",47.867,2.95,4.685]; 
$element{"Zr"} = [6.52,"hcp",91.224,3.232,5.147]; 
$element{"Co"} = [8.9,"hcp",58.933,2.5071,4.0695]; 
$element{"Cr"} = [7.19,"bcc",51.9961,2.91,2.91]; 
$element{"Fe"} = [7.874,"bcc",55.845,2.8665,2.8665]; 
#$element{"Mn"} = [7.21,"bcc",54.938,2.9214,2.9214]; 
#$element{"Mn"} = [7.21,"bcc",54.938,8.9125,8.9125]; 
$element{"Hf"} = [13.31,"hcp",178.49,3.1964,5.0511]; 
$element{"Ni"} = [8.908,"fcc",58.693,3.524,3.524]; 
$element{"Mo"} = [10.28,"bcc",95.95,3.142,3.142]; 
$element{"Ag"} = [10.49,"fcc",107.8682,4.0853,4.0853]; 
$element{"Mn"} = [7.21,"bcc",54.938045,8.9125,8.9125]; 
$element{"Ge"} = [5.323,"fcc",72.63,5.6575,5.6575]; 
$element{"Sb"} = [6.697,"hcp",121.760,4.307,11.273]; 
$element{"Te"} = [6.24,"hcp",127.6,4.4572,5.929]; 
sub eleObj {# return properties of an element
   my $elem = shift @_;
   if(exists $element{"$elem"}){
    return (@{$element{"$elem"}});      
   }
   else{
      die "element information of \"$_\" is not listed in elements.pm.",
      " You need to add Al according to the format of density (g/cm3), arrangement, mass, lat a , lat c. ",
      ' For example, $element{"Nb"} = [8.57,"bcc",92.90638,3.30,3.30]'."\n"; 
   }
}
1;               # Loaded successfully
