# Scripts for support of project development in independent directories

This repository contains scripts that support creating and managing projects in independent project directories. These scripts work with the existing unmodified installations of IoTivity and IoTivity-lite. Currently, these scripts have only been tested on Linux systems using bash.

# Installation

To install all the scripts and changes to ~/.bashrc (and environment variables to be set on startup), just type the following command.

- curl https://openconnectivity.github.io/Project-Support-Scrips/install.sh | bash

This command will do a number of things:

- Clone the Project-Support-Scripts repository (which includes all the scripts). This repository includes several updated scripts (ending in "2") that support building projects in any directory. There are different versions of each script that are designed for IoTivity and IoTivity-lite. There is also a script to set up environment variables to support switching between different implementations of OCF (just IoTivity and IoTivity-lite for now).

# Set the Implementation of OCF to Use

To change the implementation of OCF to use, type the following command:

- set_ocf_version.sh \[iot \| iot-lite\]
- source ~/.bashrc

# Building and Running the Samples

A number of convenience scripts have been written to make the development cycle easier.
1. Run the following development cycle as needed
    1. create_project.sh project_name - create a new project and name it anything you want.
    2. This isn't a script, but you need to "cd project_name" to run all the other scripts.
    3. edit_input2.sh - edit the device description input file (<project name>.json) if necessary.
    4. gen2.sh - generate the code, introspection file, PICS file, and onboarding file from the device description file.
    5. build2.sh - compile and link everything
    6. edit_code2.sh - edit the server source code if necessary.
    7. reset2.sh - reset the sever to RFOTM by copying a fresh onboarding file
    8. run2.sh - run the currently compiled server in the appropriate directory
