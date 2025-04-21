# Replace Script for LMS Optimization

## Contents
  * [Description](#Description)
  * [Prerequisites](#Prerequisites)
  * [Mount External Disk](#Mount-External-Disk)
  * [Execution Permissions](#Execution-Permissions)
  * [Script Execution](#Script-Execution)

## Description
This repository contains a script to replace the `core_render.php` file with a new version to improve access times to the LMS for Quindío servers.

## Prerequisites
Ensure the external disk contains the `lms_php_replace_script` folder with the following files:
  - `core_render.php` (the new version of the file to replace)
  - `replace_script.sh` (the script to execute)

## Mount External Disk
The external disk containing the folder with the script `replace_script.sh` and the `core_render.php` file must be mounted at `/media/SSD`.

## Execution Permissions
Ensure the script `replace_script.sh` has the necessary execution permissions. Use the following commands to grant execution rights:

```
chmod +x replace_script.sh

chmod 755 replace_script.sh
```

## Script Execution
To execute the script, use the following command:

```
sudo ./replace_script.sh
```

Check the console output to confirm if the process completed successfully.