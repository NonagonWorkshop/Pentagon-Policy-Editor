#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this script as root (sudo su)"
    exit
fi

echo "Welcome to Pentagon Policy Editor"
echo "by StarkMist111960"
echo "Policies from Star_destroyer11"
echo "Based on Rainestorme and associate's Pollen Policy Editor"

sleep 1

mkdir -p /etc/opt/chrome/policies/managed

echo '{
  "URLBlocklist": [],
  "SystemFeaturesDisableList": [],
  "EditBookmarksEnabled": true,
  "ChromeOsMultiProfileUserBehavior": "unrestricted",
  "DeveloperToolsAvailability": 1,
  "DefaultPopupsSetting": 1,
  "AllowDeletingBrowserHistory": true,
  "AllowDinosaurEasterEgg": true,
  "IncognitoModeAvailability": 0,
  "AllowScreenLock": true,
  "ExtensionAllowedTypes": null,
  "ExtensionInstallAllowlist": null,
  "ExtensionInstallBlocklist": null,
  "ExtensionInstallForcelist": ["haldlgldplgnggkjaafhelgiaglafanh;https://goguardian.com/ext/m.xml","jjfeehgdeghiknkilcildnjofkcndjcm;https://goguardian.com/licenses/update.php","bhdheahnajobgndecdbggfmcojekgdko;https://clients2.google.com/service/update2/crx"],
  "ExtensionSettings": null,
  "PasswordManagerEnabled": "true",
  "TaskManagerEndProcessEnabled": "true",
  "UptimeLimit": "null",
  "SystemTerminalSshAllowed": "true",
  "SystemTimezone": "",
  "IsolatedAppsDeveloperModeAllowed": "true",
  "ForceGoogleSafeSearch": "false",
  "ForceYouTubeRestrict": "0",
  "EasyUnlockAllowed": "true",
  "DisableSafeBrowsingProceedAnyway": "false",
  "DeviceAllowNewUsers": "true",
  "DevicePowerAdaptiveChargingEnabled": "true",
  "DeviceGuestModeEnabled": "true",
  "DeviceUnaffiliatedCrostiniAllowed": "true",
  "VirtualMachinesAllowed": "true",
  "CrostiniAllowed": "true",
  "DefaultCookiesSetting": "1",
  "VmManagementCliAllowed": "true",
  "WifiSyncAndroidAllowed": "true",
  "DeveloperToolsDisabled": "false",
  "DeveloperToolsAvailability": "1",
  "DeviceBlockDevmode": "false",
  "UserBorealisAllowed": "true",
  "InstantTetheringAllowed": "true",
  "NearbyShareAllowed": "true",
  "PinnedLauncherApps": "null",
  "PrintingEnabled": "true",
  "SmartLockSigninAllowed": "true",
  "PhoneHubAllowed": "true",
  "LacrosAvailability": "user_choice",
  "WallpaperImage": null,
  "ArcPolicy": {
    "playStoreMode": "ENABLED",
    "installType": "FORCE_INSTALLED",
    "playEmmApiInstallDisabled": false,
    "dpsInteractionsDisabled": false
  },
  "DnsOverHttpsMode": "automatic",
  "BrowserLabsEnabled": "true",
  "ChromeOsReleaseChannelDelegated": "true",
  "WallpaperImage": "null",
  "SafeSitesFilterBehavior": "0",
  "SafeBrowsingProtectionLevel": "0",
  "DownloadRestrictions": "0",
  "ProxyMode": "system",
  "ProxyServerMode": "system",
  "NetworkThrottlingEnabled": "false",
  "NetworkPredictionOptions": "0",
  "AllowedDomainsForApps": "",
  "DeviceUserAllowlist": ""
}' > /etc/opt/chrome/policies/managed/policy.json

echo "done"
echo "successfully applied, you may need to reload your policies or press Ctrl Shift q+q and then repeatedly reload policies before this works."
