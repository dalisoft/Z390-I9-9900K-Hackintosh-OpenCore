# Z390-I9-9900K-Hackintosh-OpenCore

This EFI folder copy of my working OpenCore Hackintosh build.

It took my one week and it was very fun and challenging to get it working, finding fix by searching log stuck and more

**I do not provide any warranty nor support, use at your own risk**

![About macOS](./images/about.png)

## My BIOS settings

**DO NOT JUST COPY MY SETTINGS, IT MAY HURT YOUR PERFORMANCE OR CPU**

<https://github.com/dalisoft/guides/blob/master/computers/z390-i9-9900k-hackintosh.md>

## My build parts

| Name         | Model                            |
| ------------ | -------------------------------- |
| Motherboard  | Gigabyte Aorus Z390 Pro Wi-Fi    |
| CPU          | Intel Core i9-9900K              |
| CPU Cooler   | CM MasterLiquid 240ML            |
| GPU          | Sapphire Nitro RX 470 4GB        |
| Memory       | Crucial Ballistic 16GB 3000CL15  |
| SSD macOS    | Samsung 970 EVO 500GB            |
| SSD Work     | Samsung 970 EVO+ 500GB           |
| HDD          | Seagate 12TB (8+4)               |
| PSU          | CM 1200W Platinum                |
| Case         | Gamdias Athena M2 Elite          |
| KB+Mouse     | Logitech K470 (if wants VM)      |
| KB+Mouse     | 🍏 Magic Keyboard 2 + Trackpad 2 |
| Web-camera   | Logitech C920 FullHD             |
| Connectivity | Fenvi T919 1300Mbps              |
| Headset      | Edifier G4                       |
| Monitor 1    | Samsung U28E590D                 |
| Monitor 2    | LG 27UK850-W                     |

## Benchmark

| Name       | Link                                               |
| ---------- | -------------------------------------------------- |
| CPU        | <https://browser.geekbench.com/v5/cpu/18212261>    |
| dGPU Metal | <https://browser.geekbench.com/v5/compute/5757443> |
| iGPU Metal | <https://browser.geekbench.com/v5/compute/5757512> |

## Current issues

