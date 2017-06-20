Import-csv .\newusers.csv | select-object -property *, @{label="name"; expression={$_.givenname +$_.surname.substring(0,1)}}, @{label="SAMAccountName"; expression={$_.givenname + $_.surname.substring(0,1)}} | new-adduser -AccountPassword $newpassword -enabled $true

