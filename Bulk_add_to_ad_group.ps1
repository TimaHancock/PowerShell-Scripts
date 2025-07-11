# Create variable $users and initialize with CSV of users
     $users = Import-Csv "path\to\text.csv"

# Loop through all users in CSV, -Whatif is to simulate, remove when you want to fully execute
     foreach ($user in $users) {
         Add-ADGroupMember -Identity $user.groupname -Members $user.username -Whatif
     }