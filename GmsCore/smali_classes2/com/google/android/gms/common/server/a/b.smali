.class public final Lcom/google/android/gms/common/server/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/common/server/a/b;


# instance fields
.field private final b:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/a/b;->b:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method public static a()Lcom/google/android/gms/common/server/a/b;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/google/android/gms/common/server/a/b;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/server/a/b;->a:Lcom/google/android/gms/common/server/a/b;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/google/android/gms/common/server/a/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/a/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/a/b;->a:Lcom/google/android/gms/common/server/a/b;

    .line 30
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/server/a/b;->a:Lcom/google/android/gms/common/server/a/b;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Lcom/google/android/gms/common/server/a/b;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/common/server/a/b;->b:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
