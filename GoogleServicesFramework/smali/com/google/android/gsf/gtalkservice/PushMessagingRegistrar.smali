.class public Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;
.super Landroid/app/IntentService;
.source "PushMessagingRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;,
        Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;,
        Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
    }
.end annotation


# static fields
.field private static ERROR_PREFIX:Ljava/lang/String;


# instance fields
.field private mAndroidId:Ljava/lang/String;

.field mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mSecurityToken:Ljava/lang/String;

.field mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    const-string v0, "Error="

    sput-object v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->ERROR_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 231
    const-string v0, "PushMessagingRegistrar"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mSecurityToken:Ljava/lang/String;

    .line 232
    return-void
.end method

.method private clearSecurityToken()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mSecurityToken:Ljava/lang/String;

    .line 311
    return-void
.end method

.method private getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAndroidId:Ljava/lang/String;

    return-object v0
.end method

.method private getSecurityToken()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 294
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mSecurityToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 295
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mSecurityToken:Ljava/lang/String;

    .line 306
    :goto_0
    return-object v3

    .line 298
    :cond_0
    :try_start_0
    const-string v3, "CheckinService"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "CheckinTask_securityToken"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 300
    .local v1, "securityToken":J
    cmp-long v3, v1, v7

    if-eqz v3, :cond_1

    .line 301
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mSecurityToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v1    # "securityToken":J
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mSecurityToken:Ljava/lang/String;

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "CheckinTask_securityToken is not a long."

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getUrl(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrl(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 285
    const-string v1, "c2dm_aid_url"

    invoke-static {p0, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 288
    const-string v0, "https://android.clients.google.com/c2dm/register3"

    .line 290
    :cond_0
    return-object v0
.end method

.method private getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const-string v0, "AndroidC2DM/1.1"

    return-object v0
.end method

.method private handleError(ILjava/lang/String;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "response"    # Lorg/apache/http/HttpResponse;
    .param p4, "appPackage"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->parseServerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, "error":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->parseRetryAfterSec(Lorg/apache/http/HttpResponse;)J

    move-result-wide v6

    .line 697
    .local v6, "retryAfterS":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_0

    .line 698
    const-string v3, "error"

    const-string v5, "Retry-After"

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendRegistrationMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-direct {p0, p1, p4, v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)Z
    .locals 6
    .param p1, "request"    # Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;

    .prologue
    .line 318
    iget v2, p1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mUid:I

    .line 320
    .local v2, "uid":I
    :try_start_0
    instance-of v3, p1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;

    if-eqz v3, :cond_0

    .line 321
    move-object v0, p1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->register(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;)V

    .line 335
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 323
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->unregister(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, "ex":Lorg/apache/http/auth/AuthenticationException;
    const-string v3, "C2DMRegistrar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[C2DMReg] handleRequest caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->clearSecurityToken()V

    .line 328
    iget-object v3, p1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mAppPackage:Ljava/lang/String;

    const-string v4, "AUTHENTICATION_FAILED"

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(ILjava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v3, 0x0

    goto :goto_1

    .line 330
    .end local v1    # "ex":Lorg/apache/http/auth/AuthenticationException;
    :catch_1
    move-exception v1

    .line 331
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "C2DMRegistrar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[C2DMReg] handleRequest caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v3, p1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mAppPackage:Ljava/lang/String;

    const-string v4, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAuthenticationError(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 731
    const/16 v0, 0x193

    if-eq p1, v0, :cond_0

    const/16 v0, 0x191

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 792
    const-string v0, "C2DMRegistrar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C2DMRegistrar."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return-void
.end method

.method private parseRetryAfterSec(Lorg/apache/http/HttpResponse;)J
    .locals 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 714
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 716
    .local v0, "retryAfterHeader":Lorg/apache/http/Header;
    :goto_0
    if-eqz v0, :cond_1

    .line 719
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "retryAfterVal":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 721
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 727
    .end local v1    # "retryAfterVal":Ljava/lang/String;
    :goto_1
    return-wide v3

    .line 714
    .end local v0    # "retryAfterHeader":Lorg/apache/http/Header;
    :cond_0
    const-string v3, "Retry-After"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_0

    .line 723
    .restart local v0    # "retryAfterHeader":Lorg/apache/http/Header;
    :catch_0
    move-exception v2

    .line 724
    .local v2, "t":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing retryAfter - use default sleep "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 727
    .end local v2    # "t":Ljava/lang/NumberFormatException;
    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_1
.end method

.method private parseServerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 741
    if-eqz p1, :cond_1

    sget-object v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->ERROR_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    sget-object v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->ERROR_PREFIX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "error":Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 754
    :cond_0
    :goto_0
    return-object v0

    .line 751
    .end local v0    # "error":Ljava/lang/String;
    :cond_1
    const-string v0, "SERVICE_NOT_AVAILABLE"

    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_0
.end method

.method private requestFailed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "appPackage"    # Ljava/lang/String;
    .param p3, "error"    # Ljava/lang/String;

    .prologue
    .line 758
    const-string v3, "error"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendRegistrationMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 760
    return-void
.end method

.method private sendRegistrationMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "app"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "key2"    # Ljava/lang/String;
    .param p6, "value2"    # J

    .prologue
    .line 766
    new-instance v4, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    const-string v3, "C2DMRegistrar"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send registration intent app= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 773
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    if-eqz p5, :cond_1

    .line 775
    move-object/from16 v0, p5

    move-wide/from16 v1, p6

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 777
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserHandle()I

    move-result v12

    .line 778
    .local v12, "myUid":I
    if-eqz p1, :cond_2

    if-ne p1, v12, :cond_3

    .line 779
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 789
    :goto_0
    return-void

    .line 781
    :cond_3
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 6
    .param p0, "sig"    # Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x3

    .line 449
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 450
    .local v2, "signature":[B
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 451
    .local v1, "md":Ljava/security/MessageDigest;
    if-nez v1, :cond_1

    .line 452
    const-string v4, "C2DMRegistrar"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 453
    const-string v4, "message digest is null"

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 464
    :cond_0
    :goto_0
    return-object v3

    .line 457
    :cond_1
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 458
    .local v0, "digest":[B
    if-nez v0, :cond_2

    .line 459
    const-string v4, "C2DMRegistrar"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    const-string v4, "digest is null"

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_2
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->toHex([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 442
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 443
    .local v1, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method getSignatureFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 416
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 417
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 418
    const-string v5, "C2DMRegistrar"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 419
    const-string v5, "ai is null"

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 436
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-object v4

    .line 423
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/16 v5, 0x40

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 425
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-nez v5, :cond_3

    .line 427
    :cond_2
    const-string v5, "C2DMRegistrar"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 428
    const-string v5, "signature is null."

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 432
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 435
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v1

    .line 436
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 820
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 809
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 810
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 812
    .local v0, "androidId":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAndroidId:Ljava/lang/String;

    .line 813
    new-instance v2, Lcom/google/android/common/http/GoogleHttpClient;

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 814
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v3, "C2DMRegistrar"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 815
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mUserManager:Landroid/os/UserManager;

    .line 816
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 797
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 799
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 805
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 825
    const-string v1, "C2DMRegistrar"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    const-string v1, "C2DMRegistrar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Real receiver for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    if-eqz p1, :cond_1

    .line 830
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 832
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->register(Landroid/content/Intent;)V

    .line 837
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 833
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 834
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->unregister(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public register(Landroid/content/Intent;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 343
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 346
    .local v13, "origId":J
    :try_start_0
    const-string v2, "app"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    .line 347
    .local v15, "parcelable":Landroid/os/Parcelable;
    if-eqz v15, :cond_0

    instance-of v2, v15, Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    .line 351
    :cond_0
    const-string v2, "C2DMRegistrar"

    const-string v17, "Invalid parameter app"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 402
    :goto_0
    return-void

    .line 354
    :cond_1
    :try_start_1
    move-object v0, v15

    check-cast v0, Landroid/app/PendingIntent;

    move-object v9, v0

    .line 355
    .local v9, "appPI":Landroid/app/PendingIntent;
    invoke-virtual {v9}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 357
    .local v8, "uid":I
    const-string v2, "C2DMRegistrar"

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Register binder info: calling uid="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " pid="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " pending intent uid="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 363
    :cond_2
    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "appPackage":Ljava/lang/String;
    const-string v2, "sender"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "developerId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    const-string v2, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(ILjava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v2, "C2DMRegistrar"

    const-string v17, "Invalid parameter sender"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 371
    :cond_3
    :try_start_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v7, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 373
    .local v10, "extras":Landroid/os/Bundle;
    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 374
    .local v12, "key":Ljava/lang/String;
    const-string v2, "app"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "sender"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 378
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 379
    .local v16, "value":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 380
    check-cast v16, Ljava/lang/String;

    .end local v16    # "value":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-interface {v7, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 400
    .end local v4    # "appPackage":Ljava/lang/String;
    .end local v5    # "developerId":Ljava/lang/String;
    .end local v7    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "uid":I
    .end local v9    # "appPI":Landroid/app/PendingIntent;
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "key":Ljava/lang/String;
    .end local v15    # "parcelable":Landroid/os/Parcelable;
    :catchall_0
    move-exception v2

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 387
    .restart local v4    # "appPackage":Ljava/lang/String;
    .restart local v5    # "developerId":Ljava/lang/String;
    .restart local v7    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "uid":I
    .restart local v9    # "appPI":Landroid/app/PendingIntent;
    .restart local v10    # "extras":Landroid/os/Bundle;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v15    # "parcelable":Landroid/os/Parcelable;
    :cond_5
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getSignatureFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, "cert":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 393
    const-string v2, "SERVICE_DISABLED"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(ILjava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_6
    new-instance v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 398
    .local v1, "request":Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 400
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method public register(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;)V
    .locals 26
    .param p1, "request"    # Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getAndroidId()Ljava/lang/String;

    move-result-object v10

    .line 515
    .local v10, "androidId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 516
    .local v25, "url":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mAppPackage:Ljava/lang/String;

    .line 517
    .local v4, "appPackage":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mDeveloperId:Ljava/lang/String;

    .line 518
    .local v13, "developerId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mCert:Ljava/lang/String;

    .line 519
    .local v12, "cert":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mUid:I

    .line 520
    .local v3, "uid":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mExtraParams:Ljava/util/Map;

    move-object/from16 v16, v0

    .line 521
    .local v16, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v23

    .line 523
    .local v23, "serial":I
    const-string v2, "C2DMRegistrar"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register: url="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  device="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  app="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "cert"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  sender="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  device_user_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 532
    :cond_0
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    const-string v2, "C2DMRegistrar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "register: invalid url "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v2, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(ILjava/lang/String;Ljava/lang/String;)V

    .line 603
    :goto_0
    return-void

    .line 538
    :cond_1
    new-instance v19, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 539
    .local v19, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getSecurityToken()Ljava/lang/String;

    move-result-object v22

    .line 540
    .local v22, "securityToken":Ljava/lang/String;
    if-nez v22, :cond_2

    .line 541
    const-string v2, "AUTHENTICATION_FAILED"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_2
    const-string v2, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AidLogin "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v2, "app"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v18, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    if-eqz v16, :cond_3

    .line 553
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 554
    .local v15, "extraParam":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "X-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, v7, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 559
    .end local v15    # "extraParam":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "app"

    invoke-direct {v2, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sender"

    invoke-direct {v2, v5, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    if-eqz v12, :cond_4

    .line 562
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "cert"

    invoke-direct {v2, v5, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_4
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device"

    invoke-direct {v2, v5, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_user_id"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    :try_start_0
    new-instance v20, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .local v20, "reqEntity":Lorg/apache/http/HttpEntity;
    invoke-virtual/range {v19 .. v20}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 578
    .local v21, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    .line 580
    .local v24, "statusCode":I
    const/16 v2, 0xc8

    move/from16 v0, v24

    if-eq v0, v2, :cond_5

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register: http error "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->isAuthenticationError(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 584
    new-instance v2, Lorg/apache/http/auth/AuthenticationException;

    invoke-direct {v2}, Lorg/apache/http/auth/AuthenticationException;-><init>()V

    throw v2

    .line 570
    .end local v20    # "reqEntity":Lorg/apache/http/HttpEntity;
    .end local v21    # "response":Lorg/apache/http/HttpResponse;
    .end local v24    # "statusCode":I
    :catch_0
    move-exception v14

    .line 571
    .local v14, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    .end local v14    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v20    # "reqEntity":Lorg/apache/http/HttpEntity;
    .restart local v21    # "response":Lorg/apache/http/HttpResponse;
    .restart local v24    # "statusCode":I
    :cond_5
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 591
    .local v11, "body":Ljava/lang/String;
    const-string v2, "token="

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 592
    const-string v2, "\n"

    invoke-virtual {v11, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 593
    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v11, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 596
    :cond_6
    const-string v2, "="

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aget-object v6, v2, v5

    .line 597
    .local v6, "token":Ljava/lang/String;
    const-string v5, "registration_id"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendRegistrationMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 601
    .end local v6    # "token":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v11, v1, v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleError(ILjava/lang/String;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public unregister(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 468
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 470
    .local v6, "origId":J
    const-string v1, "app"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .line 471
    .local v8, "parcelable":Landroid/os/Parcelable;
    if-eqz v8, :cond_0

    instance-of v1, v8, Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 475
    :cond_0
    const-string v1, "C2DMRegistrar"

    const-string v11, "Invalid parameter app"

    invoke-static {v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_0
    return-void

    :cond_1
    move-object v9, v8

    .line 478
    check-cast v9, Landroid/app/PendingIntent;

    .line 479
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v9}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 480
    .local v5, "uid":I
    const/4 v4, 0x0

    .line 482
    .local v4, "isUnregCallerGCM":Z
    :try_start_0
    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "appPackage":Ljava/lang/String;
    const-string v1, "com.google.android.gsf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    const/4 v4, 0x1

    .line 487
    const-string v1, "app_gsf"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 491
    const-string v1, "device_user_id"

    const/4 v11, 0x0

    invoke-virtual {p1, v1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 492
    .local v10, "serial":I
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v10}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v5

    .line 494
    .end local v10    # "serial":I
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 498
    const-string v1, "SERVICE_DISABLED"

    invoke-direct {p0, v5, v3, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(ILjava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_3
    new-instance v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 504
    .local v0, "request":Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;
    const-string v1, "GOOG.USER_AID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->mUserAid:Ljava/lang/String;

    .line 505
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "request":Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "appPackage":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public unregister(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;)V
    .locals 23
    .param p1, "request"    # Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getAndroidId()Ljava/lang/String;

    move-result-object v10

    .line 609
    .local v10, "androidId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 610
    .local v22, "url":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->mAppPackage:Ljava/lang/String;

    .line 611
    .local v4, "appPackage":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->mUid:I

    .line 612
    .local v3, "uid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v20

    .line 613
    .local v20, "serial":I
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->mIsUnregCallerGCM:Z

    .line 615
    .local v14, "isUnregCallerGCM":Z
    const-string v2, "C2DMRegistrar"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    const-string v2, "unregister:"

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  url="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  app="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  user="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->mUserAid:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 624
    :cond_0
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    const-string v2, "C2DMRegistrar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregister: invalid url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v2, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(ILjava/lang/String;Ljava/lang/String;)V

    .line 687
    :goto_0
    return-void

    .line 630
    :cond_1
    new-instance v16, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 631
    .local v16, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getSecurityToken()Ljava/lang/String;

    move-result-object v19

    .line 632
    .local v19, "securityToken":Ljava/lang/String;
    if-nez v19, :cond_2

    .line 633
    const-string v2, "AUTHENTICATION_FAILED"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_2
    const-string v2, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AidLogin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v2, "app"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v15, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "app"

    invoke-direct {v2, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device"

    invoke-direct {v2, v5, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "delete"

    const-string v6, "true"

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_user_id"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->mUserAid:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 648
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "X-GOOG.USER_AID"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->mUserAid:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_3
    if-eqz v14, :cond_4

    const-string v13, "true"

    .line 653
    .local v13, "isGCMCaller":Ljava/lang/String;
    :goto_1
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "gcm_unreg_caller"

    invoke-direct {v2, v5, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :try_start_0
    new-instance v17, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    .local v17, "reqEntity":Lorg/apache/http/HttpEntity;
    invoke-virtual/range {v16 .. v17}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 665
    .local v18, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    .line 667
    .local v21, "statusCode":I
    const/16 v2, 0xc8

    move/from16 v0, v21

    if-eq v0, v2, :cond_5

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregister: http error "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->isAuthenticationError(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 671
    new-instance v2, Lorg/apache/http/auth/AuthenticationException;

    invoke-direct {v2}, Lorg/apache/http/auth/AuthenticationException;-><init>()V

    throw v2

    .line 652
    .end local v13    # "isGCMCaller":Ljava/lang/String;
    .end local v17    # "reqEntity":Lorg/apache/http/HttpEntity;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "statusCode":I
    :cond_4
    const-string v13, "false"

    goto :goto_1

    .line 658
    .restart local v13    # "isGCMCaller":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 659
    .local v12, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    .end local v12    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v17    # "reqEntity":Lorg/apache/http/HttpEntity;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v21    # "statusCode":I
    :cond_5
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 676
    .local v11, "body":Ljava/lang/String;
    const-string v2, "C2DMRegistrar"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "body= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 679
    :cond_6
    const-string v2, "deleted="

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 681
    const-string v5, "unregistered"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v2, p0

    move-object v6, v4

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendRegistrationMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 685
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v11, v1, v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleError(ILjava/lang/String;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
