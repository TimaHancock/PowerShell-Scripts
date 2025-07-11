 <# Create CSV of users using this format:
      Username,groupname
      User1,group
      User2,group
 Username can be in the format of distinguished name, GUID, security name or SAM
 Groupname must be the "Group name (pre-Windows 2000)"

 Alternatively, if you are only applying one group, you can limit the CSV to just usernames and hardcode
 the Groupname in the -Identity parameter
 #>
 
 # Create variable $users and initialize with CSV of users
     $users = Import-Csv "path\to\text.csv"

# Loop through all users in CSV, -Whatif is to simulate, remove when you want to fully execute
     foreach ($user in $users) {
         Add-ADGroupMember -Identity $user.groupname -Members $user.username -Whatif
     }
