# Define the path to the CSV file
$csvPath = ".\notendur.csv"  # Update this with the path to your CSV file

# Import user data from CSV
$users = Import-Csv -Path $csvPath

# Loop through each user in the CSV
foreach ($user in $users) {
    # Set default password for users
    $password = ConvertTo-SecureString "DefaultPassword123" -AsPlainText -Force  # Set a secure default password

    # User account creation parameters for local user
    $userParams = @{
        Name             = $user.notendanafn
        FullName         = "$($user.fornafn) $($user.eftirnafn)"
        Description      = "User account for $($user.fornafn) $($user.eftirnafn)"
        Password         = $password
        PasswordNeverExpires = $false
        UserMayNotChangePassword = $false
        AccountNeverExpires = $true
    }

    # Create the local user account
    New-LocalUser @userParams -ErrorAction Continue

    # Add user to their department group (hopur)
    Add-LocalGroupMember -Group $user.hopur -Member $user.notendanafn -ErrorAction Continue

    # Add user to the 'Allir' group
    Add-LocalGroupMember -Group "Allir" -Member $user.notendanafn -ErrorAction Continue

    # Add user to the 'Users' group
    Add-LocalGroupMember -Group "Users" -Member $user.notendanafn -ErrorAction Continue
}

Write-Host "User creation and group assignment complete."