CreamAPI (v4) - A Legit DLC Unlocker (v4.5.0.0 Hotfix)
-------------------------------------------
Features:
+++++++++
- The ability to unlock all DLCs on legit steam
- Support for the all known SteamApps versions (2 to 8)
- Support for the all known SteamUser versions (9 to 20)
- Support for the games that are making the use of steamclient(64).dll

Installation (x86):
++++++++++++++++++++
- Download and extract the DLC you want
- Rename the original steam_api.dll to steam_api_o.dll
- Copy steam_api.dll and cream_api.ini to the game folder *
- Configure cream_api.ini (see "Confuguration notes" below)
- Enjoy

Installation (x64):
++++++++++++++++++++
- Download and extract the DLC you want
- Rename the original steam_api64.dll to steam_api64_o.dll
- Copy steam_api64.dll and cream_api.ini to the game folder *
- Configure cream_api.ini (see "Confuguration notes" below)
- Enjoy

* It's possible to choose between the logger CreamAPI version (features the ability to log for the installed DLCs) that is located in log_build folder and the non-logger one that is located in nonlog_build folder.

Configuration notes:
++++++++++++++++++++
- Some games do have a special check of steam_api.dll/steam_api64.dll, so if it's modified, game won't start anymore (e.g. Magicka)(also some games are checking if there is an *.ini file inside the directory).
  In order to be able to play such games with unlocker, you should set the "extraprotection" option to "true".
  Keep in mind that some games still won't work (e.g. Serious Sam HD: TFE/TSE) if they have more custom checks then expected.
- Some games do support the automatic DLC unlock, so then you can put : unlockall = true and every DLC will be unlocked

**** Changelog ****

v4.5.0.0 Hotfix:
- Fixed the "unlockall" option

v4.5.0.0:
- Added support for the latest Steamworks SDK v1.50 (API version: 6.6.99.59)
- Changed the method to get the specific function pointer
- Fixed the interface reader function
- Fixed a crash in some games

v4.4.0.0:
- Added a full UTF-8 support
- Added missing SteamAPI exports
- Enhanced log formatting
- Removed the broken stuff for Monster Hunter World (a special CreamAPI version coming soon)

v4.3.1.0:
- Added support for the "GetInstalledDepots" function (required to unlock Halo DLC)
- Added a check for the full path size
- Extended "extraprotection" system for Monster Hunter World

v4.3.0.0:
- Added support for the latest Steamworks SDK v1.48 (API version: 5.69.73.98)
- Fixed an issue when the game could either crash or hang when attempting to call Steam gameserver functions (Hearts of Iron IV works again)
- Minor additions to the "extraprotection" system
- Minor additions to the logging library

v4.2.1.0:
- Extended "extraprotection" system
- Fixed minor bugs

v4.2.0.0:
- Added support for the latest Steamworks SDK v1.47 (API version: 5.53.33.78)
- Fixed the crash when using "unlockall" option (matters when using the newest Steam UI)
- Initial code preparations for the Linux support (coming soon)

v4.1.1.0 Hotfix:
- Fixed the incorrect SteamApps interface pointer for the older games

v4.1.1.0:
- Fixed the "language" option
- Fixed the incorrect pointers inside the function "SteamInternal_FindOrCreateUserInterface"
- Other minor bugfixes

v4.1.0.0:
- Added support for the latest Steamworks SDK v1.46 (API version: 5.25.65.21)
- "unlockall" option now properly fetches the DLC info from Steam servers (keep in mind that "[dlc]" section should NOT be filled when using this option)
- Tiny code improvements

v4.0.0.0:
- Unlocker code has been completely revamped (Hello C++17)
- Loader is now completely different
- Added support for the latest Steamworks SDK v1.44 (API version: 4.95.20.30)
- The logger library has been replaced with a smaller one
- Removed [steam_wrapper], [dlc_installdirs] and [steam_ugc] sections (yes, no more support for the wrapper functionality. Please, do not ask why)
- Removed the following options: "installdir", "dlcasinstalldir", "disableutilsinterface", "disableregisterinterfacefuncs", "unlockparentalrestrictions", "steamid", "signaturebypass", "printbacktrace"

