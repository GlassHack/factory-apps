.class public Lcom/google/glass/lockrecovery/FetchCodeActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "FetchCodeActivity.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/app/GlassActivity;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;",
        ">;"
    }
.end annotation


# static fields
.field static final TUTORIAL_REQUEST_ID:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field checkRecoveryCodeTask:Landroid/os/AsyncTask;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field dismissedEarly:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field errorDialogListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field isDestroyed:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private lockRecoveryHelper:Lcom/google/glass/lockrecovery/LockRecoveryHelper;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field progressDialogListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private recoveryCodeManager:Lcom/google/glass/lockrecovery/RecoveryCodeManager;

.field shouldShowTutorial:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 38
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 91
    new-instance v0, Lcom/google/glass/lockrecovery/FetchCodeActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/lockrecovery/FetchCodeActivity$1;-><init>(Lcom/google/glass/lockrecovery/FetchCodeActivity;)V

    iput-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->errorDialogListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

    .line 101
    new-instance v0, Lcom/google/glass/lockrecovery/FetchCodeActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/lockrecovery/FetchCodeActivity$2;-><init>(Lcom/google/glass/lockrecovery/FetchCodeActivity;)V

    iput-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->progressDialogListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/lockrecovery/FetchCodeActivity;)Lcom/google/glass/lockrecovery/RecoveryCodeManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/lockrecovery/FetchCodeActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->recoveryCodeManager:Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/lockrecovery/FetchCodeActivity;Lcom/google/glass/lockrecovery/RecoveryCodeManager;)Lcom/google/glass/lockrecovery/RecoveryCodeManager;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/lockrecovery/FetchCodeActivity;
    .param p1, "x1"    # Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->recoveryCodeManager:Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/lockrecovery/FetchCodeActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/lockrecovery/FetchCodeActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/lockrecovery/FetchCodeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/lockrecovery/FetchCodeActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->fetchRecoveryCode()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/lockrecovery/FetchCodeActivity;)Lcom/google/glass/lockrecovery/LockRecoveryHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/lockrecovery/FetchCodeActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->lockRecoveryHelper:Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    return-object v0
.end method

