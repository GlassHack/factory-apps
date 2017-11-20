.class public Lcom/google/android/gsf/login/DevicePolicyActivatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyActivatedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    const-string v0, "com.google.android.apps.enterprise.dmagent.AUTO_REGISTRATION_FINISHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->cancelDevicePolicyNotification(Landroid/content/Context;)V

    .line 17
    :cond_0
    return-void
.end method
