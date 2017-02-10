#Read in the csv file
$machines = Import-Csv .\first.csv

#Set up the log file information and initialize counters

$date = get-date -format MMddyyHHmmss
$logfile = ".\firstlog"+$date+".log"

#Loop through each record from the file and process the information

For ($i=1; $i -le $machines.count; $i++)
  {
    $output="ip address; "+$machines[$i-1].ip
    write-host $output 
    }