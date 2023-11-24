# 11.4.2.7 Lab - File System Commands

## Introduction
In this lab, you will use CLI commands to manage files and folders in Windows.

## Recommended Equipment
- A computer running Windows

## Instructions

### Step 1: Access the Windows command prompt
a. Log on to a Windows computer and access the command prompt.
b. Navigate to the command prompt and begin the session.

### Step 2: Create and change directories
a. Use the `cd` command to check the current directory.
b. Use the `dir` command to list the files and folders in the current directory.
c. Create three new folders using the `md` command.
d. Verify the folders have been created using the `dir` command.
e. Change to one of the new folders using the `cd` command.

**Question:**
- What is the current directory?
  - `The current directory is the one displayed after executing the 'cd' command.`
- Which folder are you in now?
  - `In the folder created and navigated to using the 'cd' command.`
- What command or commands did you use to create the nested folders?
  - `Used the 'md' command to create new folders.`
- After issuing the `cd ..` command what is your directory now?
  - `The parent directory of the current folder.`

### Step 3: Create text files
a. Navigate to the folder where you will create text files.
b. Use the `echo` command to create text files.
c. Verify the creation of the files using the `dir` command.
d. Display the content of the files using the `more` or `type` commands.

### Step 4: Copy, delete, and move files
a. Move a file to a different directory using the `move` command.
b. Verify the file move with the `dir` command.
c. Copy a file within the same directory using the `copy` command.
d. Move and rename a file to a new location using the `move` command.
e. View the content in a directory without leaving the current directory using the `dir` command with a path.
f. Delete files using the `del` command.

**Question:**
- What single command would you use to delete all the files with "doc2" in the filename?
  - `del *doc2*`
- What command would you use to delete all the files in the directory?
  - `del *`

### Step 5: Use the `xcopy` and `robocopy` commands
a. Copy the content of one directory to another using `xcopy`.
b. Use the help command to determine how to copy all files and directories.
c. Use `robocopy` to copy content to a new destination.

**Question:**
- What option allows you to copy all the files and directories including the empty directories?
  - `/E option with xcopy or robocopy.`

### Step 6: Delete directories
a. Delete an empty directory using the `rd` command.
b. Attempt to delete a non-empty directory and explain the result.
c. Determine the switch that allows the deletion of a non-empty directory.

**Question:**
- Were you able to delete the directory? Explain.
  - `Yes, if empty. If not, use 'rd /s' to delete a non-empty directory.`

## Reflection Question
- What are the advantages of using CLI vs. GUI?
  - `CLI provides more control, automation, and scripting capabilities, while GUI is more user-friendly and visually intuitive.`

## End of Document
