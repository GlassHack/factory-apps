.class Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method private constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 3

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 346
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.COMPANION_PROPERTIES_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/RemoteCompanionProxy$1;)V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1800()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v3, "Got action: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    const-string v0, "com.google.glass.action.COMPANION_PROPERTIES_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-string v3, "com.google.glass.extra.COMPANION_WIFI_CONNECTED"

    .line 354
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 353
    invoke-static {v0, v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1602(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 355
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-string v3, "com.google.glass.extra.COMPANION_INTERACTIVE_STATE"

    .line 356
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 355
    invoke-static {v0, v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1702(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 357
    const-string v0, "com.google.glass.extra.COMPANION_FEATURES_ENABLED"

    invoke-virtual {p2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 358
    iget-object v5, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-wide/16 v6, 0x1

    and-long/2addr v6, v3

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v5, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1202(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 359
    iget-object v5, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const-wide/16 v6, 0x2

    and-long/2addr v3, v6

    cmp-long v0, v3, v8

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v5, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1302(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 360
    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v3, "Update companion app info isSmsEnabled = %s, isPhotoSyncEnabled = %s, isCompanionWifiConnected = %s isCompanionInteractiveState = %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 361
    invoke-static {v5}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1200(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 362
    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1300(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1600(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionPropertiesBroadcastReceiver;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$1700(Lcom/google/glass/companion/RemoteCompanionProxy;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    .line 360
    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 358
    goto :goto_0

    :cond_2
    move v0, v2

    .line 359
    goto :goto_1
.end method
