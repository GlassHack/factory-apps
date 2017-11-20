.class public Lcom/google/android/gms/org/conscrypt/FileClientSessionCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_SIZE:I = 0xc

.field static final caches:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized reset()V
    .locals 2

    .prologue
    .line 340
    const-class v1, Lcom/google/android/gms/org/conscrypt/FileClientSessionCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit v1

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized usingDirectory(Ljava/io/File;)Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;
    .locals 3

    .prologue
    .line 330
    const-class v1, Lcom/google/android/gms/org/conscrypt/FileClientSessionCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/g;

    .line 331
    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lcom/google/android/gms/org/conscrypt/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/g;-><init>(Ljava/io/File;)V

    .line 333
    sget-object v2, Lcom/google/android/gms/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_0
    monitor-exit v1

    return-object v0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
