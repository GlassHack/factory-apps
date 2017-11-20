.class final Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "CompanionLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompanionAppConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field private final handler:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

.field private final receiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)V
    .locals 3
    .param p2, "handler"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    .line 514
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    .line 509
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "companionAppConnectivityReceiver"

    .line 508
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;->receiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 515
    iput-object p2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;->handler:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    .line 516
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;
    .param p3, "x2"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$1;

    .prologue
    .line 505
    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;->receiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 520
    const-string v1, "com.google.glass.extra.STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 521
    .local v0, "companionState":Z
    if-eqz v0, :cond_0

    .line 522
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;->handler:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->companionAppConnected()V

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;->handler:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->companionAppDisconnected()V

    goto :goto_0
.end method
