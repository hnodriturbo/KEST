# 13.2.3.7 Lab - Bitlocker and Bitlocker To Go

## Introduction
In this lab, you will enable BitLocker encryption on a removable data drive and on the computer system drive.

**Note:** BitLocker is only available on certain Windows editions, including Ultimate and Enterprise editions of Windows 7, Pro and Enterprise editions of Windows 8/8.1, and Pro, Enterprise, and Education editions of Windows 10.

## Recommended Equipment
- PCs running Windows
- A removable USB storage drive

## Instructions

### Part 1: Use BitLocker to Go

#### Step 1: Encrypt the removable drive
a. Insert a removable drive such as a USB drive into the computer.
b. Turn on BitLocker for the desired removable drive via Control Panel > BitLocker Drive Encryption.
c. In the "Choose how you want to unlock this drive" window, check "Use a password to unlock the drive" and enter a password.
d. Choose to back up your recovery key by either printing or saving it to a file.
e. Select "Encrypt entire drive" and in the encryption mode, choose "Compatible mode."
f. Start encrypting the drive. After a few minutes, the drive will be encrypted and can be removed.

#### Step 2: Access the encrypted drive
a. Insert the previously encrypted removable drive into the USB port on the computer.
b. Unlock the drive with the password or use the recovery key if the password is forgotten.

**Question:**
- Why is it important to save a BitLocker recovery key?
  - `That's of course in case of a lost password or a forgotten one. In case there are important files on the key then it is a must to have a recovery key so the files can be accessed in case of password being lost.`

#### Step 3: Decrypt the drive
a. Navigate to Control Panel > BitLocker Drive Encryption.
b. Turn off BitLocker for the encrypted removable drive.
c. Wait for the decryption process to complete before removing the drive.

### Part 2: Encrypt the Operating System Drive

#### Step 1: Turn on BitLocker
a. Turn on BitLocker for the operating system drive via Control Panel > System and Security > BitLocker Drive Encryption.
b. If prompted, perform additional steps to allow authentication at startup.
c. Choose to unlock the drive with a password and back up your recovery key.
d. Select "Encrypt used disk space only" and choose "New encryption mode."
e. Restart the computer and unlock the drive with your password upon startup.

**Question:**
- What is the function of a TPM in relation to BitLocker?
  - `The Trusted Platform Module (TPM) is a hardware component used to provide enhanced security for BitLocker encryption. It securely stores cryptographic keys used to unlock the drive encrypted by BitLocker, ensuring that the drive cannot be accessed without the TPM validation. The TPM checks the integrity of the system during boot-up and only releases the encryption keys if it detects that the system has not been tampered with. This provides an additional layer of security against unauthorized access or tampering, making BitLocker's encryption more robust and resilient.`

#### Step 2: Turn off BitLocker
a. Return to BitLocker Drive Encryption in Control Panel to turn off BitLocker.
b. Decrypt the drive. This may take a while depending on the drive size.

## End of Document
