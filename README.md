# Ritual Infernet Node - One Click Installation
![image](https://github.com/user-attachments/assets/aa775ac2-2a39-45e0-accc-4ebdde683d45)

#Hardware Requairement
![image](https://github.com/user-attachments/assets/c093deb6-3c29-481a-810b-3d46757f6ce1)

## Introduction
This repository provides an easy one-click installation script to set up the **Ritual Infernet Node**. The installation script automates the process, ensuring a smooth and error-free setup.

## Installation Guide

Follow these simple steps to install and run the **Ritual Infernet Node** on your server:

### 1. Download and Run the Installer
```bash
wget https://raw.githubusercontent.com/iqblq/ritual-infernet-node/main/install-ritual-node.sh
chmod +x install-ritual-node.sh
./install-ritual-node.sh
```

### 2. Enter Required Information
During the installation, you will be prompted to enter:
- **Wallet Address**
- **Private Key** (make sure to keep this secure)

### 3. Verify the Installation
After the installation is complete, you can verify that your node is running using:
```bash
docker ps
```
To check the logs, use:
```bash
docker logs infernet-node
```

---

Enjoy running your Ritual Infernet Node! 🚀

