# Fedora Media Writer on Windows

![Fedora Media Writer on macOS](/dist/screenshots/win_main.png)

## Running

Fedora Media Writer is a regular Windows application, you don't need any special tools or libraries to be able to run it on your computer.

### System configuration

The application has been developed for and tested on Windows 10. We officially support every release starting with Windows 7.

You need to have about 200MB of free memory (RAM) available. It will take about 70MB of space on your drive.

### Usage

Download the .exe installer from the [Releases](../../releases) section of this page or [getfedora.org](https://getfedora.org), then open it.

The application download from both mentioned sources should be signed, either by Martin Bříza or Dennis Gilmore. It should also not triggered any system warning screens.

### Known issues 

There are several issues or things that are known to need to be improved in the future:

* The GUI part of the application has to run as administrator - it does not request permission right before writing.

## Building

You can build Fedora Media Writer yourself. It has just a few dependencies and building it is a matter of just running two commands.

### Dependencies

* `Qt5` (`qtbase`, `qtdeclarative` and `qtquickcontrols`)

### Steps

You can use Qt Creator to build and work with the application. If not using that, the process is basically just these two commands you need to run inside the Fedora Media Writer source code directory:

```
qmake
make
```

### Crosscompilation

There is also the [build.sh](/dist/win/build.sh) script included that I use for building the installer for distribution on this site. It should do everything automatically if you're in Fedora. There are instructions on how to use it inside at the top of the file






0
