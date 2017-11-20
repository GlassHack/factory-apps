.class Lcom/google/glass/setup/SetupActivity$6$1;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/setup/SetupActivity$6;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/setup/SetupActivity$6;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/google/glass/setup/SetupActivity$6$1;->this$1:Lcom/google/glass/setup/SetupActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 532
    const/4 v2, 0x0

    .line 533
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/setup/SetupActivity$6$1;->this$1:Lcom/google/glass/setup/SetupActivity$6;

    iget-object v5, v5, Lcom/google/glass/setup/SetupActivity$6;->val$authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-interface {v5}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 534
    .local v1, "googleAccount":Landroid/accounts/Account;
    if-eqz v1, :cond_1

    .line 535
    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 540
    :goto_0
    iget-object v5, p0, Lcom/google/glass/setup/SetupActivity$6$1;->this$1:Lcom/google/glass/setup/SetupActivity$6;

    iget-object v5, v5, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    new-instance v6, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v7, p0, Lcom/google/glass/setup/SetupActivity$6$1;->this$1:Lcom/google/glass/setup/SetupActivity$6;

    iget-object v7, v7, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v8, p0, Lcom/google/glass/setup/SetupActivity$6$1;->this$1:Lcom/google/glass/setup/SetupActivity$6;

    iget-object v8, v8, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-virtual {v8}, Lcom/google/glass/setup/SetupActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v7, Lcom/google/glass/setup/R$string;->sign_in_succeeded:I

    .line 541
    invoke-virtual {v6, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    .line 542
    invoke-virtual {v6, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    sget v7, Lcom/google/glass/setup/R$drawable;->ic_done_150:I

    .line 543
    invoke-virtual {v6, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 544
    invoke-virtual {v6, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    .line 545
    invoke-virtual {v6, v9}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    .line 546
    invoke-virtual {v6, v9}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/google/glass/setup/SetupActivity$6$1$1;

    invoke-direct {v7, p0}, Lcom/google/glass/setup/SetupActivity$6$1$1;-><init>(Lcom/google/glass/setup/SetupActivity$6$1;)V

    .line 547
    invoke-virtual {v6, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    .line 563
    invoke-virtual {v6}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v6

    .line 540
    invoke-virtual {v5, v6}, Lcom/google/glass/setup/SetupActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 566
    iget-object v5, p0, Lcom/google/glass/setup/SetupActivity$6$1;->this$1:Lcom/google/glass/setup/SetupActivity$6;

    iget-object v5, v5, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.glass.setup.ACTION_SETUP_COMPLETE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/glass/setup/SetupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    iget-object v5, p0, Lcom/google/glass/setup/SetupActivity$6$1;->this$1:Lcom/google/glass/setup/SetupActivity$6;

    iget-object v5, v5, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    .line 570
    invoke-static {v5}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/setup/SetupApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v3

    .line 571
    .local v3, "proxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    invoke-virtual {v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 572
    new-instance v4, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v4}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    .line 573
    .local v4, "response":Lcom/google/glass/companion/Proto$GlassSetupResponse;
    invoke-virtual {v4, v9}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setSetupStatus(I)Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 574
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 575
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0, v4}, Lcom/google/glass/companion/Proto$Envelope;->setGlassSetupResponseG2C(Lcom/google/glass/companion/Proto$GlassSetupResponse;)Lcom/google/glass/companion/Proto$Envelope;

    .line 576
    invoke-virtual {v3, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 578
    .end local v0    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    .end local v4    # "response":Lcom/google/glass/companion/Proto$GlassSetupResponse;
    :cond_0
    iget-object v5, p0, Lcom/google/glass/setup/SetupActivity$6$1;->this$1:Lcom/google/glass/setup/SetupActivity$6;

    iget-object v5, v5, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v5, v5, Lcom/google/glass/setup/SetupActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->OOBE_SIGNED_IN_SUCCESSFUL:Lcom/google/glass/userevent/UserEventAction;

    iget-object v7, p0, Lcom/google/glass/setup/SetupActivity$6$1;->this$1:Lcom/google/glass/setup/SetupActivity$6;

    iget-object v7, v7, Lcom/google/glass/setup/SetupActivity$6;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v7, v7, Lcom/google/glass/setup/SetupActivity;->setupMethodToLog:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 579
    return-void

    .line 537
    .end local v3    # "proxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    :cond_1
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    goto/16 :goto_0
.end method