| Problem                                                                   | Refer Link                                                                   | Fix                                                                           |
| ------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| Bluetooth lags                                                            | [#1](https://github.com/dalisoft/Z390-I9-9900K-Hackintosh-OpenCore/issues/1) | No fix yet                                                                    |
| Entering to sleep takes 20-40 seconds                                     | -                                                                            | No fix yet                                                                    |
| Wake from sleep does not work by keyboard after `pmset` changing          | -                                                                            | [Fix](https://github.com/dalisoft/Z390-I9-9900K-Hackintosh-OpenCore/issues/2) |
| System stutters, micro-freeze and/or lags/delays                          | -                                                                            | No fix yet                                                                    |
| VP9@8k60 does not work on machine but it should as works in Windows 10/11 | -                                                                            | No fix yet                                                                    |

## Status

| Features               | Status      | Issues                                                                                                              |
| ---------------------- | ----------- | ------------------------------------------------------------------------------------------------------------------- |
| Ethernet               | Working     | -                                                                                                                   |
| Wi-Fi                  | Working     | -                                                                                                                   |
| Bluetooth              | Working     | Lagging, see [here](https://www.reddit.com/r/hackintosh/comments/yeaa2b/bluetooth_pane_is_lagging_with_entries_os/) |
| iGPU                   | Working     | -                                                                                                                   |
| dGPU + HW acceleration | Working     | -                                                                                                                   |
| On-board audio         | Working     | -                                                                                                                   |
| App Store              | Working     | -                                                                                                                   |
| iCloud                 | Working     | -                                                                                                                   |
| Shutdown / Restart     | Working     | -                                                                                                                   |
| USB                    | Working     | No issues, see **USBPorts kext**                                                                                    |
| Handoff                | Working     | -                                                                                                                   |
| Airdrop, AirPlay       | Working     | -                                                                                                                   |
| Continuity             | Working     | -                                                                                                                   |
| Apple TV+              | Working     | Sometimes it does not work, idk why?                                                                                |
| File Vault             | Not tested  | -                                                                                                                   |
| HDMI audio             | Not tested  | -                                                                                                                   |
| All DP/HDMI ports      | Not tested  | -                                                                                                                   |
| Dual monitor from boot | Not tested  | -                                                                                                                   |
| Apple Music / iTunes   | Not tested  | -                                                                                                                   |
| iMessage               | Not working | It does not work on my Macs                                                                                         |
| FaceTime               | Not working | Same as iMessage                                                                                                    |
| DRM                    | Not working | Tested in Safari (Netflix), on Chrome works                                                                         |
| Wake/Sleep             | Not working | Works but not properly, entering sleep takes 20-40 sec                                                              |
| Power Nap              | Not working | Disabled as workaround to fix wake-up itself                                                                        |
| Bluetooth lags         | Not fixed   | See **Bluetooth** link above                                                                                        |
| VP9@8K60               | Not working | It works fine on Windows 10/11                                                                                      |

## Prerequisite

Please understand all OpenCore configuration by reading [Configuration.pdf](https://github.com/acidanthera/OpenCorePkg/blob/0.5.9/Docs/Configuration.pdf)

## Guides

- Read over <https://dortania.github.io/>

### Tools

- [OpenCore Configurator](https://mackie100projects.altervista.org/download-opencore-configurator/)
- [PlistEdit Pro](https://www.fatcatsoftware.com/plisteditpro/) or [ProperTree](https://github.com/corpnewt/ProperTree)
- [GemSMBIOS](https://github.com/corpnewt/GenSMBIOS)
- [VDADecoder](https://github.com/cylonbrain/VDADecoderCheck)
- [MaciASL](https://github.com/acidanthera/MaciASL)
- [Hackintool](https://github.com/headkaze/Hackintool)

## Debug-mode enable

Just run `git apply debug.patch`, copy `config.plist` to your **EFI** folder and verbose mode will be enabled with additional tweaks.

## Useful Links

- <https://dortania.github.io/OpenCore-Post-Install/universal/security/applesecureboot.html>

## Hard-to-find threads

| Problem                      | Solved link                                                                                                         |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| Radeon Hardware Accelaration | <https://www.tonymacx86.com/threads/amd-radeon-rx-550-560-injected-with-opencore-macos-big-sur.306669/post-2331781> |
| Headless iGPU                | <https://www.tonymacx86.com/threads/guide-intel-uhd-graphics-630-coffee-lake-headless-mode-main-card.304000>        |
| Sleep-Wake fix???            | <https://www.tonymacx86.com/threads/sleep-with-fans-activated-and-leds-on.315430/>                                  |

## Similar OC EFI shared folders

- <https://github.com/extric99/Hackintosh-Gigabyte-Z390-GAMING-X-i9-9900k-5700XT>
- <https://github.com/blacklizard/gigabyte-z390-aorus-pro-wifi-hackintosh-opencore>
- <https://github.com/vanthanhtran245/z390-aorus-pro-wifi-hackintosh>
- <https://github.com/cmer/gigabyte-z390-aorus-master-hackintosh>
- <https://github.com/onmotion/hackintosh-z390d/blob/master/README.md>
- <https://github.com/kakabala/Gigabyte_Z390UD_9700F_OC0.62_Hackintosh>
- <https://github.com/OpenCore-Hackintoshs/OpenCore-Z390D-i9-9900K-iGPU>
- <https://github.com/czombos/asus-rog-strix-z390-i-gaming-hackintosh>
- <https://github.com/markuslohn/asus-rog-z390i-hackintosh>
- <https://github.com/idev1669/Hackintosh-Opencore-Z390-A>
- <https://github.com/zanderzhng/EFI_Asrock_Z390_Phantom_ITX_OC>
