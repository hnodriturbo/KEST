# 11.4.3.2 Lab – Disk CLI Commands

## Introduction

In this lab, you will work with disk CLI commands.

## Required Resources

- A Windows PC
- An additional partition with an NTFS file system

## Instructions

### Part 1: The chkdsk Command Options

In this part, you will explore the Windows command that allows you to scan and repair disks.

#### Step 1: Explore the chkdsk command
a. Open a command prompt.
b. Open the help page for the command chkdsk. Enter `help chkdsk` or `chkdsk /?` at the prompt to answer the following questions:

**Questions:**

- What is the option to fix errors on the drive?
  `/F (Fixes errors on the disk)`

- What is the option to force the volume to dismount first if necessary?
  `/X (Forces the volume to dismount first if necessary)`

- What is the option to locate bad sectors and recover readable information?
  `/R (Locates bad sectors and recovers readable information)`

c. Enter the chkdsk command to check the C:\ drive with the options from the questions in the previous step.

**Question:**
- What happened? Explain.
  `Chkdsk ran and checked the disk for errors, fixing them if /F was used.`

#### Step 2: Use the chkdsk command options.
a. Open a Command Prompt window with elevated privileges. Click Start and search for Command Prompt. Within the search results right-click Command Prompt and select Run as administrator.

b. In the Command Prompt window with elevated privileges enter the command `chkdsk C: /F /X /R` to check the status of this drive. Enter `y` when prompted. Note the change in the prompt.

**Question:**
- What is the file system of the drive?
  `The file system type is displayed in the chkdsk output, typically NTFS or FAT32.`

c. A second partition was created in a previous lab. You can perform the chkdsk command on the second partition. The I: drive will be used in this example.

### Part 2: Create a new partition using DiskPart

#### Step 1: List the disks partitions and volume.
a. Using a command prompt with elevated privilege enter `diskpart` at the prompt.

b. Enter `list disk` at the DISKPART> prompt to list all the disks in the PC.

**Question:**
- How many partitions are on disk 0?
  `This varies based on the disk configuration but typically includes a primary and a recovery partition.`

c. Enter `list volume` at the DISKPART> prompt to list all the volumes in the PC.

**Question:**
- How many volumes are listed?
  `The number of volumes listed depends on the disk configuration and may include system, recovery, and data volumes.`

#### Step 2: Shrink a volume
a. Using the list of volumes, identify a volume to shrink. This example uses volume 4.

b. At the DISKPART> prompt, enter `select volume 4` to select volume 4.

c. Enter `shrink desired=500` to reduce the size of volume by 500 megabytes.

#### Step 3: Create a new partition
a. Enter `create partition primary` at the DISKPART prompt to create a primary partition with 500 MB with an NTFS file system.

b. List the partition to verify that you have created a new partition. Notice the asterisk (*) next to partition 4 to indicate the partition is currently selected.

c. List the volumes to verify that a new volume was created and is automatically selected. Note the file system is listed as RAW.

d. The new volume will be formatted as NTFS and it will be labeled as new.

e. The new volume will be assigned as drive letter W.

f. List the volume to verify the new modification.

g. Enter `exit` at the DISKPART> to exit the DiskPart utility.

#### Step 4: Format the new volume as a FAT file system
a. In an elevated command prompt enter the format command to reformat W: to use a FAT32 file system. When prompted enter new as the current volume label. Enter the NewVol as the new volume label.

b. Navigate to the newly created W: drive and create folders and files if desired.

### Part 3: Clean up

a. At the elevated command prompt enter `diskpart` to return to the DiskPart utility.

b. List all the disks for the computer by issuing the list disk command.

c. Select the appropriate disk that has the newly created volume.

d. List all the volume for the computer by using the list volume command.

e. Select the volume that should be deleted.

f. Delete the volume using the `delete volume` command.

g. Verify that the volume has been deleted by using the list volume command.

h. Now you can recover the free space from the deleted volume 4 by extending volume 3 to include the free space. Select volume 3 and use the extend command to extend volume 3.

i. Use the list partition command to verify that the newly created partition was deleted and the shrunk partition is back to the original capacity.

j. Enter `exit` at the DISKPART> to exit the DiskPart utility.

## End of Document
