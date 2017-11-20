.class public final Lcom/google/android/gms/fitness/l/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field b:Z

.field c:J

.field final d:J

.field final synthetic e:Lcom/google/android/gms/fitness/l/b;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/l/b;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    .line 122
    iput-object p1, p0, Lcom/google/android/gms/fitness/l/e;->e:Lcom/google/android/gms/fitness/l/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/l/e;->b:Z

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/l/e;->c:J

    .line 123
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/l/e;->a:J

    .line 125
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->k()J

    move-result-wide v0

    .line 126
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 127
    iput-wide v4, p0, Lcom/google/android/gms/fitness/l/e;->d:J

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/fitness/l/e;->d:J

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/fitness/l/b;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;B)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/l/e;-><init>(Lcom/google/android/gms/fitness/l/b;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V

    return-void
.end method
