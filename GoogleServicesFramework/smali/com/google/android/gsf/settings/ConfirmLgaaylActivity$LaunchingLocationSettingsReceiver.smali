.class public Lcom/google/android/gsf/settings/ConfirmLgaaylActivity$LaunchingLocationSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmLgaaylActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/settings/ConfirmLgaaylActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchingLocationSettingsReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/UseLocationForServices;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v1

    .line 98
    .local v1, "status":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gsf.GOOGLE_APPS_LOCATION_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "lgaayl":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    .end local v0    # "lgaayl":Landroid/content/Intent;
    :cond_0
    return-void
.end method