v3.4.1.0:

- Added "disableregisterinterfacefuncs" option (setting this option to "true", makes Injustice 2 working again) 
- Removed "callbackstype" option
- Fixed a few internal callback functions and exports (thx to Painter)
- Other minor bugfixes

v3.4.0.0:

- Added "saveindirectory", "forcefullsavepath" and "callbackstype" options
- Enhanced internal log formatting
- Fixed the issue when the internal callbacks system blocked some major multiplayer functions including leaderboards (Tekken 7, Injustice 2, Borderlands 2 etc)
- Fixed the memory overflow issue that could sometimes occur
- Fixed "g_pSteamClientGameServer" and "g_pSteamClientGameServer" pointers
- Fixed a few internal file storage functions
- Fixed a few internal callback functions
- Other minor bugfixes and enhancements

v3.3.0.0:

- Added new flat exports
- Added "achievementscount" option
- Enhanced the interface parsing system
- Refactored some code parts resulting in better optimization
- Fixed the crash on Civilization VI and LEGO Marver Super Heroes 2
- Fixed the issue when the internal callbacks system blocked some vital multiplayer functions
- Changed the default value for "purchasetimestamp" option
- Other minor bugfixes and enhancements

v3.2.0.0:

- Added UGC (workshop) support for wrapper mode
- Added [steam_ugc] section to handle subscribed workshop items
- Added "wrapperugc" and "printbacktrace" options
- Fixed the "installdir" option typo inside cream_api.ini (".\" to "..\")
- Interface finder system has been completely revamped (x2 times faster now)
- Fixed the crash on Sid Meier's Civilization V
- Fixed the crash on some games when using wrapper mode
- Minor fixes to the logging system (incl. formatting)
- Other minor bugfixes

v3.1.1.0:

- "extraprotection" has been completely revamped and supports even more games now (e.g. Injustice 2)
- Added "purchasetimestamp" and "disablecallbacks" options
- Removed "forceuserdatafolder" option
- Fixed some bad pointers to flat functions
- Fixed the unexpected crash on some games (Tekken 7, Mighty No. 9, Life is Strange, Naruto series)
- Fixed the issue with DLC not unlocking on NARUTO SHIPPUDEN Ultimate Ninja STORM 4
- Updated logging library
- Minor fixes to callbacks system

v3.1.0.0 Hotfix:

- Fixed the "language" option
- Fixed the crash on some games due to the SteamAPI_RegisterCallResult unexpected behavior

v3.1.0.0:

- Updated interfaces to the latest API version (4.4.91.85)
- Added ISteamParentalSettings interface support
- Added "SteamGameServerInternal_CreateInterface", "SteamInternal_GlobalContextGameServerPtr", "g_pSteamClientGameServer_Latest" exports
- Added "dlcasinstalldir", "unlockparentalrestrictions", "steamid", "signaturebypass" options
- Added [dlc_installdirs] section to handle DLC installation directories
- Some options are now located at [steam_misc] section
- The logging system now supports multithreading
- Fixed a few possible memory leaks
- Fixed error messages handler
- Fixed some pointers
- Minor code cleanups
- Minor bugfixes
- Improved/Extended callbacks manager (credits: Convery)
- Most of the internal storage functions were recoded with a usage of STL/modern filesystem library

v3.0.0.3 Hotfix:

- Fixed SteamInternal_CreateInterface pointer

v3.0.0.3:

- Added Steam flat exports
- Added two new options: "forceuserdatafolder", "lowviolence"
- Updated SteamClient017 interface
- Fixed the crash on multiple games (Killing Floor, Warhammer Vermintide)
- Enhanced the overall unlocker speed
- Minor bugfixes

v3.0.0.2:

- Added "disableuserinterface" and "disableutilsinterface" options
- Minor bugfixes

v3.0.0.1 Hotfix:

- Fixed the "language" option
- Fixed the dlcById function pointer in SteamApps v7 that caused a problem when unlocking some DLCs
- Changed a bit the logger format

v3.0.0.1:

- Added the "forceoffline" option
- Added the "storestatscallback" option
- Fixed the issue with the callbacks in some games
- Fixed the credits in both __README__EN__.txt and __README__RU__.txt
- Fixed some mistakes in the russian documentation (__README__RU__.txt) (thx Haoose)

v3.0.0.0:

- Unlocker code has been completely revamped
- Completely changed the DLC handling stuff (now it looks like that: dlc_id = dlc_description)
- Interfaces detection method is a lot faster now
- Now DLC can be properly unlocked in the following games: Shadow Warrior 1+2 (you might want to turn on Steam offline mode), Dead Rising 4, Naruto series
- Added the internal system of callbacks for the wrapper mode (credits: Painter and Tihiy)
- Added the internal storage/stats system for the wrapper mode (credits: Painter)
- Replaced the logger library (again, now it's fully threading-safe)
- Removed "extraprotectionlevel" option, now unlocker will determine it on it's own
- Removed "emudll", "loademu", "wrapperutils", "wrappercallbacks" keys

v2.0.0.7:

- Added [dlc_timestamp] section to handle DLC purchase date timestamp (unix format)
- Added russian documentation
- Extended "extraprotection" for the future purposes
- Replaced the logger library
- Added log and non-log CreamAPI builds
- Added support for 3.62.82.82 SteamAPI version
- Minor bugfixes

v2.0.0.6 Hotfix:

- Fixed the crash caused by the logger library
- "newappid" and "emudll" options are now in "steam_wrapper" section
- Added "language" option (optional)
- Added "loademu", "wrapperremotestorage", "wrapperuserstats", "wrapperutils" and "wrappercallbacks" options
- Added support for 3.45.58.40 SteamAPI version

v2.0.0.6:

- Code optimization
- Added the lightweight wrapper mode
- Added "extraprotectionlevel" option
- Fixed some incorrect pointers
- Improved the logger library
- Various bugfixes

v2.0.0.5:

- Rebased the code to get a proper interface version
- Fixed support for the new SteamAPI version
- Minor bugfixes  

v2.0.0.4:

- Added support for SteamApps v8 interface
- Added new SteamAPI exports
- Removed useless struct/flat exports
- Improved "extraprotection" (now Serious Sam 3 and The Talos Principle are also working)

v2.0.0.3 Hotfix:

- Fixed the bug when the "extraprotection" was not working for some games
- Improved the loading of configuration file

v2.0.0.3:

- Added support for the games that are checking for steam_api.dll/steam_api64.dll modification(s) ("extraprotection" option)
- Added cream_api.ini hiding ("extraprotection" option)
- Fixed minor bugs  

v2.0.0.2 Hotfix:

- Fixed the issue where the logger was created even if the value was set to "false"
- Changed the logger code
- Improved loading of the configuration file
- Added a check for "appid" option
- Added "orgapi" and "orgapi64" options 

v2.0.0.2:

- Added "appid" option
- Added [dlc_subscription] section
- Added "log" option to [steam] section
- Removed "subscribed" option
- Various bugfixes 

v2.0.0.1:

- Removed the SteamApps key from cream_api.ini (the SteamApps version is now parsed from the original file automatically)
- Removed the Language key from cream_api.ini (language is now parsed directly from steam application settings)
- Support for the games that are making the use of steamclient.dll
- Various bugfixes

v1.0.0.1 Hotfix:

- Fixed a bug with language option

deadmau5 (c) 2o16-2o21

****

special thanks for testing go to: machine4578, Christsnatcher, Rui, demde, Haoose, Lordw007, UberPsyX
special greetings go to: Bronco, Painter, Tihiy, Convery, SyntheticEthics
...and to all other people who remained partial to this project.

****

cs.rin.ru support page (eng-homepage): http://cs.rin.ru/forum/viewtopic.php?f=29&t=70576
antistarforce.com support page (rus): http://antistarforce.com/forum/131-17458-1

****
a tool to parse DLCs automatically: http://cs.rin.ru/forum/viewtopic.php?f=10&t=71837 (by Sak32009)