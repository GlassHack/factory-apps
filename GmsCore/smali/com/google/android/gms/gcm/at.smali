.class public final Lcom/google/android/gms/gcm/at;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static c:Ljava/util/concurrent/BlockingQueue;

.field static f:Lcom/google/android/gms/gcm/at;

.field private static k:Ljava/lang/String;


# instance fields
.field a:Lorg/apache/http/client/HttpClient;

.field b:Lcom/google/android/gms/gcm/aw;

.field d:J

.field e:I

.field g:I

.field h:I

.field i:Z

.field j:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private final n:Landroid/content/Context;

.field private final o:Ljava/lang/Object;

.field private final p:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 240
    const-string v0, "Error="

    sput-object v0, Lcom/google/android/gms/gcm/at;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/gcm/aw;)V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/at;->l:Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/at;->o:Ljava/lang/Object;

    .line 268
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/at;->p:Ljava/util/Random;

    .line 306
    iput-object p1, p0, Lcom/google/android/gms/gcm/at;->n:Landroid/content/Context;

    .line 307
    iput-object p2, p0, Lcom/google/android/gms/gcm/at;->b:Lcom/google/android/gms/gcm/aw;

    .line 308
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmService;->b(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/at;->a:Lorg/apache/http/client/HttpClient;

    .line 309
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/at;->a()V

    .line 310
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)J
    .locals 3

    .prologue
    .line 873
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 874
    :goto_0
    if-eqz v0, :cond_1

    .line 877
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 878
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 879
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 885
    :goto_1
    return-wide v0

    .line 873
    :cond_0
    const-string v0, "Retry-After"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing retryAfter - use default sleep "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 885
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 12

    .prologue
    .line 360
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 363
    :try_start_0
    const-string v0, "GOOG.USER_SERIAL"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 364
    const-string v0, "GOOG.USER_AID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    const-string v1, "google.messenger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 369
    const-string v3, "google.messenger"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 371
    const-string v3, "GCM"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Register binder info: calling uid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 376
    :cond_0
    const-string v0, "sender"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 377
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const-string v0, "GCM"

    const-string v3, "Invalid parameter sender"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v4, "INVALID_PARAMETERS"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 419
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    .line 382
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/at;->b:Lcom/google/android/gms/gcm/aw;

    invoke-virtual {v0, p2, v6, v2}, Lcom/google/android/gms/gcm/aw;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 384
    if-eqz v5, :cond_2

    .line 386
    const-string v0, "GCM"

    const-string v3, "returning regid from cache"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v4, "registration_id"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 419
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 392
    :cond_2
    :try_start_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 393
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 394
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    const-string v5, "app"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "sender"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 396
    const-string v5, "GOOG."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "GOOG.USER_AID"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "GOOG.USER_TOKEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    .line 403
    :cond_4
    :try_start_3
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 407
    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 409
    :catch_0
    move-exception v5

    :try_start_4
    const-string v5, "GCM"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 419
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 413
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/gcm/at;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 415
    const-string v4, "SERVICE_DISABLED"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 419
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 417
    :cond_6
    :try_start_6
    iget-object v4, p0, Lcom/google/android/gms/gcm/at;->j:Ljava/lang/String;

    move-object v3, p0

    move-object v5, p2

    move v8, v2

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/gcm/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILandroid/os/Messenger;)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 419
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method private a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/google/android/gms/gcm/at;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not posting request to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because of backoff period"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-string v4, "SERVICE_NOT_AVAILABLE"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 840
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 936
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    if-eqz p6, :cond_0

    .line 940
    invoke-virtual {v2, p6, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 943
    :cond_0
    if-eqz p1, :cond_1

    .line 944
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 945
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 947
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/gcm/at;->c:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_2

    .line 956
    sget-object v0, Lcom/google/android/gms/gcm/at;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 983
    :goto_1
    return-object v2

    .line 949
    :catch_0
    move-exception v0

    const-string v0, "Failed to send registration using messenger"

    invoke-static {v0}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 963
    :cond_2
    invoke-static {}, Lcom/google/android/gms/gcm/f;->d()I

    move-result v0

    .line 964
    if-eqz p2, :cond_3

    if-ne p2, v0, :cond_5

    .line 965
    :cond_3
    const-string v0, "GCM"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send registration intent for app= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 968
    :cond_4
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    iget-object v0, p0, Lcom/google/android/gms/gcm/at;->n:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 971
    :cond_5
    const-string v0, "GCM"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send registration intent for app= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 975
    :cond_6
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-class v4, Lcom/google/android/gms/gcm/GcmProxyReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 977
    const-string v0, "GOOG.app"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    iget-object v0, p0, Lcom/google/android/gms/gcm/at;->n:Landroid/content/Context;

    move v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    goto/16 :goto_1
.end method

.method private a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 10

    .prologue
    .line 918
    if-eqz p5, :cond_0

    .line 919
    invoke-direct {p0, p4}, Lcom/google/android/gms/gcm/at;->c(Ljava/lang/String;)V

    .line 921
    :cond_0
    const-string v5, "error"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Messenger;ILjava/lang/String;Lorg/apache/http/HttpResponse;Ljava/lang/String;)Landroid/content/Intent;
    .locals 10

    .prologue
    .line 848
    if-eqz p3, :cond_1

    sget-object v0, Lcom/google/android/gms/gcm/at;->k:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/gcm/at;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 851
    :cond_0
    :goto_0
    invoke-static {p4}, Lcom/google/android/gms/gcm/at;->a(Lorg/apache/http/HttpResponse;)J

    move-result-wide v8

    .line 852
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    .line 853
    invoke-direct {p0, v6}, Lcom/google/android/gms/gcm/at;->c(Ljava/lang/String;)V

    .line 854
    const-string v5, "error"

    const-string v7, "Retry-After"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 861
    :goto_1
    return-object v0

    .line 848
    :cond_1
    const-string v6, "SERVICE_NOT_AVAILABLE"

    goto :goto_0

    .line 861
    :cond_2
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILandroid/os/Messenger;)Landroid/content/Intent;
    .locals 12

    .prologue
    .line 546
    const-string v2, "register"

    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 547
    if-eqz v2, :cond_0

    .line 646
    :goto_0
    return-object v2

    .line 550
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/gcm/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 551
    iget-object v5, p0, Lcom/google/android/gms/gcm/at;->m:Ljava/lang/String;

    .line 555
    const-string v2, "GCM"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register: url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  device="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  cert="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  sender="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  device_user_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 563
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 564
    const-string v2, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "register: invalid url "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v6, "INVALID_PARAMETERS"

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p5

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 568
    :cond_2
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lcom/google/android/gms/gcm/at;->l:Ljava/lang/String;

    .line 570
    if-nez v2, :cond_3

    .line 571
    const-string v6, "AUTHENTICATION_FAILED"

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p5

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 574
    :cond_3
    const-string v3, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "AidLogin "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v2, "app"

    invoke-virtual {v6, v2, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 582
    if-eqz p4, :cond_4

    .line 583
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 584
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v3, "X-"

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v9, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 589
    :cond_4
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "app"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sender"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    if-eqz v4, :cond_5

    .line 592
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cert"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_5
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device"

    invoke-direct {v2, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    if-eqz p5, :cond_6

    .line 596
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device_user_id"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_6
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "app_ver"

    iget-object v4, p0, Lcom/google/android/gms/gcm/at;->n:Landroid/content/Context;

    invoke-static {v4, p2}, Lcom/google/android/gms/gcm/ab;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "info"

    iget-object v4, p0, Lcom/google/android/gms/gcm/at;->n:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/gcm/ab;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v2, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 615
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/gcm/at;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 616
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 618
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_7

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "register: http error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 621
    invoke-static {v2}, Lcom/google/android/gms/gcm/at;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 624
    const-string v6, "AUTHENTICATION_FAILED"

    const/4 v7, 0x1

    move-object v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p5

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto/16 :goto_0

    .line 607
    :catch_0
    move-exception v2

    const-string v6, "INVALID_PARAMETERS"

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p5

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 629
    :cond_7
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 634
    const-string v2, "token="

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 635
    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_8
    const-string v2, "="

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v8, v2, v3

    .line 636
    const-string v2, "subtype"

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 638
    move/from16 v0, p5

    invoke-direct {p0, p2, p3, v0, v8}, Lcom/google/android/gms/gcm/at;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 641
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/at;->b()V

    .line 642
    const-string v7, "registration_id"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v3, p0

    move-object/from16 v4, p6

    move/from16 v5, p5

    move-object v6, p2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 632
    :catch_1
    move-exception v2

    const-string v6, "SERVICE_NOT_AVAILABLE"

    const/4 v7, 0x1

    move-object v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p5

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    move-object v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p5

    move-object v7, p2

    .line 646
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Lorg/apache/http/HttpResponse;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Messenger;I)Landroid/content/Intent;
    .locals 12

    .prologue
    .line 737
    const-string v2, "unregister"

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 738
    if-eqz v2, :cond_0

    .line 823
    :goto_0
    return-object v2

    .line 741
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/gcm/at;->m:Ljava/lang/String;

    .line 746
    iget-object v3, p0, Lcom/google/android/gms/gcm/at;->b:Lcom/google/android/gms/gcm/aw;

    move/from16 v0, p4

    invoke-virtual {v3, p2, v0}, Lcom/google/android/gms/gcm/aw;->b(Ljava/lang/String;I)Z

    .line 748
    const-string v3, "GCM"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unregister: url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 752
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 753
    const-string v2, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unregister: invalid url "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v6, "INVALID_PARAMETERS"

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p4

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 757
    :cond_2
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 758
    iget-object v4, p0, Lcom/google/android/gms/gcm/at;->l:Ljava/lang/String;

    .line 759
    if-nez v4, :cond_3

    .line 760
    const-string v6, "AUTHENTICATION_FAILED"

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p4

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 762
    :cond_3
    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AidLogin "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v4, "app"

    invoke-virtual {v3, v4, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 768
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "app"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "delete"

    const-string v6, "true"

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "app_ver"

    iget-object v6, p0, Lcom/google/android/gms/gcm/at;->n:Landroid/content/Context;

    invoke-static {v6, p2}, Lcom/google/android/gms/gcm/ab;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "track_pkgs"

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    if-eqz p3, :cond_5

    const-string v2, "true"

    .line 776
    :goto_1
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "gcm_unreg_caller"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 778
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "X-GOOG.USER_AID"

    move-object/from16 v0, p5

    invoke-direct {v2, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_4
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 794
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/gcm/at;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 795
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 797
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_6

    .line 798
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unregister: http error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 800
    invoke-static {v2}, Lcom/google/android/gms/gcm/at;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 801
    const-string v6, "AUTHENTICATION_FAILED"

    const/4 v7, 0x1

    move-object v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p4

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto/16 :goto_0

    .line 775
    :cond_5
    const-string v2, "false"

    goto :goto_1

    .line 787
    :catch_0
    move-exception v2

    const-string v6, "INVALID_PARAMETERS"

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p4

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 806
    :cond_6
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 810
    const-string v2, "GCM"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "body= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 813
    :cond_7
    const-string v2, "deleted="

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 814
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/at;->b()V

    .line 815
    const-string v7, "unregistered"

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v3, p0

    move-object/from16 v4, p6

    move/from16 v5, p4

    move-object v6, p2

    move-object v8, p2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 808
    :catch_1
    move-exception v2

    const-string v6, "SERVICE_NOT_AVAILABLE"

    const/4 v7, 0x1

    move-object v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p4

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    move-object v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p4

    move-object v7, p2

    .line 823
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Lorg/apache/http/HttpResponse;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0
.end method

.method static a(Landroid/content/Context;)Lcom/google/android/gms/gcm/at;
    .locals 2

    .prologue
    .line 298
    sget-object v0, Lcom/google/android/gms/gcm/at;->f:Lcom/google/android/gms/gcm/at;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcom/google/android/gms/gcm/at;

    invoke-static {p0}, Lcom/google/android/gms/gcm/aw;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/aw;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/gcm/at;-><init>(Landroid/content/Context;Lcom/google/android/gms/gcm/aw;)V

    sput-object v0, Lcom/google/android/gms/gcm/at;->f:Lcom/google/android/gms/gcm/at;

    .line 302
    :cond_0
    sget-object v0, Lcom/google/android/gms/gcm/at;->f:Lcom/google/android/gms/gcm/at;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/android/gms/gcm/at;->b:Lcom/google/android/gms/gcm/aw;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/gcm/aw;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 660
    iget-boolean v1, p0, Lcom/google/android/gms/gcm/at;->i:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-object p4

    .line 665
    :cond_1
    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/g;->c([B)Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p4, v2, v3, v1}, Lcom/google/android/gms/gcm/a/b;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 678
    iget-object v1, p0, Lcom/google/android/gms/gcm/at;->b:Lcom/google/android/gms/gcm/aw;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p4}, Lcom/google/android/gms/gcm/aw;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    const-string v1, "GCM"

    const-string v2, "Error while creating new AES symmetric key"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 889
    const/16 v0, 0x193

    if-eq p0, v0, :cond_0

    const/16 v0, 0x191

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 538
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gsf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 431
    iget-object v2, p0, Lcom/google/android/gms/gcm/at;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 433
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 434
    if-nez v3, :cond_1

    .line 435
    const-string v1, "GCM"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const-string v1, "ai is null"

    invoke-static {v1}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    .line 452
    :cond_0
    :goto_0
    return-object v0

    .line 440
    :cond_1
    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 441
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    .line 443
    :cond_2
    const-string v1, "GCM"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    const-string v1, "signature is null."

    invoke-static {v1}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    goto :goto_0

    .line 448
    :cond_3
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v1, "GCM"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "message digest is null"

    invoke-static {v1}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :catch_1
    move-exception v1

    goto :goto_0

    .line 448
    :cond_4
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    if-nez v2, :cond_5

    const-string v1, "GCM"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "digest is null"

    invoke-static {v1}, Lcom/google/android/gms/gcm/at;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v4, v2

    :goto_1
    if-ge v1, v4, :cond_6

    aget-byte v5, v2, v1

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 696
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AUTHENTICATION_FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/at;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/gcm/at;->h:I

    if-nez v0, :cond_1

    monitor-exit v1

    .line 701
    :goto_0
    return-void

    .line 697
    :cond_1
    iget v0, p0, Lcom/google/android/gms/gcm/at;->e:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/gcm/at;->g:I

    iget-object v2, p0, Lcom/google/android/gms/gcm/at;->p:Ljava/util/Random;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/gcm/at;->e:I

    :goto_1
    iget v0, p0, Lcom/google/android/gms/gcm/at;->e:I

    iget v2, p0, Lcom/google/android/gms/gcm/at;->h:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/at;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lcom/google/android/gms/gcm/at;->e:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/gcm/at;->d:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/gcm/at;->e:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/gcm/at;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 699
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/at;->b()V

    goto :goto_0
.end method

.method private c()Z
    .locals 6

    .prologue
    .line 687
    iget-object v1, p0, Lcom/google/android/gms/gcm/at;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 688
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/gcm/at;->d:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 987
    const-string v0, "GCM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[C2DMRegistrar."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 990
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 342
    const-string v0, "app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 346
    :cond_0
    const-string v0, "GCM"

    const-string v1, "Invalid parameter app"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v0, 0x0

    .line 352
    :goto_0
    return-object v0

    .line 349
    :cond_1
    check-cast v0, Landroid/app/PendingIntent;

    .line 350
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/gcm/at;->a(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 313
    iget-object v1, p0, Lcom/google/android/gms/gcm/at;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 314
    const-string v2, "gcm_minimum_backoff"

    const/16 v3, 0x7d0

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/gcm/at;->g:I

    .line 316
    const-string v2, "c2dm_aid_url"

    invoke-static {v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/gcm/at;->j:Ljava/lang/String;

    .line 317
    iget-object v2, p0, Lcom/google/android/gms/gcm/at;->b:Lcom/google/android/gms/gcm/aw;

    const-string v3, "gcm_cache2"

    invoke-static {v1, v3, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/google/android/gms/gcm/aw;->c:I

    .line 319
    iget-object v2, p0, Lcom/google/android/gms/gcm/at;->j:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 320
    const-string v2, "https://android.clients.google.com/c2dm/register3"

    iput-object v2, p0, Lcom/google/android/gms/gcm/at;->j:Ljava/lang/String;

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/gcm/at;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gcm_maximum_backoff"

    const v4, 0x1b7740

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/gcm/at;->h:I

    .line 324
    iget-object v2, p0, Lcom/google/android/gms/gcm/at;->b:Lcom/google/android/gms/gcm/aw;

    invoke-virtual {v2}, Lcom/google/android/gms/gcm/aw;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "gcm_enable_encryption"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/at;->i:Z

    .line 326
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/android/gms/gcm/at;->m:Ljava/lang/String;

    .line 335
    iput-object p2, p0, Lcom/google/android/gms/gcm/at;->l:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public final a(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/android/gms/gcm/at;->a:Lorg/apache/http/client/HttpClient;

    .line 331
    return-void
.end method

.method public final b(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 14

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 484
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 486
    const-string v0, "app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 490
    :cond_0
    const-string v0, "GCM"

    const-string v1, "Invalid parameter app"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v0, 0x0

    .line 527
    :goto_0
    return-object v0

    .line 494
    :cond_1
    const-string v1, "google.messenger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 496
    check-cast v0, Landroid/app/PendingIntent;

    .line 497
    const-string v2, "GOOG.USER_SERIAL"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 498
    const-string v3, "GOOG.USER_AID"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 503
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-static {v3}, Lcom/google/android/gms/gcm/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 508
    const-string v0, "app_gsf"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_2

    move-object v3, v0

    .line 512
    :cond_2
    const-string v0, "gcm_unreg_caller"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    const/4 v7, 0x1

    .line 516
    :cond_3
    const-string v0, "track_pkgs"

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 519
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/gcm/at;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 521
    const-string v4, "SERVICE_DISABLED"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/gcm/at;->a(Landroid/os/Messenger;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 527
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 524
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/gcm/at;->j:Ljava/lang/String;

    move-object v4, p0

    move-object v6, v3

    move v8, v2

    move-object v10, v1

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/gcm/at;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Messenger;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 527
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method final b()V
    .locals 4

    .prologue
    .line 729
    iget-object v1, p0, Lcom/google/android/gms/gcm/at;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 730
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/google/android/gms/gcm/at;->d:J

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/gcm/at;->e:I

    .line 732
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
