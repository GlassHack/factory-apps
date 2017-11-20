.class Lcom/google/glass/setup/BaseSetupActivity$4;
.super Ljava/lang/Object;
.source "BaseSetupActivity.java"

# interfaces
.implements Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/BaseSetupActivity;->connectToWifi(Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/BaseSetupActivity;

.field final synthetic val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iput-object p2, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 404
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ASSOCIATE:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "s"

    .line 405
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "l"

    aput-object v7, v4, v5

    iget-object v7, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    .line 407
    invoke-static {v7}, Lcom/google/glass/setup/BaseSetupActivity;->access$700(Lcom/google/glass/setup/BaseSetupActivity;)Lcom/google/glass/time/Stopwatch;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v9

    const-string v7, "e"

    aput-object v7, v4, v10

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v8, v8, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    aput-object v8, v4, v7

    .line 405
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/google/glass/setup/BaseSetupActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connected to Wifi %s %s. Checking clock ..."

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-static {v3}, Lcom/google/glass/setup/BaseSetupActivity;->access$800(Lcom/google/glass/setup/BaseSetupActivity;)Lcom/google/glass/time/Stopwatch;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-static {v3}, Lcom/google/glass/setup/BaseSetupActivity;->access$700(Lcom/google/glass/setup/BaseSetupActivity;)Lcom/google/glass/time/Stopwatch;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    const/4 v6, 0x0

    .line 415
    .local v6, "sync":Z
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v1, v1, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v2, v2, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v3, v3, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->token:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v4, v4, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->btDeviceForPair:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 417
    return-void
.end method

.method public onConnectionFailed()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 388
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_WIFI_ASSOCIATE:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "s"

    .line 392
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "l"

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    .line 394
    invoke-static {v5}, Lcom/google/glass/setup/BaseSetupActivity;->access$700(Lcom/google/glass/setup/BaseSetupActivity;)Lcom/google/glass/time/Stopwatch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "e"

    aput-object v5, v4, v9

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v6, v6, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    aput-object v6, v4, v5

    .line 392
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/google/glass/setup/BaseSetupActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Could not connect to Wifi %s %s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-static {v3}, Lcom/google/glass/setup/BaseSetupActivity;->access$800(Lcom/google/glass/setup/BaseSetupActivity;)Lcom/google/glass/time/Stopwatch;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-static {v3}, Lcom/google/glass/setup/BaseSetupActivity;->access$700(Lcom/google/glass/setup/BaseSetupActivity;)Lcom/google/glass/time/Stopwatch;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    sget-object v1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->WIFI_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    .line 398
    invoke-virtual {v2}, Lcom/google/glass/setup/BaseSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->WIFI_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    iget v3, v3, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->errorTitleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    .line 399
    invoke-virtual {v3}, Lcom/google/glass/setup/BaseSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/setup/R$string;->error_message_check_wifi:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/setup/BaseSetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v6, v6, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->ssid:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
