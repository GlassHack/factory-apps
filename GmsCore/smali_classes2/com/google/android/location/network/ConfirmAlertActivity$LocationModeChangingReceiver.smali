.class public Lcom/google/android/location/network/ConfirmAlertActivity$LocationModeChangingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 210
    const-string v0, "CURRENT_MODE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/location/network/ConfirmAlertActivity;->a(I)I

    .line 212
    const-string v0, "NEW_MODE"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/location/network/ConfirmAlertActivity;->b(I)I

    .line 214
    return-void
.end method
