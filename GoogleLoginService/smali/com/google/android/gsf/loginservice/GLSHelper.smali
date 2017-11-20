.class public Lcom/google/android/gsf/loginservice/GLSHelper;
.super Ljava/lang/Object;
.source "GLSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/loginservice/GLSHelper$1;
    }
.end annotation


# static fields
.field static final sLastErrors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSHelper;->sLastErrors:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Landroid/content/Context;)V
    .locals 2
    .param p1, "client"    # Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Supplied GoogleAccoutnDataServiceClient cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    .line 110
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mAppContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method private blockingGetAccountData(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->getAccountData(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;

    move-result-object v0

    return-object v0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p0, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sessions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSSession;->sessionCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSHelper;->sLastErrors:Ljava/util/LinkedList;

    monitor-enter v3

    .line 71
    :try_start_0
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSHelper;->sLastErrors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    return-void
.end method

.method public static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 79
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    return-void
.end method

.method private handleSuccessTokenResponse(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Landroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSSession;)V
    .locals 7
    .param p1, "response"    # Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .param p2, "intentToMutate"    # Landroid/content/Intent;
    .param p3, "sessionToMutate"    # Lcom/google/android/gsf/loginservice/GLSSession;

    .prologue
    .line 370
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "accountName":Ljava/lang/String;
    const-string v4, "GLSActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling successful token response for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getAccountName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 373
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getAccountName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 375
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->isGPlusServiceAllowed()Z

    move-result v4

    iput-boolean v4, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    .line 377
    const-string v4, "authAccount"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v4, "accountType"

    const-string v5, "com.google"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v4, "authtoken"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getFirstName()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "first":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getLastName()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "last":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 389
    iget-object v4, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v5, Lcom/google/android/gsf/loginservice/ResponseKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v4, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v5, Lcom/google/android/gsf/loginservice/ResponseKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getPicasaUser()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "picasaUser":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 395
    iget-object v4, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v5, Lcom/google/android/gsf/loginservice/ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_2
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "Token=[^&\n;]*"

    const-string v1, "Token=SECRET"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 52
    const-string v0, "LSID=[^&\n;]*"

    const-string v1, "LSID=SECRET"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 53
    const-string v0, "SID=[^&\n;]*"

    const-string v1, "SID=SECRET"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    const-string v0, "auth=[^&\n;]*"

    const-string v1, "auth=SECRET"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    const-string v0, "EncryptedPasswd=[^&\n;]*"

    const-string v1, "EncryptedPasswd=SECRET"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    const-string v0, "Passwd=[^&\n;]*"

    const-string v1, "Passwd=SECRET"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 57
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "GLSActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSHelper;->sLastErrors:Ljava/util/LinkedList;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSHelper;->sLastErrors:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSHelper;->sLastErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x28

    if-le v0, v2, :cond_2

    .line 63
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSHelper;->sLastErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 65
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private processTokenResponse(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Landroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSSession;)V
    .locals 5
    .param p1, "response"    # Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .param p2, "intentToMutate"    # Landroid/content/Intent;
    .param p3, "sessionToMutate"    # Lcom/google/android/gsf/loginservice/GLSSession;

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v0

    .line 325
    .local v0, "responseStatus":Lcom/google/android/gms/auth/firstparty/shared/Status;
    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v1

    .line 326
    .local v1, "responseStatusHelper":Lcom/google/android/gsf/loginservice/StatusHelper;
    invoke-virtual {v1, p2}, Lcom/google/android/gsf/loginservice/StatusHelper;->toIntent(Landroid/content/Intent;)V

    .line 327
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSHelper$1;->$SwitchMap$com$google$android$gms$auth$firstparty$shared$Status:[I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 339
    iput-object v0, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 341
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->isBrowserSignInSuggested()Z

    move-result v2

    iput-boolean v2, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mIsBrowserFlowRequired:Z

    .line 342
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getSignInUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mUrl:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getDetail()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mDetail:Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/gsf/login/LoginActivity;

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 346
    iget-object v2, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-static {v2}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gsf/loginservice/StatusHelper;->toIntent(Landroid/content/Intent;)V

    .line 347
    const-string v2, "accountAuthenticatorResponse"

    iget-object v3, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 350
    const-string v2, "authAccount"

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v2, "pendingIntent"

    iget-object v3, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 356
    const-string v2, "authFailedMessage"

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mAppContext:Landroid/content/Context;

    const v4, 0x7f0700f7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 360
    :goto_0
    return-void

    .line 329
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/loginservice/GLSHelper;->handleSuccessTokenResponse(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Landroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSSession;)V

    goto :goto_0

    .line 335
    :pswitch_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "NEED_PERMISSION is not supported by GLS account flows."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static updateSessionWithCanonicalUsername(Lcom/google/android/gsf/loginservice/GLSSession;Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;)V
    .locals 1
    .param p0, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;
    .param p1, "res"    # Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 184
    :cond_0
    return-void
.end method

.method public static updateSessionWithCaptchaChallenge(Lcom/google/android/gsf/loginservice/GLSSession;Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;)V
    .locals 3
    .param p0, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;
    .param p1, "challenge"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->getCaptchaToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaToken:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/loginservice/JsonKey;->CAPTCHA_BITMAP:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;->getCaptcha()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    return-void
.end method

.method public static usernameOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 92
    if-eqz p0, :cond_0

    .line 95
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 96
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 98
    .end local v0    # "pos":I
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public blockingAddWithPassword(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gsf/loginservice/GLSSession;)Landroid/content/Intent;
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Supplied accountName cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_0
    if-nez p2, :cond_1

    .line 263
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Supplied password cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_1
    if-nez p3, :cond_2

    .line 266
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Supplied GLSSession cannot be null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    :cond_2
    new-instance v3, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    invoke-direct {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;-><init>()V

    iget-object v4, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v3

    iget-boolean v4, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setSetupWizardInProgress(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v3

    iget-boolean v4, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mCreatingAccount:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setAccountCreationInProgress(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-direct {v4}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;-><init>()V

    invoke-virtual {v4, p1}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setBrowserAuthenticationRequired(Z)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v1

    .line 276
    .local v1, "request":Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    iget-object v3, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 277
    new-instance v3, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    iget-object v4, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaToken:Ljava/lang/String;

    iget-object v5, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setCaptchaSolution(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    .line 281
    :cond_3
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->signIn(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    .line 282
    .local v2, "tr":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->isGPlusServiceEnabled()Z

    move-result v3

    iput-boolean v3, p3, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v2, v0, p3}, Lcom/google/android/gsf/loginservice/GLSHelper;->processTokenResponse(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Landroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSSession;)V

    .line 285
    return-object v0
.end method

.method public blockingAddWithRequestToken(Lcom/google/android/gsf/loginservice/GLSSession;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 6
    .param p1, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;
    .param p2, "authCode"    # Ljava/lang/String;
    .param p3, "isSetupWizardInProgress"    # Z

    .prologue
    .line 301
    new-instance v4, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-direct {v4}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;-><init>()V

    iget-object v5, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setAuthorizationCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setBrowserAuthenticationRequired(Z)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    .line 305
    .local v0, "acctCreds":Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    new-instance v4, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    invoke-direct {v4}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;-><init>()V

    iget-object v5, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setAccountCreationInProgress(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->setSetupWizardInProgress(Z)Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;

    move-result-object v2

    .line 312
    .local v2, "request":Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->signIn(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v3

    .line 313
    .local v3, "response":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->isGPlusServiceEnabled()Z

    move-result v4

    iput-boolean v4, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    .line 314
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v3, v1, p1}, Lcom/google/android/gsf/loginservice/GLSHelper;->processTokenResponse(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Landroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSSession;)V

    .line 316
    return-object v1
.end method

.method public blockingCheckAccountName(Lcom/google/android/gsf/loginservice/GLSSession;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
    .locals 5
    .param p1, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "captchaSolution":Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .end local v0    # "captchaSolution":Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .restart local v0    # "captchaSolution":Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    :cond_0
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;

    invoke-direct {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;-><init>()V

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->setAccountNameToCheck(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;

    move-result-object v3

    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/loginservice/RequestKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->setFirstName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;

    move-result-object v3

    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/loginservice/RequestKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->setLastName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;

    move-result-object v1

    .line 236
    .local v1, "req":Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;
    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->setCaptchaSolution(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->checkAccountName(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    move-result-object v2

    return-object v2
.end method

.method public blockingCheckRealName(Lcom/google/android/gsf/loginservice/GLSSession;)Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 5
    .param p1, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Supplied GLSSession cannot be null!"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_0
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;

    invoke-direct {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;-><init>()V

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;

    move-result-object v3

    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/loginservice/RequestKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->setFirstName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;

    move-result-object v3

    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/loginservice/RequestKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->setLastName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;

    move-result-object v0

    .line 250
    .local v0, "request":Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->checkRealName(Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;

    move-result-object v1

    .line 251
    .local v1, "response":Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;->getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v2

    return-object v2
.end method

.method public blockingCreateAccount(Lcom/google/android/gsf/loginservice/GLSSession;)Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 7
    .param p1, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;

    .prologue
    .line 147
    new-instance v4, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    invoke-direct {v4}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;-><init>()V

    iget-object v5, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v5

    iget-object v4, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v6, Lcom/google/android/gsf/loginservice/JsonKey;->PASSWORD:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v6}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    move-result-object v0

    .line 150
    .local v0, "accountCreds":Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    const/4 v1, 0x0

    .line 151
    .local v1, "captchaSolution":Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    iget-object v4, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaToken:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 152
    new-instance v1, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .end local v1    # "captchaSolution":Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    iget-object v4, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaToken:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .restart local v1    # "captchaSolution":Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    :cond_0
    new-instance v4, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    invoke-direct {v4}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;-><init>()V

    iget-object v5, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setAccountCredentials(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v4

    iget-boolean v5, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPersonalizedContent:Z

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setAgreedToPersonalizedContent(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v4

    iget-boolean v5, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToWebHistory:Z

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setAgreedToWebHistory(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v5

    iget-object v4, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v6, Lcom/google/android/gsf/loginservice/JsonKey;->GENDER:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v6}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setGender(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v5

    iget-object v4, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v6, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v6}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setFirstName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v5

    iget-object v4, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v6, Lcom/google/android/gsf/loginservice/JsonKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v6}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setLastName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setPhoneCountryCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setPhoneNumber(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mSecondaryEmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setSecondaryEmail(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v2

    .line 169
    .local v2, "request":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setCaptchaSolution(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->createAccount(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v3

    .line 173
    .local v3, "res":Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    invoke-static {p1, v3}, Lcom/google/android/gsf/loginservice/GLSHelper;->updateSessionWithCanonicalUsername(Lcom/google/android/gsf/loginservice/GLSSession;Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;)V

    .line 174
    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getCaptchaChallenge()Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/android/gsf/loginservice/GLSHelper;->updateSessionWithCaptchaChallenge(Lcom/google/android/gsf/loginservice/GLSSession;Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;)V

    .line 175
    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v4

    return-object v4
.end method

.method public blockingCreateProfile(Lcom/google/android/gsf/loginservice/GLSSession;)Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 5
    .param p1, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Supplied GLSSession cannot be null!"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_0
    const/4 v0, 0x0

    .line 202
    .local v0, "captchaSolution":Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .end local v0    # "captchaSolution":Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .restart local v0    # "captchaSolution":Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    :cond_1
    new-instance v3, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    invoke-direct {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;-><init>()V

    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/loginservice/RequestKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setFirstName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v3

    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/loginservice/RequestKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setLastName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v3

    iget-object v2, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/loginservice/RequestKey;->GENDER:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setGender(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToMobileTos:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setAgreedToMobileTos(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCreatingAccount:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setCreatingAccount(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mSecondaryEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setSecondaryEmail(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setSetupWizardInProgress(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToMobileTos:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setAgreedToMobileTos(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToWebHistory:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setAgreedToWebHistory(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPersonalizedContent:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setAgreedToPersonalizedContent(Z)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mRopRevision:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setRopRevision(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    move-result-object v1

    .line 219
    .local v1, "req":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->setCaptchaSolution(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;

    .line 222
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->createPlusProfile(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v2

    return-object v2
.end method

.method public blockingGetGplusInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "optionalCaptchaToken"    # Ljava/lang/String;
    .param p3, "optionalCaptchaAnswer"    # Ljava/lang/String;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Supplied accountName cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;

    invoke-direct {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;

    move-result-object v0

    .line 139
    .local v0, "request":Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 140
    new-instance v1, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    invoke-direct {v1, p2, p3}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->setCaptchaSolution(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->getGplusInfo(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;

    move-result-object v1

    return-object v1
.end method

.method public blockingIsServiceForUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 408
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 409
    invoke-direct {p0, p2}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingGetAccountData(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;

    move-result-object v0

    .line 410
    .local v0, "data":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->getServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 411
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    const/4 v3, 0x1

    .line 416
    .end local v0    # "data":Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public blockingRatePassword(Lcom/google/android/gsf/loginservice/GLSSession;)Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 6
    .param p1, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;

    .prologue
    .line 114
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;

    iget-object v4, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v5, Lcom/google/android/gsf/loginservice/JsonKey;->PASSWORD:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v0, "req":Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;
    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->setCallingAppDescription(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;

    move-result-object v4

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v5, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->setFirstName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;

    move-result-object v4

    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v5, Lcom/google/android/gsf/loginservice/JsonKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->setLastName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;

    .line 121
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->checkPassword(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;

    move-result-object v1

    .line 123
    .local v1, "res":Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v2

    .line 124
    .local v2, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/shared/Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/loginservice/JsonKey;->DETAIL:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/loginservice/JsonKey;->STRENGTH:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/JsonKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->getPasswordStrength()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    return-object v2
.end method

.method public blockingRecoveryCountryInfo()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSHelper;->mClient:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->getAccountRecoveryCountryInfo()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;

    move-result-object v0

    return-object v0
.end method
