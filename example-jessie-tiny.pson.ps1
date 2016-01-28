﻿@{
    Name = 'example-jessie-tiny-amd64';
    # Optional. Default: 360
    MemorySizeInMebibytes = 2048;

    # Optional. Default: $false
    #
    # It is best to use the "vagrant-vbguest" plug-in as this will install a
    # version of the guest additions that matches the version of VirtualBox:
    #     https://github.com/dotless-de/vagrant-vbguest
    #
    # If you do install the guest additions from the Debian repositories, then
    # it is best to prevent the "vagrant-vbguest" plug-in from trying to
    # upgrade the guest additions. Add the following to your "Vagrantfile":
    #     config.vbguest.no_install = true
    InstallGuestAddtions = $false;

    Disks = @(
        @{
            # Optional. Default: 4096
            SizeInMebibytes = 4096;
            # Optional. Default: <none>
            BiosBootPartitionName = 'grub';
            Partitions = @(
                @{
                    SizeInMebibytes = 2560;
                    Type = 'filesystem';
                    # Optional. Default: 'ext4'
                    FilesystemCode = 'ext4';
                    # Optional. Default: <none>
                    MountPoint = '/';
                    # Optional. Default: $false
                    IsBootable = $true;
                    # Optional. Default: <none>
                    PartitionName = 'jessie';
                    # Optional. Default: <none>
                    Label = 'jessie';
                },
                @{
                    SizeInMebibytes = 512;
                    Type = 'swap';
                    # Optional. Default: <none>
                    PartitionName = 'swap';
                },
                @{
                    SizeInMebibytes = 1021;
                    Type = 'empty';
                    # Optional. Default: <none>
                    PartitionName = 'empty';
                }
            );
        },
        @{
            # Optional. Default: 4096
            SizeInMebibytes = 4096;
        }
    );

    IsoUrl = 'http://cdimage.debian.org/debian-cd/8.3.0/amd64/iso-cd/debian-8.3.0-amd64-netinst.iso';
    IsoSha512 = '070db3644c39374fdc87fd3de51388dcc0e05b866eaf37f2193d1818f0128e938c42e4eb9f1de555741c143a51edee07903a33271fca2696a771e4ae5c868277';

    # Optional. Default: US
    CountryCode = 'US';
    # Optional. Default: en
    LanguageCode = 'en';
    # Optional. Default: UTF-8
    CharacterEncodingCode = 'UTF-8';

    # Optional. Default: us
    KeymapCode = 'us';

    # Optional. Default: GMT+0
    TimeZoneCode = 'GMT+0';

    # Optional. Default: true
    MustClockBeSynchronizedUsingNtp = 'true';

    # Optional. Default: true
    MustNonFreePackagesBeAvailable = 'true';

    # Optional. Default: <empty string>
    NamesOfAdditionalPackagesToInstall = 'less vim';

    # Optional. Default: false
    MustJoinPopularityContest = 'false';

    # Optional. Default: 'late_command.sh'
    PostInstallationScript = 'late_command.sh';
}
