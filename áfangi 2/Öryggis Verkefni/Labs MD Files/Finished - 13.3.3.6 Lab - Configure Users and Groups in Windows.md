# 13.3.3.6 Lab - Configure Users and Groups in Windows

## Introduction
In this lab, you will create users and groups and delete users using the Local Users and Groups Manager. You will also assign group and user permission to folders.

## Recommended Equipment
- A computer with Windows installed.

## Instructions

### Part 1: Create New Users

#### Step 1: Access Local Users and Groups Manager.
- Log on the computer using an account with administrative privileges. Use the ITEUser account and create Studentxx and Staffxx accounts.
- Navigate to Control Panel > Administrative Tools > Computer Management. Click Local Users and Groups.
- Select the Users folder.

**Question:**
- What are the names of the accounts listed?
  
  `Administrator, Blabla, DefaultAccount, Guest, Hnodri, WDAGUtilityAccount`

- Select the Groups folder. Name five groups from the list.
  
  `Guests, Power Users, Replicator, Users, Administrators`

- Right-click your account, select Properties, and click the Member Of tab.

**Question:**
- Which group does your account belong to?
  
  `Administrators`

#### Step 2: Create new users.
- Create users Student01, Student02, Staff01, and Staff02 using the Local Users and Groups Manager. Use cisco12345 as the password and unselect "User must change password at next logon" for each user.

**Question:**
- What is Student01 required to do when logging in the first time?
  
  `Student01 is not required to change their password at first login since the option "User must change password at next logon" is unselected.`

- Double-click Student01. Unselect the "User must change password at next logon."

**Question:**
- What group does Student01 belong to?
  
  `By default, Student01 would belong to the Users group.`

- Click the Groups folder. Double-click the Users group.

**Question:**
- From the description, can the members of the Users group make system-wide changes? What can the Users group do on the computer?
  
  `No, the members of the Users group cannot make system-wide changes. They can perform tasks like running applications and using local and network printers.`

- Who are the group members?
  
  `Typically, this includes all user accounts created on the computer, except for those specifically assigned to other groups with different permissions.`

#### Step 3: Verify user and group permissions.
- Log off and log on as any member of the Users group.
- Try to create another new user as a member of the Users group and use Internet Explorer to navigate to www.cisco.com.

**Question:**
- Were you successful in creating the new account? Explain.
  
  `No, as a member of the Users group, I don't have the necessary permissions to create new user accounts.`

- Were you able to navigate to www.cisco.com? Explain.
  
  `Yes, as navigating to websites does not require administrative privileges.`

### Part 2: Create New Groups

#### Step 1: Create new groups.
- Create new groups named ITEStudent and ITEStaff and add members to the group. Also, create folders and assign permissions.

**Question:**
- With the group ITEStaff highlighted, what can the members do in this folder?
  
  `The members of the ITEStaff group, depending on the permissions set, typically can read, write, modify, and delete files within the folder. If full control is granted, they can also change permissions and take ownership of files.`

- Which additional checkbox would you select for the group ITEStudent to have full control of the folder?
  
  `To grant full control, select the 'Full Control' checkbox in the folder's permissions settings.`

### Part 3: Modify User and Group Permissions

#### Step 1: Verify and modify folder permissions.
- Log on as different users and verify their permissions in the folders Staff and Students. Modify user and group permissions as needed.

**Question:**
- Are you able to access the content in the Student01 and Student02 folders? Explain.
  
  `This depends on the permissions set for these folders. If the logged-in user is a member of a group that has been granted access to these folders, then they will be able to access the content. Otherwise, they will not have access.`

- Were you able to access the content in the folders Staff, Student\Student01, and Student\Student02? Explain.
  
  `Access to these folders depends on the user's group memberships and the permissions set on each folder. If the user is part of a group with appropriate access rights to these folders, they will be able to access the content.`

#### Step 2: Disable a user account.
- Disable the user account Staff02.

**Question:**
- Can you log on as Staff02? Explain.
  
  `No, once the Staff02 account is disabled, it cannot be used to log in until it is re-enabled.`

#### Step 3: Clean up.
- Delete the users, groups, files, and folders created in this lab.

### Reflection Questions
1. How would you give administrative privileges on the local computer to all the members of ITEStaff?
   
   `To give administrative privileges to all members of ITEStaff,
