# 11.4.1.5 Lab - Work in the Windows Command Shell

## Introduction

In this lab, you will use CLI commands to manage files and folders in Windows.

## Recommended Equipment

- A computer running Windows

## Instructions

### Step 1: Access the Windows command prompt.
a. Log on to a computer as a user with administrative privileges. The account ITEUser is used as the example user account throughout this lab.
b. To access the Windows command prompt click Start and type cmd. Select Command Prompt or cmd.exe to continue.

### Step 2: Display command help from the command prompt.
a. At the command prompt type help and press Enter. A list of commands is displayed.
b. To see the help information one page at a time enter the command `help | more`. Press spacebar to see the next page.
c. Press q or Ctrl-C to exit after reviewing the command list.

**Questions:**
- What happens when you press enter?
  `A list of command-line commands and their descriptions is displayed.`
- Fill out the functions of the following commands:
  - CD: `Changes the current directory.`
  - CHKDSK: `Checks the disk for errors and displays status.`
  - COPY: `Copies one or more files to another location.`
  - DEL: `Deletes one or more files.`
  - DIR: `Displays a list of files and subdirectories in a directory.`
  - DISKPART: `Displays or configures Disk Partition properties.`
  - EXIT: `Exits the command prompt or script.`
  - FORMAT: `Formats a disk for use with Windows.`
  - GPRESULT: `Displays Group Policy information for machine or user.`
  - MD: `Creates a directory.`
  - TASKLIST: `Displays a list of currently running processes.`
  - RD: `Removes a directory.`
  - ROBOCOPY: `Advanced utility to copy files and directory trees.`
  - SHUTDOWN: `Allows proper shutdown or restart of the computer.`
  - XCOPY: `Copies files and directory trees.`

d. Type `md /?` to display help for the `md` command.

**Questions:**
- How would you create the folders C:\Users\ITEUser\a\b\c if your current directory is C:\Users\ITEUser?
  `Use the command: md a\b\c`
- What command would you use to verify the creation of the nested directories?
  `Use the command: dir a\b\c`

e. Clear the screen using the command line.

**Question:**
- What command did you use?
  `The command used is cls.`

f. Press F7 for the command history.

**Question:**
- What is the last command that you have used?
  `It depends on the user's previous command; the F7 key shows it.`

g. Press up arrow to display the last command used.

**Question:**
- What is the last command?
  `It's the previous command entered before the current one.`

h. To exit the command prompt enter `exit`.

## End of Document
