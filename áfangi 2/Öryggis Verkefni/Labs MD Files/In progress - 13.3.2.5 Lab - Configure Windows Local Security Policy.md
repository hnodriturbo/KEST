# 13.3.2.5 Lab - Configure Windows Local Security Policy

## Introduction
In this lab, you will configure Windows Local Security Policy. Windows Local Security Policy is used to configure a variety of security requirements for stand-alone computers that are not part of an Active Directory domain. You will modify password requirements, enable auditing, configure some user rights, and set some security options. You will then use Event Manager to view logged information.

## Recommended Equipment
- A computer with Windows installed.
- Note: Accessing the Local Security Policy tool is slightly different, depending on the version of Windows. But after it is open, the configurations are the same for the remaining steps in this lab.

## Instructions

### Step 1: Review the security requirements.
A customer needs to have six stand-alone Windows computers at a branch office configured according to the security policy for the organization. These computers are not part of an Active Directory domain. The policies must be manually configured on each computer.

#### The security policy includes:
- Passwords must be at least 8 characters.
- Passwords must be changed every 90 days.
- A user may change their password once a day.
- A user must use a unique password for at least 8 changes of the password.
- A password must consist of three of the following four elements:
  - At least one lower case alpha character.
  - At least one upper case alpha character.
  - At least one numerical character.
  - At least one symbol character.
- Users are locked out of the computer after 5 attempts to enter the correct password. A user must wait 5 minutes for the lookout counter to reset.
- Each security setting for Audit Policy should be enabled.
- After 30 minutes of inactivity, the user will be automatically logged out. (Windows 8.1 and 8.0 only)
- Users must log in before removing a laptop from a docking station.
- At log in, users should be presented with the following title and text:
  - Title: Caution:
  - Text: Your activity is monitored. This computer is for business use only.
- Users will receive a reminder to change the password 7 days before it expires.

### Step 2: Open the Windows Local Security Policy tool.
- To access Local Security Policy in Windows 10, use Administrative Tools > Local Security Policy or Search > secpol.msc and then click secpol.
- The Local Security Policy window opens. Focus on the Account Policies and Local Policies.

### Step 3: Configure the Password Policy security settings.
- Click the arrow next to Account Policies to expand it, then click Password Policy.
- Set the following settings:
  - Enforce password history: `8`
  - Maximum password age: `90 days`
  - Minimum password age: `1 day`
  - Minimum password length: `8 characters`
  - Password must meet complexity requirements: `Enabled`
  - Store passwords using reversible encryption: `Disabled`

### Step 4: Configure the Account Lockout Policy security settings.
- How many times is a user allowed to attempt to login before the account is locked?
  - `5`
- How long should the user have to wait before attempting to log back in?
  - `5 minutes`
- Configure the Account Lockout Policy settings in Local Security Policy accordingly.

### Step 5: Configure the Audit Policy security settings.
- In Local Security Policy, expand Local Policies, then click Audit Policy.
- Enable auditing for each policy as needed (Success, Failure).

### Step 6: Configure additional Local Policies security settings.
- Click User Rights Assignment under Local Policies.
- Review the default settings.
- Question: Are there any you would recommend changing? Why?
  - `Type your answers here.`
- Click Security Options under Local Policies.
- Configure settings for the remaining security policy requirements.

### Step 7: Test the password policy security settings.
- Attempt to change the password to one that does not meet the length or complexity requirements.
- Check for a message indicating the password does not meet policy requirements.

### Step 8: Export and import security policy settings.
- Export the settings to a .inf file.
- Import the settings to another computer to apply the same security policies.

## End of Document
