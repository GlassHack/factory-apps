.class public Lcom/google/android/gsf/settings/GoogleLocationSettings$LocationSettingsChangedListener;
.super Landroid/content/BroadcastReceiver;
.source "GoogleLocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/settings/GoogleLocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationSettingsChangedListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-static {p1}, Lcom/google/android/gsf/settings/GoogleLocationSettingHelper;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 91
    .local v1, "useLocationForServices":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, v1}, Lcom/google/android/gsf/settings/GoogleLocationSettings;->copyPackagePrefixLists(Landroid/content/ContentResolver;Z)V

    .line 93
    return-void

    .line 88
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "useLocationForServices":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
