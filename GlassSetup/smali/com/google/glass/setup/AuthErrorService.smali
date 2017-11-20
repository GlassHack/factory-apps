.class public Lcom/google/glass/setup/AuthErrorService;
.super Landroid/app/Service;
.source "AuthErrorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private authUtils:Lcom/google/glass/auth/AuthUtils;

.field private credentialUpdateRequested:Z

.field private final glassSetupRequestReceiver:Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;

.field private handler:Landroid/os/Handler;

.field private liveCard:Lcom/google/glass/setup/ReloginLiveCard;

.field private liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

.field private remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/AuthErrorService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/setup/AuthErrorService;->credentialUpdateRequested:Z

    .line 44
    new-instance v0, Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;-><init>(Lcom/google/glass/setup/AuthErrorService;Lcom/google/glass/setup/AuthErrorService$1;)V

    iput-object v0, p0, Lcom/google/glass/setup/AuthErrorService;->glassSetupRequestReceiver:Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;

    .line 186
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/setup/AuthErrorService;)Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/AuthErrorService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService;->glassSetupRequestReceiver:Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/setup/AuthErrorService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/setup/AuthErrorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/AuthErrorService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/setup/AuthErrorService;->showLiveCard()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/setup/AuthErrorService;)Lcom/google/glass/auth/AuthUtils;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/AuthErrorService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService;->authUtils:Lcom/google/glass/auth/AuthUtils;

    return-object v0
.end method

.method private requestCredentialUpdateSilently()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 62
    iget-object v5, p0, Lcom/google/glass/setup/AuthErrorService;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v5}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v1

    .line 63
    .local v1, "isConnected":Z
    iget-object v5, p0, Lcom/google/glass/setup/AuthErrorService;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 64
    invoke-virtual {v5}, Lcom/google/glass/companion/RemoteCompanionProxy;->getCompanionRemoteVersion()I

    move-result v5

    invoke-static {v5}, Lcom/google/glass/companion/CompanionVersionUtils;->getMinorVersion(I)I

    move-result v2

    .line 65
    .local v2, "minorVersion":I
    sget-object v5, Lcom/google/glass/setup/AuthErrorService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Trying to update credential silently, is connected:%s, minorVersion:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 65
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    if-eqz v1, :cond_0

    const/4 v5, 0x5

    if-lt v2, v5, :cond_0

    .line 69
    new-instance v3, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-direct {v3}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;-><init>()V

    .line 70
    .local v3, "request":Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    iget-object v5, p0, Lcom/google/glass/setup/AuthErrorService;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-interface {v5}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 71
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 72
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->setAccountName(Ljava/lang/String;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 73
    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->setAccountType(Ljava/lang/String;)Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 74
    iget-object v4, p0, Lcom/google/glass/setup/AuthErrorService;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v5

    .line 75
    invoke-virtual {v5, v3}, Lcom/google/glass/companion/Proto$Envelope;->setUpdateCredentialRequestG2C(Lcom/google/glass/companion/Proto$UpdateCredentialRequest;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v5

    .line 74
    invoke-virtual {v4, v5}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    move-result v4

    .line 78
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v3    # "request":Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    :cond_0
    return v4
.end method

.method private showLiveCard()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    iput-boolean v3, p0, Lcom/google/glass/setup/AuthErrorService;->credentialUpdateRequested:Z

    .line 110
    sget-object v0, Lcom/google/glass/setup/AuthErrorService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Show live card"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-virtual {v0, v3}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/setup/AuthErrorService$1;

    invoke-direct {v1, p0}, Lcom/google/glass/setup/AuthErrorService$1;-><init>(Lcom/google/glass/setup/AuthErrorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method


# virtual methods
.method getLiveCardToViewForTest()Lcom/google/glass/livecard/ViewToLiveCardTranslator;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 174
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    return-object v0
.end method

.method protected handleSetupViaCompanionApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "setupString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-static {p1}, Lcom/google/glass/util/SetupHelper;->parseBarcodeValue(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 126
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 129
    sget-object v2, Lcom/google/glass/setup/AuthErrorService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "setupString not complete."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0}, Lcom/google/glass/setup/AuthErrorService;->showLiveCard()V

    .line 169
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v1, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    invoke-direct {v1, v0}, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;-><init>(Landroid/os/Bundle;)V

    .line 134
    .local v1, "loginFields":Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;
    iget-object v2, v1, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->token:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    sget-object v2, Lcom/google/glass/setup/AuthErrorService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No token found."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0}, Lcom/google/glass/setup/AuthErrorService;->showLiveCard()V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/google/glass/setup/AuthErrorService;->authUtils:Lcom/google/glass/auth/AuthUtils;

    new-instance v3, Lcom/google/glass/setup/AuthErrorService$2;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/setup/AuthErrorService$2;-><init>(Lcom/google/glass/setup/AuthErrorService;Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;)V

    invoke-interface {v2, v3}, Lcom/google/glass/auth/AuthUtils;->deleteAllAccounts(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isCredentialUpdateRequestedForTest()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 180
    iget-boolean v0, p0, Lcom/google/glass/setup/AuthErrorService;->credentialUpdateRequested:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.setup.ACTION_RECONFIGURE_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    new-instance v1, Lcom/google/glass/setup/ReloginLiveCard;

    invoke-direct {v1, p0}, Lcom/google/glass/setup/ReloginLiveCard;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/setup/AuthErrorService;->liveCard:Lcom/google/glass/setup/ReloginLiveCard;

    .line 54
    new-instance v1, Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    iget-object v2, p0, Lcom/google/glass/setup/AuthErrorService;->liveCard:Lcom/google/glass/setup/ReloginLiveCard;

    const-string v3, "relogin_live_card"

    .line 55
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/google/glass/setup/AuthErrorService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    .line 56
    invoke-static {p0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/setup/SetupApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/setup/AuthErrorService;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 57
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/setup/AuthErrorService;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 58
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/glass/setup/AuthErrorService;->handler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService;->glassSetupRequestReceiver:Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 99
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 100
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x1

    .line 83
    iget-boolean v0, p0, Lcom/google/glass/setup/AuthErrorService;->credentialUpdateRequested:Z

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return v1

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/setup/AuthErrorService;->requestCredentialUpdateSilently()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService;->glassSetupRequestReceiver:Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/setup/AuthErrorService$GlassSetupRequestBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 88
    iput-boolean v1, p0, Lcom/google/glass/setup/AuthErrorService;->credentialUpdateRequested:Z

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/setup/AuthErrorService;->showLiveCard()V

    goto :goto_0
.end method
