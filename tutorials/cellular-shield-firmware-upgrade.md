
# Cellular Shield Firmware Upgrade

|   Author   | Created At  |
| ---------- | ----------- |
| johnwargo  | 2016-11-10  |

------

### Intro

From time to time, WNC will release a firmware update for the WNC Cellular Shield. 

### Steps

In this tutorial, you'll complete the following steps:

1.	Prepare a Windows system for the firmware upgrade
2.	Connect the WNC Cellular Shield to the Windows PC
3.	Install the firmware update onto the WNC Cellular Shield

### Requirements

+	Windows computer (the firmware upgrade is not currently available for Mac OS or Linux computers)
+	WNC Firmware update file
+	WNC Cellular Shield
+	WNC Power Supply
+	USB 2.0 Cable

### Instructions

Software for the WNC-Shield may sometimes require updating. The following steps explain how this is performed. 

> **Note:** DO NOT MOUNT THE WNC-SHIELD TO THE FRDM-K64F BOARD WHEN UPDATING THE FIRMWARE.
> **Note:** Do not connect the WNC Cellular Shield to the PC  until instructed to do so. 
> **Note:** filenames are referred to as M14A2A_driver_x.x.x because versions numbers may vary. Always use the highest number if possible.

1.	If mounted on the FRDM-K64F board, unmount it before doing anything else.
2.	Download the WNC Cellular Firmware Update.zip file: `M14A2A_driver_x.x.x.exe`.
3.	Install it on your PC by double-clicking `M14A2A_driver_x.x.x.exe`. Accept all install defaults.
4.	The driver needs to be installed three times to ensure it is properly installed so run `M14A2A_driver_x.x.x.exe` AGAIN. The second install uninstalls the application and all associated files followed by the PC rebooting. The third install ensures that all the correct/latest driver components are installed correctly.
5.	Connect the power supply to the WNC Cellular Shield board (alone) to the PC by attaching the WNC Kit Power Supply to the USB port labeled 5V (on the WNC Shield board).
6.	Connect the WNC Cellular Shield to the PC using a USB cable. On the WNC Cellular Shield, the USB port is labeled `USB 2.0`.

	The PC will automatically instantiate newly plugged in WNC Shield board and will load the newly installed drivers. If the installation does not go correctly, the PC will indicate an unknown USB device and/or state. If this happens, try uninstalling and re-installing M14A2A_driver_x.x.x.exe.

	After the drivers are loaded and WNC Shield connected, leave it connected and powered up while attached to the PC.

7.	Locate and install the WNC Connection Manager (WNCCM_0.0.14.msi) by executing the .MSI file. After the WNCCM_0.0.14.msi insallation is complete, the PC will create a network adapter for the WNC Shield Board.

> **Note:** DO NOT PERFORM THIS WHILE THE WNC SHIELD BOARD IS CONNECTED TO THE K64F FREEDOM BOARD AS THE UPDATE WILL FAIL.

7.	Unzip the firmware update within the ZIP file. There will be a set of files created in a sub-directory similar to: \CM_MPSS_M14A2A_vxx.xx.xxxxxx.
8.	On the Windows PC, start the Connection Manager by going to All Programs >WNC>Launch Connection Manager.
9.	After launching, select the Firmware tab and select the folder where the firmware is located (i.e., the folder \CM_MPSS_M14A2A_vxx.xx.xxxxxx). Note: Be sure to select the folder name, not the file name.
10.	Click the Upgrade button.

> **Note:** The program displays a message stating “Wait for device automatic reset”. In some cases, the device may not automatically reset. If the process does not start after 3 mins, reset the WNC-Shield by pressing the Reset button. The firmware update process can take up to 10 minutes.
 
11.	Upon completion, the module automatically reboots and the new software version displays as: MPSS: M14A2A_Vxx.xx.xxxxxx APSS: M14A2A_Vxx.xx.xxxxxx
12.	Exit the Configuration Manager and power down the WNC-Shield by removing the USB cables. The Firmware has now been updated.

# DELETE ME

This is [an external link](https://starterkit.att.com/)

This is [a relative link to the README](../README.md)

This is a relative image link: ![Inline image test](../images/cellular-shield-firmware-upgrade/somelogo.png "My image title")

This is an external image link: ![External image test]("https://somedomain.com/someimage.png")
  

