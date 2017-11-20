.class public Lcom/google/android/gsf/settings/GoogleLocationSettings;
.super Ljava/lang/Object;
.source "GoogleLocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/settings/GoogleLocationSettings$LocationSettingsChangedListener;
    }
.end annotation


# direct methods
.method static copyPackagePrefixLists(Landroid/content/ContentResolver;Z)V
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "useLocationForServices"    # Z

    .prologue
    .line 58
    const-string v4, "locationPackagePrefixBlacklist"

    invoke-static {p0, v4}, Lcom/google/android/gsf/settings/GoogleLocationSettings;->getSecureSettingOrEmpty(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "oldBlackList":Ljava/lang/String;
    const-string v4, "locationPackagePrefixWhitelist"

    invoke-static {p0, v4}, Lcom/google/android/gsf/settings/GoogleLocationSettings;->getSecureSettingOrEmpty(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "oldWhiteList":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 61
    const-string v4, "masterLocationPackagePrefixBlacklist"

    invoke-static {p0, v4}, Lcom/google/android/gsf/settings/GoogleLocationSettings;->getSecureSettingOrEmpty(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "blackList":Ljava/lang/String;
    const-string v4, "masterLocationPackagePrefixWhitelist"

    invoke-static {p0, v4}, Lcom/google/android/gsf/settings/GoogleLocationSettings;->getSecureSettingOrEmpty(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "whiteList":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    const-string v4, "locationPackagePrefixBlacklist"

    invoke-static {p0, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 67
    const-string v4, "locationPackagePrefixWhitelist"

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    .end local v0    # "blackList":Ljava/lang/String;
    .end local v3    # "whiteList":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    const-string v4, "locationPackagePrefixBlacklist"

    const-string v5, ""

    invoke-static {p0, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    const-string v4, "locationPackagePrefixWhitelist"

    const-string v5, ""

    invoke-static {p0, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static getSecureSettingOrEmpty(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
