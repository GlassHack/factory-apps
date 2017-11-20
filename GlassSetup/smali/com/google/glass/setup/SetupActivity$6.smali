.class Lcom/google/glass/setup/SetupActivity$6;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupActivity;->onAccountSetupSucceeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupActivity;

.field final synthetic val$authUtils:Lcom/google/glass/auth/AuthUtils;

.field final synthetic val$btDeviceForPair:Ljava/lang/String;

.field final synthetic val$displayName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupActivity;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/auth/AuthUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    iput-object p2, p0, Lcom/google/glass/setup/SetupActivity$6;->val$displayName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/setup/SetupActivity$6;->val$btDeviceForPair:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/setup/SetupActivity$6;->val$authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.deviceadmin.SET_ADMIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/SetupActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 508
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v1, p0, Lcom/google/glass/setup/SetupActivity$6;->val$displayName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/setup/SetupActivity;->access$900(Lcom/google/glass/setup/SetupActivity;Ljava/lang/String;)V

    .line 515
    :cond_0
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Marking Glass as provisioned."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/util/SetupHelper;->setDeviceProvision(Landroid/content/Context;Z)V

    .line 519
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupActivity;->disableSetup()V

    .line 521
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v1, v0, Lcom/google/glass/setup/SetupActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SETUP_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$6;->val$btDeviceForPair:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "c"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/setup/SetupActivity$6$1;

    invoke-direct {v1, p0}, Lcom/google/glass/setup/SetupActivity$6$1;-><init>(Lcom/google/glass/setup/SetupActivity$6;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 581
    return-void

    .line 521
    :cond_1
    const-string v0, "w"

    goto :goto_0
.end method
