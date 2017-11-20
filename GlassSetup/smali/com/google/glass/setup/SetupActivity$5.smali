.class Lcom/google/glass/setup/SetupActivity$5;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupActivity;->setupUserAccount(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupActivity;

.field final synthetic val$btDeviceForPair:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/google/glass/setup/SetupActivity$5;->this$0:Lcom/google/glass/setup/SetupActivity;

    iput-object p2, p0, Lcom/google/glass/setup/SetupActivity$5;->val$btDeviceForPair:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 438
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to setup user account: cancel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$5;->this$0:Lcom/google/glass/setup/SetupActivity;

    sget-object v1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_FATAL_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/SetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;)V

    .line 440
    return-void
.end method

.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 5
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 444
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->NETWORK_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v0, p1}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$5;->this$0:Lcom/google/glass/setup/SetupActivity;

    .line 445
    invoke-static {v0}, Lcom/google/glass/setup/SetupActivity;->access$600(Lcom/google/glass/setup/SetupActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$5;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/SetupActivity;->access$608(Lcom/google/glass/setup/SetupActivity;)I

    .line 447
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "No response from server on attempt: %s; trying again."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/setup/SetupActivity$5;->this$0:Lcom/google/glass/setup/SetupActivity;

    .line 448
    invoke-static {v3}, Lcom/google/glass/setup/SetupActivity;->access$600(Lcom/google/glass/setup/SetupActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 447
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$5;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v1, p0, Lcom/google/glass/setup/SetupActivity$5;->val$btDeviceForPair:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/setup/SetupActivity;->access$700(Lcom/google/glass/setup/SetupActivity;Ljava/lang/String;)V

    .line 454
    :goto_0
    return-void

    .line 451
    :cond_0
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to setup user account: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$5;->this$0:Lcom/google/glass/setup/SetupActivity;

    sget-object v1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_FATAL_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/SetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;)V
    .locals 5
    .param p1, "responseProto"    # Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    .prologue
    const/4 v4, 0x0

    .line 458
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->hasLockCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.STORE_RECOVERY_CODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, "storeCode":Landroid/content/Intent;
    const-string v1, "RECOVERY_CODE"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->getLockCode()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 461
    const-string v1, "com.google.glass.lockrecovery"

    const-string v2, "com.google.glass.lockrecovery.RecoveryCodeReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Sending request to store lock code: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    iget-object v1, p0, Lcom/google/glass/setup/SetupActivity$5;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/setup/SetupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    .end local v0    # "storeCode":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/google/glass/setup/SetupActivity$5;->this$0:Lcom/google/glass/setup/SetupActivity;

    .line 470
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/setup/SetupActivity$5;->val$btDeviceForPair:Ljava/lang/String;

    .line 469
    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/setup/SetupActivity;->access$800(Lcom/google/glass/setup/SetupActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void

    .line 465
    :cond_0
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Lock code not present in server serponse! Aborting setup."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    iget-object v1, p0, Lcom/google/glass/setup/SetupActivity$5;->this$0:Lcom/google/glass/setup/SetupActivity;

    sget-object v2, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_FATAL_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    invoke-virtual {v1, v2}, Lcom/google/glass/setup/SetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 435
    check-cast p1, Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/setup/SetupActivity$5;->onSuccess(Lcom/google/googlex/glass/common/proto/SetupNano$SetupUserAccountResponse;)V

    return-void
.end method
