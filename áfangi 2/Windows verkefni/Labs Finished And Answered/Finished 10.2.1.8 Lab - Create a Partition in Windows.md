# 10.2.1.8 Lab - Create a Partition in Windows

## Introduction
In this lab, you will create a FAT32 formatted partition on a disk, convert the partition to NTFS, and then identify the differences between the FAT32 format and the NTFS format.

## Recommended Equipment
- Computer running Windows
- Un-partitioned space of at least 1 GB on the hard disk drive

## Instructions

### Step 1: Open Disk Management
- Navigate to the Computer Management utility and access Disk Management.

### Step 2: Create free space as necessary
- Shrink the C: drive NTFS volume if necessary to create at least 2 GB of unpartitioned space.

### Step 3: Create a new disk volume in the free space
- Create a new simple volume using the unallocated space, assign it a drive letter, and format it as FAT32.

### Step 4: Open the This PC window to review the new disk partition
- Check the properties of the new volume to verify the file system and free space.

**Question:**
- What type of File System is used on the NEW VOLUME (I:)?
  - `FAT32.`
- How much Free Space is shown?
  - `1.99gb.`
- List the tabs found in the NEW VOLUME (I:) Properties window?
  - `General, Tools, Hardware, Sharing, ReadyBoost, Previous versions and Customize.`

### Step 5: Create a text document and save it to the ITE drive
- Create a new text document on the newly formatted drive, and check its properties.

### Step 6: Convert the ITE volume from FAT32 to NTFS without losing data
- Use the command line to convert the file system of the volume from FAT32 to NTFS without data loss.

**Question:**
- What happens if you do not run as administrator when you open the command prompt?
  - `When i run it without administrator privileges it starts in the user folder but when i run as administrator i see that it starts in windows\system32 folder.`

### Step 7: Open the This PC window to work with the ITE Volume
- After converting the file system to NTFS, review the properties of the ITE volume.

**Questions:**
- What type of File System is used for the ITE (I:) drive after the conversion?
  - `NTFS`
- What are the tabs in the ITE (I:) Properties window?
  - `General, Tools, Hardware, Sharing, Security, Readyboost, Previous versions, Quota and Customize.`
- When the volume was FAT32 there were six tabs. What are the names of the new tabs that were added after the volume was converted to NTFS?
  - `Security and Quota.`

### Step 8: Display the properties of the ITE Test Document
- Observe the changes to the properties of the ITE Test Document now that the volume is NTFS.

**Questions:**
- What are the tabs in the ITE Test Document Properties window?
  - `General, Details and Previous Versions`
- When the volume was FAT32 there were three tabs. What is the name of the new tab that was added after the volume was converted to NTFS?
  - `Security`

## Reflection Question
- Why is there an additional Security tab in the properties window of documents stored on an NTFS volume?
  - `To set permissions and control access to the document for different users and groups.`

## End of Document
