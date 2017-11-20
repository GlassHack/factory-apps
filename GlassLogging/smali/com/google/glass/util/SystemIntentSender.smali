.class public final Lcom/google/glass/util/SystemIntentSender;
.super Lcom/google/glass/util/IntentSender;
.source "SystemIntentSender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/util/IntentSender;-><init>()V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "connection"    # Landroid/content/ServiceConnection;
    .param p4, "flags"    # I

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/glass/hidden/HiddenUserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/google/android/glass/hidden/HiddenContext;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/glass/hidden/HiddenUserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 58
    return-void
.end method

.method public sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/glass/hidden/HiddenUserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .prologue
    .line 75
    sget-object v2, Lcom/google/android/glass/hidden/HiddenUserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/glass/hidden/HiddenUserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 68
    return-void
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/glass/hidden/HiddenUserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {p1, p2, v0}, Lcom/google/android/glass/hidden/HiddenContext;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 26
    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 30
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 31
    return-void
.end method

.method public startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/glass/hidden/HiddenUserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {p1, p2, v0}, Lcom/google/android/glass/hidden/HiddenContext;->startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public stopService(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/glass/hidden/HiddenUserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {p1, p2, v0}, Lcom/google/android/glass/hidden/HiddenContext;->stopServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 53
    return-void
.end method
