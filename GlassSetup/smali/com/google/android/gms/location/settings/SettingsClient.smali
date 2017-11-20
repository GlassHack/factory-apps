.class public Lcom/google/android/gms/location/settings/SettingsClient;
.super Ljava/lang/Object;


# static fields
.field public static final GOOGLE_LOCATION_SETTINGS:Ljava/lang/String; = "com.google.android.gms.location.settings.GOOGLE_LOCATION_SETTINGS"

.field public static final LOCATION_HISTORY_ACTION:Ljava/lang/String; = "com.google.android.gms.location.settings.LOCATION_HISTORY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v1, "GCoreLocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem while starting settings activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLocationHistoryIntent(Landroid/accounts/Account;)Landroid/content/Intent;
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.location.settings.LOCATION_HISTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static launchGoogleLocationSettings(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "com.google.android.gms.location.settings.GOOGLE_LOCATION_SETTINGS"

    invoke-static {p0, v0}, Lcom/google/android/gms/location/settings/SettingsClient;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
