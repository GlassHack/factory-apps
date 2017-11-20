.class Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "RemoteCompanionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/RemoteCompanionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompanionPropertiesBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method private constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 3

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 412
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.COMPANION_PROPERTIES_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/RemoteCompanionProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/companion/RemoteCompanionProxy;
    .param p2, "x1"    # Lcom/google/glass/companion/RemoteCompanionProxy$1;

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 438
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1800()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v6, "Got action: %s"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-interface {v3, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    const-string v3, "com.google.glass.action.COMPANION_PROPERTIES_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-string v6, "com.google.glass.extra.COMPANION_WIFI_CONNECTED"

    .line 420
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 419
    invoke-static {v3, v6}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1602(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 421
    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-string v6, "com.google.glass.extra.COMPANION_INTERACTIVE_STATE"

    .line 422
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 421
    invoke-static {v3, v6}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1702(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 423
    const-string v3, "com.google.glass.extra.EXTRA_COMPANION_GPS_ENABLED"

    .line 424
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 426
    .local v2, "isRemoteGpsEnabled":Z
    const-string v3, "com.google.glass.extra.COMPANION_FEATURES_ENABLED"

    invoke-virtual {p2, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 427
    .local v0, "enableBits":J
    iget-object v6, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-wide/16 v8, 0x1

    and-long/2addr v8, v0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1202(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 428
    iget-object v6, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-wide/16 v8, 0x2

    and-long/2addr v8, v0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v6, v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1302(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 429
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v6, "Update companion app info isSmsEnabled = %s, isPhotoSyncEnabled = %s, isCompanionWifiConnected = %s, isCompanionInteractiveState = %s, isRemoteGpsEnabled = %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 431
    invoke-static {v8}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1200(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v5, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v5}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1300(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v5}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1600(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 432
    invoke-static {v5}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1700(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v7, v4

    .line 429
    invoke-interface {v3, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    .end local v0    # "enableBits":J
    .end local v2    # "isRemoteGpsEnabled":Z
    :cond_0
    return-void

    .restart local v0    # "enableBits":J
    .restart local v2    # "isRemoteGpsEnabled":Z
    :cond_1
    move v3, v5

    .line 427
    goto :goto_0

    :cond_2
    move v3, v5

    .line 428
    goto :goto_1
.end method
