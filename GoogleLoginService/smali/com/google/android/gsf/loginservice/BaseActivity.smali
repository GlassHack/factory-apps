.class public Lcom/google/android/gsf/loginservice/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;
    }
.end annotation


# static fields
.field public static final EXTRAS_AUTH_TOKEN_TYPE:Ljava/lang/String;

.field protected static final LOCAL_LOGV:Z

.field protected static mTabletLayout:Z

.field public static sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

.field public static testCheckAuthenticatorResult:Ljava/lang/Object;


# instance fields
.field protected mAddAccount:Z

.field protected mCallAuthenticatorResponseOnFinish:Z

.field protected mCaptchaData:[B

.field protected mCaptchaToken:Ljava/lang/String;

.field protected mConfirmCredentials:Z

.field protected mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

.field protected mHasMultipleUsers:Z

.field protected mService:Ljava/lang/String;

.field protected mSession:Lcom/google/android/gsf/loginservice/GLSSession;

.field protected mSessionId:Ljava/lang/String;

.field private mShowingProgressDialog:Z

.field protected mThemeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    .line 70
    sget-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->SERVICE:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/loginservice/BaseActivity;->EXTRAS_AUTH_TOKEN_TYPE:Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    invoke-direct {v0}, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;-><init>()V

    sput-object v0, Lcom/google/android/gsf/loginservice/BaseActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    .line 174
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallAuthenticatorResponseOnFinish:Z

    .line 180
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Z

    .line 182
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddAccount:Z

    .line 228
    return-void
.end method

.method private checkNotification(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    const-string v2, "notificationId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "nid":Ljava/lang/String;
    if-nez v0, :cond_0

    move v2, v3

    .line 265
    :goto_0
    return v2

    .line 246
    :cond_0
    const-string v2, "session"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "sessionId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 248
    invoke-static {v1}, Lcom/google/android/gsf/loginservice/GLSSession;->getSessionOrNull(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    .line 249
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    if-eqz v2, :cond_1

    move v2, v3

    .line 250
    goto :goto_0

    .line 254
    :cond_1
    const-string v2, "GLSActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification without session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 257
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v0, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 263
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/loginservice/BaseActivity;->setResult(I)V

    .line 264
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->finish()V

    move v2, v4

    .line 265
    goto :goto_0

    .line 260
    :cond_2
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v5, 0x2

    invoke-virtual {v2, v0, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private copyParams(Landroid/content/Intent;)V
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 444
    :cond_0
    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    const-string v0, "authAccount"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 448
    const-string v0, "GLSActivity"

    const-string v1, "Start intent without session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_2
    const-string v0, "session"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/loginservice/StatusHelper;->toIntent(Landroid/content/Intent;)V

    .line 456
    :cond_3
    sget-object v0, Lcom/google/android/gsf/loginservice/BaseActivity;->EXTRAS_AUTH_TOKEN_TYPE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mService:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v0, "confirmCredentials"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 458
    const-string v0, "addAccount"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddAccount:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    const-string v0, "hasMultipleUsers"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mHasMultipleUsers:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 460
    const-string v0, "theme"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mThemeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private copyParams(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 427
    const-string v0, "authAccount"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 429
    const-string v0, "GLSActivity"

    const-string v1, "Start intent without session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    const-string v0, "session"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/google/android/gsf/loginservice/BaseActivity;->EXTRAS_AUTH_TOKEN_TYPE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mService:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "confirmCredentials"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    const-string v0, "addAccount"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddAccount:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    const-string v0, "hasMultipleUsers"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mHasMultipleUsers:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 437
    const-string v0, "theme"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mThemeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public static initScreen(Landroid/app/Activity;)V
    .locals 2
    .param p0, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 238
    .local v0, "screenSize":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/google/android/gsf/loginservice/BaseActivity;->mTabletLayout:Z

    .line 239
    return-void

    .line 238
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTabletLayout()Z
    .locals 1

    .prologue
    .line 604
    sget-boolean v0, Lcom/google/android/gsf/loginservice/BaseActivity;->mTabletLayout:Z

    return v0
.end method

.method private multiProcessHopFix(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "optons"    # Landroid/os/Bundle;

    .prologue
    .line 407
    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    if-nez v0, :cond_0

    .line 409
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 412
    :cond_0
    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 413
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mPendingIntent:Landroid/app/PendingIntent;

    .line 415
    :cond_1
    const-string v0, "hasAccountManagerOptions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iput-object p1, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 419
    :cond_2
    return-void
.end method


# virtual methods
.method protected accountAuthenticatorResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 519
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GLSSession;->cleanUp(Ljava/lang/String;)V

    .line 521
    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    .line 524
    :cond_0
    if-nez p1, :cond_1

    .line 525
    const/4 v0, 0x4

    const-string v1, "canceled"

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->accountAuthenticatorResult(Landroid/os/Bundle;ILjava/lang/String;)V

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/gsf/loginservice/BaseActivity;->accountAuthenticatorResult(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected accountAuthenticatorResult(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 544
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallAuthenticatorResponseOnFinish:Z

    .line 545
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 546
    .local v0, "res":Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_1

    .line 548
    if-eqz p1, :cond_3

    .line 549
    invoke-virtual {v0, p1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 550
    const-string v2, "GLSActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountAuthenticatorResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_0
    sput-object p1, Lcom/google/android/gsf/loginservice/BaseActivity;->testCheckAuthenticatorResult:Ljava/lang/Object;

    .line 561
    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 563
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    .line 564
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 565
    .local v1, "resIntent":Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 566
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 569
    .end local v1    # "resIntent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 555
    :cond_3
    invoke-virtual {v0, p2, p3}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 556
    const-string v2, "GLSActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 557
    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountAuthenticatorResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_4
    sput-object p3, Lcom/google/android/gsf/loginservice/BaseActivity;->testCheckAuthenticatorResult:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected accountAuthenticatorResultForAdd(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 587
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 588
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v1, "accountType"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 592
    return-void
.end method

.method protected accountAuthenticatorResultForSkip()V
    .locals 3

    .prologue
    .line 598
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 599
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "setupSkipped"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 600
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 601
    return-void
.end method

.method protected accountAuthenticatorRetryResult()V
    .locals 3

    .prologue
    .line 577
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 578
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "retry"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 579
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 580
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 581
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 625
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 627
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mActivities:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 632
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallAuthenticatorResponseOnFinish:Z

    if-eqz v0, :cond_2

    .line 635
    const-string v0, "GLSActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountAuthenticatorResult: finish on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 640
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 641
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining GLS activities after end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSSession;->mActivities:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_2
    return-void
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_country"

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method public hasNetworkConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 484
    sget-object v1, Lcom/google/android/gsf/loginservice/BaseActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-boolean v1, v1, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mForceNoNetwork:Z

    if-eqz v1, :cond_0

    .line 489
    :goto_0
    return v2

    .line 487
    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 489
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isESEnabled()Z
    .locals 4

    .prologue
    .line 652
    sget-object v0, Lcom/google/android/gsf/loginservice/BaseActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mGPlus:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 653
    const-string v0, "1"

    sget-object v1, Lcom/google/android/gsf/loginservice/BaseActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mGPlus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 655
    :goto_0
    return v0

    :cond_0
    const-string v0, "1"

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "google_login_gplus"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isXLargeScreen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 612
    sget-boolean v0, Lcom/google/android/gsf/loginservice/BaseActivity;->mTabletLayout:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 686
    if-nez p1, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    const-string v0, "Token=[^&\n;]*"

    const-string v1, "Token=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 690
    const-string v0, "LSID=[^&\n;]*"

    const-string v1, "LSID=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 691
    const-string v0, "SID=[^&\n;]*"

    const-string v1, "SID=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 692
    const-string v0, "auth=[^&\n;]*"

    const-string v1, "auth=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 693
    const-string v0, "EncryptedPasswd=[^&\n;]*"

    const-string v1, "EncryptedPasswd=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 694
    const-string v0, "Passwd=[^&\n;]*"

    const-string v1, "Passwd=SECRET"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 695
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    const-string v0, "GLSActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 270
    sget-boolean v4, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    const-string v4, "GLSActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 273
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->initScreen(Landroid/app/Activity;)V

    .line 274
    new-instance v4, Lcom/google/android/gsf/loginservice/GLSHelper;

    new-instance v5, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-direct {v5, p0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v5, p0}, Lcom/google/android/gsf/loginservice/GLSHelper;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mGlsHelper:Lcom/google/android/gsf/loginservice/GLSHelper;

    .line 277
    if-eqz p1, :cond_9

    .line 282
    const-string v4, "session"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "sessionId":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 291
    invoke-static {v3}, Lcom/google/android/gsf/loginservice/GLSSession;->getSessionOrNull(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    .line 292
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    if-nez v4, :cond_1

    .line 293
    invoke-static {p0, v3, p1}, Lcom/google/android/gsf/loginservice/GLSSession;->fromBundle(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    .line 315
    .end local v3    # "sessionId":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v4, "isTop"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallAuthenticatorResponseOnFinish:Z

    .line 318
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mKey:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    .line 321
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mActivities:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 326
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v5, "authAccount"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 330
    :cond_2
    sget-object v4, Lcom/google/android/gsf/loginservice/ResponseKey;->STATUS:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "err":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    .line 332
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromWire(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 335
    :cond_3
    sget-object v4, Lcom/google/android/gsf/loginservice/BaseActivity;->EXTRAS_AUTH_TOKEN_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mService:Ljava/lang/String;

    .line 337
    const-string v4, "confirmCredentials"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Z

    .line 338
    const-string v4, "addAccount"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddAccount:Z

    .line 339
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v4, :cond_4

    .line 340
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v4}, Landroid/accounts/AccountAuthenticatorResponse;->onRequestContinued()V

    .line 342
    :cond_4
    sget-object v4, Lcom/google/android/gsf/loginservice/ResponseKey;->CAPTCHA_DATA:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCaptchaData:[B

    .line 343
    sget-object v4, Lcom/google/android/gsf/loginservice/ResponseKey;->CAPTCHA_TOKEN_RES:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCaptchaToken:Ljava/lang/String;

    .line 344
    const-string v4, "showingProgressDialog"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mShowingProgressDialog:Z

    .line 345
    const-string v4, "hasMultipleUsers"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mHasMultipleUsers:Z

    .line 346
    const-string v4, "theme"

    const-string v5, "holo"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mThemeType:Ljava/lang/String;

    .line 349
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    const-string v5, "allowSkip"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "allowSkip"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 352
    const-string v4, "GLSActivity"

    const-string v5, "Accepting legacy allowSkip from intent"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    const-string v5, "allowSkip"

    const-string v6, "allowSkip"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    :cond_5
    const-string v4, "firstRun"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 358
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    const-string v5, "firstRun"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    .line 359
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v4, v4, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    if-eqz v4, :cond_6

    .line 360
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddAccount:Z

    .line 366
    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "callerExtras"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v5, v5, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0, v7, v2}, Lcom/google/android/gsf/loginservice/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 371
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mThemeType:Ljava/lang/String;

    const-string v5, "holo_light"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 372
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "AuthTheme.Light"

    const-string v6, "style"

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 373
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->setTheme(I)V

    .line 377
    .end local v0    # "err":Ljava/lang/String;
    .end local v1    # "id":I
    :cond_7
    return-void

    .line 296
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "sessionId":Ljava/lang/String;
    :cond_8
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GLSSession;->getOrCreateSession(Landroid/os/Bundle;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    goto/16 :goto_0

    .line 301
    .end local v3    # "sessionId":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 302
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 303
    if-nez p1, :cond_a

    .line 304
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "icicle":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 306
    .restart local p1    # "icicle":Landroid/os/Bundle;
    :cond_a
    invoke-direct {p0, v2}, Lcom/google/android/gsf/loginservice/BaseActivity;->checkNotification(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 310
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GLSSession;->getOrCreateSession(Landroid/os/Bundle;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    .line 311
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->multiProcessHopFix(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 383
    sget-object v0, Lcom/google/android/gsf/loginservice/ResponseKey;->CAPTCHA_DATA:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCaptchaData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 384
    sget-object v0, Lcom/google/android/gsf/loginservice/ResponseKey;->CAPTCHA_TOKEN_RES:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "showingProgressDialog"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mShowingProgressDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 386
    const-string v0, "isTop"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallAuthenticatorResponseOnFinish:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 387
    const-string v0, "hasMultipleUsers"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mHasMultipleUsers:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 388
    const-string v0, "theme"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mThemeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->copyParams(Landroid/os/Bundle;)V

    .line 393
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/loginservice/GLSSession;->toBundle(Landroid/os/Bundle;)V

    .line 394
    return-void
.end method

.method public shouldDisplayLastNameFirst()Z
    .locals 3

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "google_setup:lastnamefirst_countries"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "lastFirstCountries":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    const-string v0, "*ja*ko*hu*zh*"

    .line 681
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public startSessionActivity(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->copyParams(Landroid/content/Intent;)V

    .line 469
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method public startSessionActivityForResult(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->copyParams(Landroid/content/Intent;)V

    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/loginservice/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
