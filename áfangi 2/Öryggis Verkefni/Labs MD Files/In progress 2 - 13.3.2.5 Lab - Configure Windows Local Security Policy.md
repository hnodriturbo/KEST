# 13.3.2.5 Lab - Configure Windows Local Security Policy

## Introduction
In this lab, you will configure Windows Local Security Policy, used to configure security requirements for stand-alone computers not part of an Active Directory domain. You will modify password requirements, enable auditing, configure user rights, set security options, and use Event Manager to view logged information.

## Recommended Equipment
- A computer with Windows installed.
- Note: Accessing the Local Security Policy tool varies slightly based on the Windows version.

## Instructions

### Step 1: Review the security requirements
Configure six stand-alone Windows computers at a branch office according to the organization's security policy. These computers are not part of an Active Directory domain.

#### Security policy:
- Passwords must be at least 8 characters.
- Passwords must be changed every 90 days.
- A user may change their password once a day.
- A user must use a unique password for at least 8 changes.
- Passwords must consist of three of these elements:
  - Lower case alpha character.
  - Upper case alpha character.
  - Numerical character.
  - Symbol character.
- Users are locked out after 5 incorrect password attempts and must wait 5 minutes.
- All security settings for Audit Policy should be enabled.
- Automatic logout after 30 minutes of inactivity (Windows 8.1 and 8.0 only).
- Users must log in before removing a laptop from a docking station.
- At login, present a caution message: "Your activity is monitored. This computer is for business use only."
- Users receive a password change reminder 7 days before expiration.

### Step 2: Open the Windows Local Security Policy tool
a. Access Local Security Policy in Windows 10 via Administrative Tools or Search > secpol.msc.
b. Focus on the Account Policies and Local Policies.

### Step 3: Configure the Password Policy security settings
a. Expand Account Policies, then click Password Policy.
b. Set Enforce password history to 8.
c. Configure remaining Password Policy settings based on Step 1 requirements.
   - Maximum password age: [Your Answer]
   - Minimum password age: [Your Answer]
   - Minimum password length: [Your Answer]
   - Password must meet complexity requirements: [Your Answer]
   - Store passwords using reversible encryption: Disabled

### Step 4: Configure the Account Lockout Policy security settings
a. How many times is a user allowed to attempt to login before the account is locked?
   `Type your answers here.`
b. How long should the user wait before attempting to log back in?
   `Type your answers here.`
c. Configure Account Lockout Policy settings.

### Step 5: Configure the Audit Policy security settings
a. Expand Local Policies, then click Audit Policy.
b. Enable Success and Failure for each policy.

### Step 6: Configure additional Local Policies security settings
a. View User Rights Assignment and Security Options.
b. Are there any you would recommend changing? Why?
   `Type your answers here.`
c. List policy and security setting values to change for remaining requirements:
   - Interactive logon: Machine inactivity limit: 1800 seconds
   - [Other policies and settings]

### Step 7: Test the password policy security settings
Test your password policy by attempting to change the password to one that does not meet requirements. Look for a message indicating the password does not meet policy requirements.

### Step 8: Export and import security policy settings
The customer has 5 other stand-alone computers needing the same security policy.
a. Click Action > Export policy in Local Security Policy.
b. Choose a name for the .inf file and save it.
c. Copy the .inf file to a flash drive. On another computer, insert the drive, open Local Security Policy, and click Action > Import Policy. Locate the .inf file and open it to apply the policy.

## End of Document
