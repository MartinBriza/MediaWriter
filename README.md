# Fedora Media Writer

Fedora Media Writer is a tool that helps users put Fedora images on their portable drives such as flash disks.

It is able to automatically download the required image for them and write them in a `dd`-like fashion, using either `dd` itself or some other way to access the drive directly.

This overwrites the drive's partition layout though so it also provides a way to restore a single-partition layout with a FAT32 partition.

![Fedora Media Writer running, with expanded image list](/dist/screenshots/linux_main.png)

## Troubleshooting

If you experience any problem with the application, like crashes or errors when writing to your drives, please open an issue here on Github.

Please don't forget to attach the FedoraMediaWriter.log file that will appear in your Documents folder ($HOME/Documents on Linux and Mac, C:\Users\<user>\Documents). It contains some non-sensitive information about your system and the log of all events happening during the runtime.

## Building

You can build FMW using the default Qt `qmake` build system.

### Linux

#### Install Build Dependencies

You will need to install some dependency packages on your system in order to build MediaWriter.
The package names vary depending on distribution.

##### Ubuntu

    sudo apt install liblzma-dev qt5-default qtdeclarative5-dev qml-module-qtquick-dialogs qml-module-qtquick-controls

#### Build the Binary

##### Set the Prefix

You should specify the target directory using the `PREFIX` `qmake` variable. The default prefix path is `/usr/local`

It can be done like this:

    qmake PREFIX=/usr .

The main binary, `mediawriter`, will be written to `$PREFIX/bin` and the helper binary can be found on the path `$PREFIX/libexec/mediawriter/helper`.

##### Build and Install

Generate a `Makefile` using the `qmake` tool:

    qmake

Build the `Makefile`:

    make

Install under [prefix location](#settings-the-prefix):

    sudo make install

#### Requirements

* `udisks2` or `storaged`
* `xz-libs`

### Windows

Building FMW in Windows is just the matter of running `qmake` and `make`.

To create a standalone package, use the `windeployqt` tool, included in your Qt installation. You will probably have to include a bunch of not included DLLs.

#### Requirements

* `xz-libs`

### macOS

Again, you can just run `qmake` and `make`.

To release a standalone package, use `macdeployqt`, supplied with your Qt installation.

#### Requirements

* `xz-libs`

## Translation

If you want to help with translating Fedora Media Writer, please visit our [Zanata project page](https://fedora.zanata.org/iteration/view/mediawriter/master).

Information about the individual Fedora flavors is retrieved from the websites and translated as a separate project.

## Other information

For details about cryptography, see [CRYPTOGRAPHY.md](CRYPTOGRAPHY.md).

Some brief privacy information (regarding User-Agent strings) is in [PRIVACY.md](PRIVACY.md).
