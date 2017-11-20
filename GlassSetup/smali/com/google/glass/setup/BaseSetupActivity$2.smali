.class Lcom/google/glass/setup/BaseSetupActivity$2;
.super Ljava/lang/Object;
.source "BaseSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/BaseSetupActivity;->handleSetupAccountError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/BaseSetupActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$2;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 269
    iget-object v5, p0, Lcom/google/glass/setup/BaseSetupActivity$2;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    new-instance v6, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v7, p0, Lcom/google/glass/setup/BaseSetupActivity$2;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v8, p0, Lcom/google/glass/setup/BaseSetupActivity$2;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v8}, Lcom/google/glass/setup/BaseSetupActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v7, Lcom/google/glass/setup/R$string;->sign_in_failed:I

    .line 270
    invoke-virtual {v6, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    sget v7, Lcom/google/glass/setup/R$string;->sign_in_failed_rebooting_tips:I

    .line 271
    invoke-virtual {v6, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    sget v7, Lcom/google/glass/setup/R$drawable;->ic_warning_150:I

    .line 272
    invoke-virtual {v6, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 273
    invoke-virtual {v6, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    .line 274
    invoke-virtual {v6, v9}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    .line 275
    invoke-virtual {v6, v10}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    .line 276
    invoke-virtual {v6, v10}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    .line 277
    invoke-virtual {v6, v9}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    .line 278
    invoke-virtual {v6, v9}, Lcom/google/glass/widget/MessageDialog$Builder;->setDismissable(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    .line 279
    invoke-virtual {v6, v10}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v6

    .line 280
    invoke-virtual {v6}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v6

    .line 269
    invoke-virtual {v5, v6}, Lcom/google/glass/setup/BaseSetupActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 281
    iget-object v5, p0, Lcom/google/glass/setup/BaseSetupActivity$2;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-static {v5}, Lcom/google/glass/setup/BaseSetupActivity;->access$300(Lcom/google/glass/setup/BaseSetupActivity;)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v5, p0, Lcom/google/glass/setup/BaseSetupActivity$2;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v5, v5, Lcom/google/glass/setup/BaseSetupActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SETUP_ACCOUNT_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 287
    iget-object v5, p0, Lcom/google/glass/setup/BaseSetupActivity$2;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Lcom/google/glass/setup/BaseSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 288
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 289
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_0

    .line 290
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 291
    .local v0, "currentId":I
    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 292
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 293
    invoke-static {}, Lcom/google/glass/setup/BaseSetupActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Forgot network %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    .end local v0    # "currentId":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 299
    .local v1, "dialogStartTimeMs":J
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/setup/BaseSetupActivity$2;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v5, v6}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v5

    new-instance v6, Lcom/google/glass/setup/BaseSetupActivity$2$1;

    invoke-direct {v6, p0, v1, v2}, Lcom/google/glass/setup/BaseSetupActivity$2$1;-><init>(Lcom/google/glass/setup/BaseSetupActivity$2;J)V

    invoke-interface {v5, v6}, Lcom/google/glass/auth/AuthUtils;->deleteAllAccounts(Ljava/lang/Runnable;)V

    .line 318
    return-void

    .line 295
    .end local v1    # "dialogStartTimeMs":J
    :cond_0
    invoke-static {}, Lcom/google/glass/setup/BaseSetupActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "No network info to clear."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
