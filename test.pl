use Cwd;

my $currentPath = getcwd();# dir for all scripts
chdir("..");
my $mainPath = getcwd();# main path of Perl4dpgen dir
chdir("$currentPath");
my @allnpys = `find $mainPath/all_npy*  -type f -name "*.npy"`;
chomp @allnpys;
my %allnpyfolders;
for (@allnpys){
    my $temp =  `dirname $_`;
    chomp $temp;
    my $temp1 =  `dirname $temp`;
    chomp $temp1;
    #print "$temp1\n";
    $allnpyfolders{$temp1} = 1;
}
@extraFolders = sort keys %allnpyfolders;

#housekeeping 
my @tempfolders = `find $mainPath/all_npy* -maxdepth 2 -mindepth 2 -type d -name "*"`;
chomp @tempfolders;
for (@tempfolders){
    unless(exists $allnpyfolders{$_}){
        print "no npy files in $_\n";
        `rm -rf $_`;
    }
}