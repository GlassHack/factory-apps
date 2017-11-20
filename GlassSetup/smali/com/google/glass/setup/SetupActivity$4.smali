.class Lcom/google/glass/setup/SetupActivity$4;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupActivity;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupActivity;Landroid/content/Intent;Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/glass/setup/SetupActivity$4;->this$0:Lcom/google/glass/setup/SetupActivity;

    iput-object p2, p0, Lcom/google/glass/setup/SetupActivity$4;->val$data:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/glass/setup/SetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 355
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connected to Wifi, Adding account"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$4;->val$data:Landroid/content/Intent;

    const-string v1, "sync"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 357
    .local v5, "sync":Z
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "sync == %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$4;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v1, p0, Lcom/google/glass/setup/SetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v1, v1, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/setup/SetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v2, v2, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/setup/SetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v3, v3, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->token:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/setup/SetupActivity$4;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v4, v4, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->btDeviceForPair:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/setup/SetupActivity;->handleSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 360
    return-void
.end method

.method public onConnectionFailed()V
    .locals 3

    .prologue
    .line 350
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to connect to Wifi"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    return-void
.end method
