
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
  "ChromeOsMultiProfileUserBehavior": "unrestricted",
  "DeveloperToolsAvailability": 1,
  "AllowDeletingBrowserHistory": true,
  "IncognitoModeAvailability": 0,
  "ForceYouTubeRestrict": 0,
  "ForceGoogleSafeSearch": false,
  "SecondaryGoogleAccountSigninAllowed": true,
  "AllowDinosaurEasterEgg": true,
  "CACertificateManagementAllowed": 0,
  "ClientCertificateManagementAllowed": 0,
  "CrostiniAllowed": true,
  "CrostiniExportImportUIAllowed": true,
  "CrostiniPortForwardingAllowed": true,
  "DeviceAllowNewUsers": true, 
  "ExternalStorageDisabled": false,
  "ExternalStorageReadOnly": false,
  "LacrosAvailability": "user_choice",
  "LacrosSecondaryProfilesAllowed": true,
  "AllowScreenLock": true,
  "PhoneHubAllowed": true,
  "SmsMessagesAllowed": true,
  "WifiSyncAndroidAllowed": true,
  "NetworkFileSharesAllowed": true,
  "TaskManagerEndProcessEnabled": true,
  "SystemTerminalSshAllowed": true,
  "VmManagementCliAllowed": true,
  "DownloadRestrictions": 0,
  "TrashEnabled": true,
  "DriveDisabled": false,
  "DriveDisabledOverCellular": false,
  "ArcEnabled": true,
  "URLAllowlist": null,
  "AllowedDomainsForApps": null,
  "AllowedLanguages": null,
  "BlockThirdPartyCookies": null,
  "DefaultCookiesSetting": 1,
  "CookiesBlockedForUrls": null,
  "CookiesAllowedForUrls": null,
  "ExtensionManifestV2Availability": 2,
  "ExtensionAllowedTypes": null,
  "ExtensionInstallAllowlist": null,
  "ExtensionInstallBlocklist": null,
  "CloudExtensionRequestEnabled": null,
  "PinnedLauncherApps": null,
  "BookmarkBarEnabled": null,
  "LidCloseAction": null,
  "ChromeOsLockOnIdleSuspend": null,
  "PowerManagementIdleSettings": null,
  "ShowFullUrlsInAddressBar": null,
  "HomepageIsNewTabPage": null,
  "HomepageLocation": null,
  "ShowHomeButton": null,
  "EnableSyncConsent": null,
  "PaymentMethodQueryEnabled": null,
  "SafeSitesFilterBehavior": null,
  "SafeBrowsingProtectionLevel": null,
  "ProxySettings": null,
  "DefaultClipboardSetting": null,
  "ClipboardAllowedForUrls": null,
  "ClipboardBlockedForUrls": null,
  "DefaultImagesSetting": null,
  "DefaultInsecureContentSetting": null,
  "DefaultJavaScriptSetting": null,
  "DefaultJavaScriptJitSetting": null,
  "DefaultNotificationsSetting": null,
  "DefaultPopupsSetting": null,
  "DefaultGeolocationSetting": 3,
  "RestoreOnStartup": null,
  "RestoreOnStartupURLs": null,
  "DefaultDownloadDirectory": null,
  "DownloadDirectory": null,
  "DownloadBubbleEnabled": null,
  "OsColorMode": "dark",
  "ArcPolicy": null,
  "ReportArcStatusEnabled": false,
  "ArcAppInstallEventLoggingEnabled": false,
  "InstantTetheringAllowed": true,
  "SmartLockSigninAllowed": true,
  "NearbyShareAllowed": true,
  "UptimeLimit": null,
  "EasyUnlockAllowed": true,
  "EmojiSuggestionEnabled": null,
  "PasswordManagerEnabled": true,
  "ProxyMode": null,
  "IsolatedAppsDeveloperModeAllowed": true,
  "PinUnlockAutosubmitEnabled": true,
  "WebAppInstallForceList": null,
  "UserAvatarCustomizationSelectorsEnabled": true,
  "DnsOverHttpsMode": null,
  "EditBookmarksEnabled": true,
  "JavaScriptBlockedForUrls": [],
  "ReportDeviceBootMode": false,
  "DeviceBlockDevmode": false
}' > /etc/opt/chrome/policies/managed/policy.json

echo "done"
echo "successfully applied, you may need to reload your policies or press Ctrl Shift q+q and then repeatedly reload policies before this works."
