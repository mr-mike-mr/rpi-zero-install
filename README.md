# RPI ZERO INSTALL

![image](https://i.imgur.com/arTjxHl.png)

## Content

- [RPI ZERO INSTALL](#rpi-zero-install)
  - [Content](#content)
  - [Introduction](#introduction)
  - [Installation](#installation)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
  - [Usage](#usage)

## Introduction

- My public install script for rpi zero.

## Installation

### Prerequisites

Before you begin, ensure you have met the following requirements:

- **Operating System**: Raspberry Pi OS Lite (32-bit)

### Setup

1. Clone the repository:

    ```bash
    git clone https://github.com/mr-mike-mr/rpi-zero-install.git
    cd rpi-zero-install
    ```

2. Edit the authorized_keys config:

    ```bash
    cd config
    vim authorized_keys
    ```

3. Edit the wpa_supplicant.conf config:

    ```bash
    cd config
    vim wpa_supplicant.conf
    ```

4. Run install script:

    ```bash
    sudo chmod +x install.sh
    bash install.sh
    ```

## Usage

To start installation:

```bash
cd rpi-zero-install
sudo chmod +x install.sh
bash install.sh
```

At the end, restart the system.
