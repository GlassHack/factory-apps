.class public Lcom/google/android/clockwork/settings/SettingsIntents;
.super Ljava/lang/Object;
.source "SettingsIntents.java"


# static fields
.field public static final ACTION_CHANGE_AIRPLANE_MODE:Ljava/lang/String; = "com.google.android.clockwork.settings.CHANGE_AIRPLANE_MODE"

.field public static final ACTION_CLEAR_LAST_CHOSEN_APP:Ljava/lang/String; = "com.google.android.clockwork.settings.ACTION_CLEAR_LAST_CHOSEN_APP"

.field public static final ACTION_CONFIGURE_DOZE:Ljava/lang/String; = "com.google.android.clockwork.settings.CONFIGURE_DOZE"

.field public static final ACTION_ENTER_RETAIL:Ljava/lang/String; = "com.google.android.clockwork.settings.ENTER_RETAIL"

.field public static final ACTION_LOCK_UPDATES:Ljava/lang/String; = "com.google.android.clockwork.settings.LOCK_UPDATES"

.field public static final ACTION_SET_24HOUR:Ljava/lang/String; = "com.google.android.clockwork.settings.SET_24HOUR"

.field public static final ACTION_SET_LAST_CHOSEN_APP:Ljava/lang/String; = "com.google.android.clockwork.settings.ACTION_SET_LAST_CHOSEN_APP"

.field public static final ACTION_SET_LOCALE:Ljava/lang/String; = "com.google.android.clockwork.settings.SET_LOCALE"

.field public static final ACTION_SET_TIME:Ljava/lang/String; = "com.google.android.clockwork.settings.SET_TIME"

.field public static final ACTION_SET_TIMEZONE:Ljava/lang/String; = "com.google.android.clockwork.settings.SET_TIMEZONE"

.field public static final ACTION_UNLOCK_UPDATES:Ljava/lang/String; = "com.google.android.clockwork.settings.UNLOCK_UPDATES"

.field public static final AIRPLANE_MODE_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field public static final CONFIG_CHOSEN_APPS_SERVICE:Landroid/content/ComponentName;

.field private static final CONFIG_DOZE_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field public static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field public static final EXTRA_CURRENT_TIME_MILLIS:Ljava/lang/String; = "currentTimeMillis"

.field public static final EXTRA_DOZE_DISABLED:Ljava/lang/String; = "dozeDisabled"

.field public static final EXTRA_IS_24_HOUR:Ljava/lang/String; = "is24Hour"

.field public static final EXTRA_LOCALE_COUNTRY:Ljava/lang/String; = "locale.country"

.field public static final EXTRA_LOCALE_LANGUAGE:Ljava/lang/String; = "locale.language"

.field public static final EXTRA_LOCALE_VARIANT:Ljava/lang/String; = "locale.variant"

.field public static final EXTRA_ORIGINAL_INTENT:Ljava/lang/String; = "originalIntent"

.field public static final EXTRA_PENDING_INTENT_KEY:Ljava/lang/String; = "pendingIntentKey"

.field public static final EXTRA_SENT_AT_TIME:Ljava/lang/String; = "sentAtTime"

.field public static final EXTRA_TIMEZONE:Ljava/lang/String; = "timezone"

.field private static final LOCALE_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field public static final RETAIL_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TIME_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field public static final UPDATE_LOCK_SERVICE_COMPONENT:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.wearable.settings"

    const-string v2, "com.google.android.clockwork.settings.TimeService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/clockwork/settings/SettingsIntents;->TIME_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 14
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.wearable.settings"

    const-string v2, "com.google.android.clockwork.settings.AirplaneModeService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/clockwork/settings/SettingsIntents;->AIRPLANE_MODE_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 18
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.wearable.settings"

    const-string v2, "com.google.android.apps.wearable.settings.LocaleService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/clockwork/settings/SettingsIntents;->LOCALE_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 22
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.wearable.settings"

    const-string v2, "com.google.android.clockwork.settings.ConfigureDozeService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/clockwork/settings/SettingsIntents;->CONFIG_DOZE_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 26
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.wearable.settings"

    const-string v2, "com.google.android.clockwork.settings.RetailService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/clockwork/settings/SettingsIntents;->RETAIL_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 30
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.wearable.settings"

    const-string v2, "com.google.android.clockwork.settings.UpdateLockHolderService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/clockwork/settings/SettingsIntents;->UPDATE_LOCK_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 34
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.wearable.settings"

    const-string v2, "com.google.android.clockwork.settings.ConfigureChosenAppsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/clockwork/settings/SettingsIntents;->CONFIG_CHOSEN_APPS_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBaseTimeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/clockwork/settings/SettingsIntents;->TIME_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getClearLastChosenAppIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "verificationIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.clockwork.settings.ACTION_CLEAR_LAST_CHOSEN_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/clockwork/settings/SettingsIntents;->CONFIG_CHOSEN_APPS_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pendingIntentKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "originalIntent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigureDozeIntent(Z)Landroid/content/Intent;
    .locals 2
    .param p0, "disableDoze"    # Z

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.clockwork.settings.CONFIGURE_DOZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/clockwork/settings/SettingsIntents;->CONFIG_DOZE_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dozeDisabled"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSetIs24HourIntent(Z)Landroid/content/Intent;
    .locals 2
    .param p0, "is24Hour"    # Z

    .prologue
    .line 90
    const-string v0, "com.google.android.clockwork.settings.SET_24HOUR"

    invoke-static {v0}, Lcom/google/android/clockwork/settings/SettingsIntents;->getBaseTimeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is24Hour"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSetLastChosenAppIntent(Landroid/content/Intent;Landroid/content/ComponentName;Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "verificationIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.clockwork.settings.ACTION_SET_LAST_CHOSEN_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/clockwork/settings/SettingsIntents;->CONFIG_CHOSEN_APPS_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pendingIntentKey"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "originalIntent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "componentName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSetLocaleIntent(Ljava/util/Locale;)Landroid/content/Intent;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.clockwork.settings.SET_LOCALE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/clockwork/settings/SettingsIntents;->LOCALE_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "locale.language"

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "locale.country"

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "locale.variant"

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSetTimeIntent(JJ)Landroid/content/Intent;
    .locals 2
    .param p0, "currentTimeMillis"    # J
    .param p2, "sentAtTime"    # J

    .prologue
    .line 80
    const-string v0, "com.google.android.clockwork.settings.SET_TIME"

    invoke-static {v0}, Lcom/google/android/clockwork/settings/SettingsIntents;->getBaseTimeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "currentTimeMillis"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sentAtTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSetTimeZoneIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "tz"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "com.google.android.clockwork.settings.SET_TIMEZONE"

    invoke-static {v0}, Lcom/google/android/clockwork/settings/SettingsIntents;->getBaseTimeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
