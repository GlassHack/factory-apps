.class public final Lcom/google/glass/setup/UpdateCredentialsActivity;
.super Lcom/google/glass/setup/BaseSetupActivity;
.source "UpdateCredentialsActivity.java"


# static fields
.field private static final UPDATE_CREDENTIALS_TIMEOUT_MS:J = 0x3a98L


# instance fields
.field private authUtils:Lcom/google/glass/auth/AuthUtils;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private updateCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/setup/BaseSetupActivity;-><init>()V

    .line 39
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 46
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 49
    new-instance v0, Lcom/google/glass/setup/UpdateCredentialsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/setup/UpdateCredentialsActivity$1;-><init>(Lcom/google/glass/setup/UpdateCredentialsActivity;)V

    iput-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->updateCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/setup/UpdateCredentialsActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/UpdateCredentialsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/setup/UpdateCredentialsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/UpdateCredentialsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/glass/setup/UpdateCredentialsActivity;->onFailure(I)V

    return-void
.end method

.method private onFailure(I)V
    .locals 3
    .param p1, "errorStringId"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to update credential."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    sget-object v0, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->UPDATE_CREDENTIAL_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/setup/UpdateCredentialsActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;I)V

    .line 181
    iget-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->ACCOUNT_RELOGIN:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private updateAccountCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No token found."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    sget v1, Lcom/google/glass/setup/R$string;->sign_in_failed:I

    invoke-direct {p0, v1}, Lcom/google/glass/setup/UpdateCredentialsActivity;->onFailure(I)V

    .line 122
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-interface {v1}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 96
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    sget v1, Lcom/google/glass/setup/R$string;->update_credential_failed_different_account_found:I

    invoke-direct {p0, v1}, Lcom/google/glass/setup/UpdateCredentialsActivity;->onFailure(I)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/setup/UpdateCredentialsActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/setup/UpdateCredentialsActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v2, Lcom/google/glass/setup/R$string;->signing_in:I

    .line 102
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/setup/R$drawable;->ic_person_50:I

    .line 103
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setDismissable(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    .line 101
    invoke-virtual {p0, v1}, Lcom/google/glass/setup/UpdateCredentialsActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 109
    iget-object v1, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Deleting all accounts"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->authUtils:Lcom/google/glass/auth/AuthUtils;

    new-instance v2, Lcom/google/glass/setup/UpdateCredentialsActivity$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/glass/setup/UpdateCredentialsActivity$2;-><init>(Lcom/google/glass/setup/UpdateCredentialsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/glass/auth/AuthUtils;->deleteAllAccounts(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected handleSetup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "btDeviceForPair"    # Ljava/lang/String;
    .param p5, "synchronous"    # Z

    .prologue
    .line 146
    invoke-direct {p0, p1, p3}, Lcom/google/glass/setup/UpdateCredentialsActivity;->updateAccountCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/google/glass/setup/BaseSetupActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->ACCOUNT_RELOGIN:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 78
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupFlowController;->getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;

    move-result-object v0

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$State;

    if-ne v0, v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/google/glass/setup/UpdateCredentialsActivity;->finish()V

    .line 134
    invoke-virtual {p0}, Lcom/google/glass/setup/UpdateCredentialsActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 138
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 140
    :goto_1
    return v0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    invoke-virtual {v0, p1}, Lcom/google/glass/setup/SetupFlowController;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/google/glass/setup/UpdateCredentialsActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0

    .line 140
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onLoginSucceeded(Ljava/lang/String;)V
    .locals 0
    .param p1, "btDeviceForPair"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/glass/setup/UpdateCredentialsActivity;->onSuccess()V

    .line 127
    return-void
.end method

.method protected onResumeInternal()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/glass/setup/BaseSetupActivity;->onResumeInternal()V

    .line 83
    iget-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->setupFlowController:Lcom/google/glass/setup/SetupFlowController;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 85
    return-void
.end method

.method onSuccess()V
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 151
    new-instance v3, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/setup/UpdateCredentialsActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v4, Lcom/google/glass/setup/R$string;->sign_in_succeeded:I

    .line 152
    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget v4, Lcom/google/glass/setup/R$drawable;->ic_done_150:I

    .line 153
    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 154
    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    .line 155
    invoke-virtual {v3, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    .line 156
    invoke-virtual {v3, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/glass/setup/UpdateCredentialsActivity$3;

    invoke-direct {v4, p0}, Lcom/google/glass/setup/UpdateCredentialsActivity$3;-><init>(Lcom/google/glass/setup/UpdateCredentialsActivity;)V

    .line 157
    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v3

    .line 151
    invoke-virtual {p0, v3}, Lcom/google/glass/setup/UpdateCredentialsActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 166
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/glass/setup/AuthErrorService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/google/glass/setup/UpdateCredentialsActivity;->stopService(Landroid/content/Intent;)Z

    .line 167
    iget-object v3, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->ACCOUNT_RELOGIN:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 168
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/setup/SetupApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v1

    .line 169
    .local v1, "proxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    new-instance v2, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v2}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    .line 171
    .local v2, "response":Lcom/google/glass/companion/Proto$GlassSetupResponse;
    invoke-virtual {v2, v6}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setSetupStatus(I)Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 172
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 173
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0, v2}, Lcom/google/glass/companion/Proto$Envelope;->setGlassSetupResponseG2C(Lcom/google/glass/companion/Proto$GlassSetupResponse;)Lcom/google/glass/companion/Proto$Envelope;

    .line 174
    invoke-virtual {v1, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 176
    .end local v0    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    .end local v2    # "response":Lcom/google/glass/companion/Proto$GlassSetupResponse;
    :cond_0
    return-void
.end method

.method setAuthUtilsForTest(Lcom/google/glass/auth/AuthUtils;)V
    .locals 0
    .param p1, "authUtils"    # Lcom/google/glass/auth/AuthUtils;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 188
    iput-object p1, p0, Lcom/google/glass/setup/UpdateCredentialsActivity;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 189
    return-void
.end method
