.class public Lcom/google/glass/settings/connectivity/ConnectivityStatusCardReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "ConnectivityStatusCardReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/settings/connectivity/ConnectivityStateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.google.glass.action.ACTION_SHOW_CONNECTIVITY_STATUS_CARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/nowtown/NowTownUtils;->isNowTownEnabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-static {p1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->show(Landroid/content/Context;)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 26
    :cond_2
    const-string v1, "com.google.glass.action.ACTION_HIDE_CONNECTIVITY_STATUS_CARD"

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/nowtown/NowTownUtils;->isNowTownEnabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {p1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->hide(Landroid/content/Context;)V

    goto :goto_0

    .line 32
    :cond_3
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/util/IntentSender;->stopService(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