.method private fetchRecoveryCode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    invoke-static {}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->getInstance()Lcom/google/glass/android/net/ConnectivityManagerProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/net/ConnectivityManager;

    move-result-object v0

    .line 157
    .local v0, "cm":Lcom/google/glass/android/net/ConnectivityManager;
    invoke-interface {v0}, Lcom/google/glass/android/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 159
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No network connectivity, can\'t fetch recovery code -- erroring out."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    new-instance v2, Lcom/google/glass/app/GlassError;

    invoke-direct {v2}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v3, Lcom/google/glass/lockrecovery/R$string;->error_cant_reach_google:I

    .line 162
    invoke-virtual {v2, v3}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v2

    sget v3, Lcom/google/glass/lockrecovery/R$string;->error_tap_connection_settings:I

    .line 163
    invoke-virtual {v2, v3}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v2

    sget v3, Lcom/google/glass/lockrecovery/R$drawable;->ic_cloud_sad_150:I

    .line 164
    invoke-virtual {v2, v3}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v2

    .line 165
    invoke-virtual {v2, v6}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v2

    sget-object v3, Lcom/google/glass/app/GlassError$OnConfirmAction;->SHOW_CONNECTIVITY_STATUS_CARD:Lcom/google/glass/app/GlassError$OnConfirmAction;

    .line 166
    invoke-virtual {v2, v3}, Lcom/google/glass/app/GlassError;->setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v2

    .line 167
    invoke-virtual {v2, p0}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 186
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Showing interstitial progress dialog."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iput-boolean v5, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->dismissedEarly:Z

    .line 174
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v2

    if-nez v2, :cond_2

    .line 175
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v3, Lcom/google/glass/lockrecovery/R$string;->preparing:I

    .line 176
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/lockrecovery/R$string;->preparing:I

    .line 177
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 178
    invoke-virtual {v2, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 179
    invoke-virtual {v2, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->progressDialogListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

    .line 181
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v2

    .line 175
    invoke-virtual {p0, v2}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 185
    :cond_2
    iget-object v2, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->lockRecoveryHelper:Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    invoke-virtual {v2, p0, p0}, Lcom/google/glass/lockrecovery/LockRecoveryHelper;->doRecoveryFetch(Landroid/content/Context;Lcom/google/glass/net/ProtoResponseHandler;)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 242
    if-ne p1, v2, :cond_1

    .line 243
    if-ne p2, v3, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "User completed watching the tutorial -- returning OK."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p0, v3}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->setResult(I)V

    .line 251
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->finish()V

    .line 255
    :goto_1
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "User dismissed the tutorial -- assuming we don\'t want to continue."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    invoke-virtual {p0, v4}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->setResult(I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unexpected request code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Request to fetch the lock code was canceled -- BUG!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->lockRecoveryHelper:Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    const-string v2, "FetchCodeActivity#onCancel"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/lockrecovery/LockRecoveryHelper;->logFailureToEventLog(Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V

    .line 193
    sget v0, Lcom/google/glass/lockrecovery/R$drawable;->ic_warning_150:I

    sget v1, Lcom/google/glass/lockrecovery/R$string;->request_failed:I

    sget v2, Lcom/google/glass/lockrecovery/R$string;->try_again:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->showErrorAndFinish(III)V

    .line 195
    return-void
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->isDestroyed:Z

    .line 115
    invoke-static {}, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;->getInstance()Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;->get()Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->lockRecoveryHelper:Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    .line 116
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 117
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->isDestroyed:Z

    .line 139
    return-void
.end method

.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 5
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 199
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to fetch lock code from the clientproxy: %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->lockRecoveryHelper:Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    const-string v2, "FetchCodeActivity#onError(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 201
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/lockrecovery/LockRecoveryHelper;->logFailureToEventLog(Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V

    .line 203
    sget v0, Lcom/google/glass/lockrecovery/R$drawable;->ic_warning_150:I

    sget v1, Lcom/google/glass/lockrecovery/R$string;->request_failed:I

    sget v2, Lcom/google/glass/lockrecovery/R$string;->try_again:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->showErrorAndFinish(III)V

    .line 205
    return-void
.end method

.method protected onPauseInternal()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 123
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->checkRecoveryCodeTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 124
    return-void
.end method

.method protected onResumeInternal()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 130
    new-instance v0, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;

    invoke-direct {v0, p0}, Lcom/google/glass/lockrecovery/FetchCodeActivity$CheckRecoveryCodeTask;-><init>(Lcom/google/glass/lockrecovery/FetchCodeActivity;)V

    iput-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->checkRecoveryCodeTask:Landroid/os/AsyncTask;

    .line 131
    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->checkRecoveryCodeTask:Landroid/os/AsyncTask;

    .line 132
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 131
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Lock recovery fetch successful."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_RECOVERY_SYNC_SUCCEEDED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 212
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 213
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/lockrecovery/FetchCodeActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/lockrecovery/FetchCodeActivity$3;-><init>(Lcom/google/glass/lockrecovery/FetchCodeActivity;Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 220
    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->hideMessageDialog()V

    .line 222
    iget-boolean v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->dismissedEarly:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "User dismissed our interstitial -- returning RESULT_CANCELED."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p0, v3}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->setResult(I)V

    .line 225
    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->finish()V

    .line 238
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->shouldShowTutorial:Z

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "User hasn\'t seen the tutorial yet -- starting that now."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->lockRecoveryHelper:Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/lockrecovery/LockRecoveryHelper;->showTutorialVideo(Landroid/app/Activity;I)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "User saw the tutorial already -- returning OK."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->setResult(I)V

    .line 237
    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->onSuccess(Lcom/google/googlex/glass/common/proto/LockscreenRecoveryNano$LockscreenRecoveryResponse;)V

    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/google/glass/lockrecovery/R$layout;->fetch_code_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method showErrorAndFinish(III)V
    .locals 5
    .param p1, "icon"    # I
    .param p2, "message"    # I
    .param p3, "secondaryMessage"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to show error dialog -- we were destroyed early!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :goto_0
    return-void

    .line 273
    :cond_0
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/lockrecovery/R$string;->request_failed:I

    .line 274
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/lockrecovery/R$string;->try_again:I

    .line 275
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/lockrecovery/R$drawable;->ic_warning_150:I

    .line 276
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 277
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 278
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessageDuration(J)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/lockrecovery/FetchCodeActivity;->errorDialogListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

    .line 279
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 273
    invoke-virtual {p0, v0}, Lcom/google/glass/lockrecovery/FetchCodeActivity;->showError(Lcom/google/glass/widget/MessageDialog;)V

    goto :goto_0
.end method
