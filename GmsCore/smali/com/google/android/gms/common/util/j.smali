.class public final Lcom/google/android/gms/common/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/util/i;


# static fields
.field private static a:Lcom/google/android/gms/common/util/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Lcom/google/android/gms/common/util/i;
    .locals 2

    .prologue
    .line 15
    const-class v1, Lcom/google/android/gms/common/util/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/util/j;->a:Lcom/google/android/gms/common/util/j;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/google/android/gms/common/util/j;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/util/j;->a:Lcom/google/android/gms/common/util/j;

    .line 19
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/util/j;->a:Lcom/google/android/gms/common/util/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
