# 11.4.4.2 Lab - Task and System CLI Commands

## Introduction
In this lab, you will work with task and system CLI commands.

## Required Resources
- 1 PC with Windows installed

## Instructions

### Part 1: Task CLI Commands

The `tasklist` command shows the running processes on a computer while the `taskkill` command terminates running processes. These commands can also be used on a remote computer.

#### Step 1: The tasklist command
a. Open notepad and a web browser.
b. Open a command prompt and enter `tasklist`.

**Question:**
- What command would you use to display the results of tasklist one page at a time?
  - `tasklist | more`

c. Review the syntax and options for the tasklist command using `tasklist /?`.

**Questions:**
- What is the option to list the modules that are associated with a task?
  - `/M`
- What command would you use if you want to find all the tasks that use the module `oleaut32.dll`? List a few tasks that use `oleaut32.dll`.
  - `tasklist /M oleaut32.dll`
- What command would you use to find out all the tasks that are associated with your username?
  - `tasklist /FI "USERNAME eq your_username"`
- What command would you use to find out all the processes that have been running for more than 1 hour and 40 minutes?
  - `tasklist /FI "CPUTIME gt 01:40:00"`

#### Step 2: The taskkill command
a. Use `taskkill /?` to review command syntax and options.

**Question:**
- What command would you use to terminate all processes owned by a particular user?
  - `taskkill /FI "USERNAME eq your_username" /F`

b. Use the PID recorded from the tasklist command to kill the notepad process.
c. Verify that Notepad is closed and the process has been terminated with `tasklist`.
d. Use the `/IM` option with `taskkill` to end Internet Explorer.
e. Add `/T` to terminate associated child processes if necessary.
f. Use `/F` with `taskkill` to forcibly terminate a process.
g. Verify that the browser is closed.

### Part 2: System CLI Commands

#### Step 1: The sfc command
The System File Checker (sfc) can scan the integrity of the system and replace corrupted or missing files.

a. Open a command prompt with administrative privileges.
b. Review the syntax and options of the `sfc` command with `sfc /?`.

**Question:**
- What option would you use to only scan the integrity of all the protected system files?
  - `/VERIFYONLY`

c. Use `sfc /scannow` to scan and repair all protected system files.

#### Step 2: The dism command
Deployment Image Servicing and Management (DISM) is used to service and prepare Windows images.

a. Review the options for the `dism` command with `dism`.
b. Use `dism /online /get-drivers` to list all available drivers.
c. Add `/all` to see all drivers and `/format:table` to format the output into a table.

**Question:**
- What would you add to the command to view the output one page at a time?
  - `| more`

d. Save the driver results to a text file with `dism /online /get-drivers /all /format:table > Drivers_Results.txt`.
e. Verify the creation of the text file with `more` or `type`.

#### Step 3: The shutdown command
Use the `shutdown` command when the computer is unable to shut down normally.

a. Review the syntax and options for the `shutdown` command.

**Questions:**
- Enter the command to log off your computer.
  - `shutdown /l`
- Shut down the computer in 120 seconds and note any warning message.
  - `shutdown /s /t 120`
- What command would you use to abort the shutdown?
  - `shutdown /a`

## End of Document
