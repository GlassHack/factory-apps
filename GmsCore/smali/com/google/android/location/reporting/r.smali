.class public final Lcom/google/android/location/reporting/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/location/reporting/r;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;J)V
    .locals 6

    .prologue
    const/4 v1, 0x3

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    .line 146
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/r;->c:Ljava/util/Random;

    .line 149
    sget-object v2, Lcom/google/android/location/reporting/r;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    const-string v4, "apiLevel"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 153
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lastPosition"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "lastActivityProcessedMillis"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "locationReportingIntentTimestamp"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "locationReportsSinceLastWifiAttached"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    :cond_0
    if-ge v0, v1, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/google/android/location/reporting/r;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/location/reporting/r;->a(JLjava/util/Collection;)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "apiLevel"

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 152
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/location/reporting/r;
    .locals 4

    .prologue
    .line 135
    invoke-static {p0}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 136
    invoke-static {p0}, Lcom/google/android/location/reporting/b/a;->a(Landroid/content/Context;)V

    .line 137
    const-string v0, "LOCATION_REPORTING"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 140
    new-instance v1, Lcom/google/android/location/reporting/r;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/location/reporting/r;-><init>(Landroid/content/SharedPreferences;J)V

    return-object v1
.end method

.method private a(D)Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;
    .locals 7

    .prologue
    .line 445
    sget-object v1, Lcom/google/android/location/reporting/r;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/google/android/location/reporting/r;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 449
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    .line 450
    invoke-virtual {v0}, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->e()J

    move-result-wide v4

    long-to-double v4, v4

    cmpl-double v3, v4, p1

    if-nez v3, :cond_0

    .line 451
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/List;
    .locals 3

    .prologue
    .line 308
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse upload request from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    iget-object v0, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uploadRequests"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(JLjava/util/Collection;)V
    .locals 3

    .prologue
    .line 217
    sget-object v0, Lcom/google/android/location/reporting/r;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Caller must grab lock before calling"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    const-string v1, "uploadRequests"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    .line 232
    invoke-virtual {v0}, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->g()Lcom/google/android/gms/location/reporting/UploadRequest;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/location/reporting/r;->a(Lcom/google/android/gms/location/reporting/UploadRequest;J)Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    goto :goto_0

    .line 234
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Collection;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 391
    sget-object v1, Lcom/google/android/location/reporting/r;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    const-string v0, "GCoreUlr"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const-string v0, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing burst requests "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/google/android/location/reporting/r;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 397
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 398
    invoke-static {v0}, Lcom/google/android/location/reporting/r;->b(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 399
    iget-object v3, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "uploadRequests"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 400
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 401
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 475
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/android/location/reporting/a/d;

    .line 476
    const/4 v0, 0x0

    .line 477
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    .line 478
    invoke-virtual {v0}, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->d()Lcom/google/android/location/reporting/a/d;

    move-result-object v0

    aput-object v0, v2, v1

    .line 479
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 480
    goto :goto_0

    .line 482
    :cond_0
    new-instance v0, Lcom/google/android/location/reporting/a/c;

    invoke-direct {v0}, Lcom/google/android/location/reporting/a/c;-><init>()V

    .line 483
    iput-object v2, v0, Lcom/google/android/location/reporting/a/c;->a:[Lcom/google/android/location/reporting/a/d;

    .line 485
    invoke-static {v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    .line 486
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/util/Collection;
    .locals 5

    .prologue
    .line 320
    sget-object v1, Lcom/google/android/location/reporting/r;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    const-string v2, "uploadRequests"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    if-nez v2, :cond_0

    .line 325
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 328
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 330
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 331
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 332
    const-class v0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 334
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    invoke-direct {p0, v2, v0}, Lcom/google/android/location/reporting/r;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private e()[J
    .locals 8

    .prologue
    .line 504
    sget-object v2, Lcom/google/android/location/reporting/r;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 505
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "encryptionKey_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    .line 506
    :cond_0
    if-nez v0, :cond_1

    .line 507
    invoke-direct {p0}, Lcom/google/android/location/reporting/r;->f()[J

    move-result-object v0

    .line 509
    :cond_1
    monitor-exit v2

    return-object v0

    .line 505
    :cond_2
    iget-object v4, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    invoke-interface {v4, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    aput-wide v4, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private f()[J
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 538
    const/4 v0, 0x4

    new-array v2, v0, [J

    .line 539
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "encryptionKey_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 541
    iget-object v4, p0, Lcom/google/android/location/reporting/r;->c:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    .line 542
    aput-wide v4, v2, v0

    .line 543
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 546
    return-object v2
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/reporting/UploadRequest;J)Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 348
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding burst request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/reporting/UploadRequest;->d()J

    move-result-wide v2

    .line 352
    sget-object v0, Lcom/google/android/location/reporting/service/y;->C:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 353
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 354
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " duration too long; programming or deserialization error?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 356
    const-string v3, "GCoreUlr"

    invoke-static {v3, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    :goto_0
    add-long v4, p2, v0

    .line 361
    sget-object v7, Lcom/google/android/location/reporting/r;->a:Ljava/lang/Object;

    monitor-enter v7

    .line 362
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/location/reporting/r;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 366
    iget-object v1, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    const-string v2, "uploadRequestId"

    const-wide/16 v8, 0x0

    invoke-interface {v1, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 367
    new-instance v1, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;-><init>(JJLcom/google/android/gms/location/reporting/UploadRequest;)V

    .line 371
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-static {v0}, Lcom/google/android/location/reporting/r;->b(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v4, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "uploadRequests"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "uploadRequestId"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 377
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string v1, "apiLevel"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 205
    sget-object v1, Lcom/google/android/location/reporting/r;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/reporting/r;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/reporting/r;->a(JLjava/util/Collection;)V

    .line 207
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uploadRequests: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/reporting/r;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public final b(J)Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;
    .locals 5

    .prologue
    .line 411
    sget-object v1, Lcom/google/android/location/reporting/r;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    long-to-double v2, p1

    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/google/android/location/reporting/r;->a(D)Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_1

    .line 414
    const-string v2, "GCoreUlr"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cancelling burst request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/location/reporting/r;->a(Ljava/util/Collection;)Z

    .line 419
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Ljavax/crypto/spec/SecretKeySpec;
    .locals 6

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/google/android/location/reporting/r;->e()[J

    move-result-object v1

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v1, v0

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 266
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public final c()Ljava/util/List;
    .locals 6

    .prologue
    .line 277
    sget-object v1, Lcom/google/android/location/reporting/r;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/r;->b:Landroid/content/SharedPreferences;

    const-string v2, "uploadRequests"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-nez v2, :cond_0

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 285
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 286
    new-instance v1, Lcom/google/android/location/reporting/a/c;

    invoke-direct {v1}, Lcom/google/android/location/reporting/a/c;-><init>()V

    .line 287
    array-length v3, v0

    invoke-static {v1, v0, v3}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    .line 289
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iget-object v1, v1, Lcom/google/android/location/reporting/a/c;->a:[Lcom/google/android/location/reporting/a/d;

    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    .line 291
    invoke-static {v5}, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->a(Lcom/google/android/location/reporting/a/d;)Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/protobuf/nano/i; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    invoke-direct {p0, v2, v0}, Lcom/google/android/location/reporting/r;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 296
    :catch_1
    move-exception v0

    .line 297
    invoke-direct {p0, v2, v0}, Lcom/google/android/location/reporting/r;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(J)Z
    .locals 7

    .prologue
    .line 431
    sget-object v1, Lcom/google/android/location/reporting/r;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/location/reporting/r;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->f()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 433
    :cond_1
    :try_start_1
    const-string v0, "GCoreUlr"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    const-string v0, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing expired burst requests at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/location/reporting/r;->a(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method
