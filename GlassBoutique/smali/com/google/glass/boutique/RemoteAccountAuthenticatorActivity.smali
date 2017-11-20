.class public final Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "RemoteAccountAuthenticatorActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/google/glass/boutique/AuthTokenPollingRunnable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$1;,
        Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;
    }
.end annotation


# static fields
.field static final KEY_AUTH_TOKEN_TYPE:Ljava/lang/String; = "authTokenType"


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private accountType:Ljava/lang/String;

.field private authTokenPollingThread:Ljava/lang/Thread;

.field private authTokenType:Ljava/lang/String;

.field private handler:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 35
    const-string v0, "remote_account"

    .line 36
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->authTokenPollingThread:Ljava/lang/Thread;

    .line 139
    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->authTokenPollingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->authTokenPollingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->accountType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 7
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 101
    iget-object v3, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->authTokenPollingThread:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    array-length v4, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 106
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->accountType:Ljava/lang/String;

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 105
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    :cond_2
    iget-object v5, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->authTokenType:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 111
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "authAccount"

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "accountType"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->handler:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;

    invoke-static {v3, v2}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->access$100(Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;Landroid/os/Bundle;)V

    goto :goto_0

    .line 118
    .end local v2    # "result":Landroid/os/Bundle;
    :cond_3
    new-instance v1, Lcom/google/glass/boutique/AuthTokenPollingRunnable;

    iget-object v5, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->authTokenType:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->accountManager:Landroid/accounts/AccountManager;

    invoke-direct {v1, v0, v5, v6, p0}, Lcom/google/glass/boutique/AuthTokenPollingRunnable;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManager;Lcom/google/glass/boutique/AuthTokenPollingRunnable$Callback;)V

    .line 120
    .local v1, "authTokenPollingRunnable":Ljava/lang/Runnable;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->authTokenPollingThread:Ljava/lang/Thread;

    .line 121
    iget-object v5, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->authTokenPollingThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method public onAuthTokenFound(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "authAccount"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "accountType"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "authTokenType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "authtoken"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->handler:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;

    invoke-static {v1, v0}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;->access$200(Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;Landroid/os/Bundle;)V

    .line 134
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 63
    iget-object v2, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onCreate(icicle: [%s])"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v2, Lcom/google/glass/boutique/R$style;->ContextualDialogTheme:I

    invoke-virtual {p0, v2}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->setTheme(I)V

    .line 67
    new-instance v0, Lcom/google/android/glass/widget/CardBuilder;

    sget-object v2, Lcom/google/android/glass/widget/CardBuilder$Layout;->ALERT:Lcom/google/android/glass/widget/CardBuilder$Layout;

    invoke-direct {v0, p0, v2}, Lcom/google/android/glass/widget/CardBuilder;-><init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)V

    .line 68
    .local v0, "card":Lcom/google/android/glass/widget/CardBuilder;
    sget v2, Lcom/google/glass/boutique/R$string;->primary_message:I

    invoke-virtual {v0, v2}, Lcom/google/android/glass/widget/CardBuilder;->setText(I)Lcom/google/android/glass/widget/CardBuilder;

    .line 69
    sget v2, Lcom/google/glass/boutique/R$string;->secondary_message:I

    invoke-virtual {v0, v2}, Lcom/google/android/glass/widget/CardBuilder;->setFootnote(I)Lcom/google/android/glass/widget/CardBuilder;

    .line 70
    sget v2, Lcom/google/glass/boutique/R$drawable;->ic_warning_150:I

    invoke-virtual {v0, v2}, Lcom/google/android/glass/widget/CardBuilder;->setIcon(I)Lcom/google/android/glass/widget/CardBuilder;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->setContentView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "intent: [%s]"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    const-string v2, "accountType"

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "null accountType"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->accountType:Ljava/lang/String;

    .line 77
    const-string v2, "authTokenType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->authTokenType:Ljava/lang/String;

    .line 79
    new-instance v2, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;-><init>(Landroid/os/Looper;Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$1;)V

    iput-object v2, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->handler:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;

    .line 81
    const-string v2, "account"

    invoke-virtual {p0, v2}, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    iput-object v2, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->accountManager:Landroid/accounts/AccountManager;

    .line 82
    iget-object v2, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->accountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->handler:Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity$RemoteAccountAuthenticatorActivityHandler;

    invoke-virtual {v2, p0, v3, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 83
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStop()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 91
    iget-object v0, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->authTokenPollingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->authTokenPollingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/boutique/RemoteAccountAuthenticatorActivity;->authTokenPollingThread:Ljava/lang/Thread;

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onStop()V

    .line 97
    return-void
.end method
