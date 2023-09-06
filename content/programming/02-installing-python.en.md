---
type: docs
authors: ["jnonino"]
courses: ["Programming"]
nav_weight: 2
title: "Installing Python"
description: "Python is a widely-used programming language for web development, data analysis, scientific computing, and much more. In this article, we'll guide you through the installation process of Python on three major operating systems: Linux, Mac, and Windows. Since Python is often pre-installed on many Linux and Mac systems, this guide also covers checking your existing version and upgrading if necessary."
date: 2023-03-09
tags: ["intro", "programming", "python", "install", "tools"]
---

## Linux

**Check Existing Version:**
Many Linux distributions come with Python pre-installed. To check the existing version, open the terminal and run:

{{< highlight bash >}}
python --version
{{</highlight >}}
or
{{< highlight bash >}}
python3 --version
{{</highlight >}}

**Installing Python 3 on Ubuntu:**
If Python 3 is not installed, you can run the following commands:

{{< highlight bash >}}
sudo apt update
sudo apt install python3
{{</highlight >}}

**Installing on Other Linux Distributions:**
For other distributions, you can refer to the package manager specific to your distribution, such as `yum` for CentOS or `zypper` for openSUSE.

## Mac

**Check Existing Version:**
MacOS usually comes with Python 2.7. To check the version, open Terminal and run:

{{< highlight bash >}}
python --version
{{</highlight >}}

**Installing Python 3 with Homebrew:**
You can install Python 3 using Homebrew by running:

{{< highlight bash >}}
brew install python3
{{</highlight >}}

**Downloading from the Official Website:**
You can also download Python from the [official Python website](https://www.python.org/downloads/mac-osx/), then follow the instructions to install it.

## Windows

**Downloading from the Official Website:**
1. Visit the [Python download page](https://www.python.org/downloads/windows/).
2. Download the latest version for Windows.
3. Run the installer.
4. Make sure to check the box next to "Add Python to PATH" during the installation process.
5. Follow the instructions to complete the installation.

**Verify Installation:**
Open the Command Prompt and run:

{{< highlight bash >}}
python --version
{{</highlight >}}
