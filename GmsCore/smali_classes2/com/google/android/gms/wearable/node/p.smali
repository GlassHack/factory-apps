.class final Lcom/google/android/gms/wearable/node/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field final synthetic c:Lcom/google/android/gms/wearable/node/o;

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/node/o;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/p;->c:Lcom/google/android/gms/wearable/node/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/node/o;B)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/node/p;-><init>(Lcom/google/android/gms/wearable/node/o;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/google/android/gms/wearable/node/p;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wearable/node/p;->a:I

    .line 325
    return-void
.end method

.method final a(Lcom/google/android/gms/wearable/d/d;)V
    .locals 8

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/google/android/gms/wearable/node/p;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/wearable/node/p;->f:J

    .line 347
    :goto_0
    const-string v2, "Session: %s, (%d/%d), duration %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/wearable/node/p;->d:J

    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/text/format/Time;->set(J)V

    const-string v6, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/gms/wearable/node/p;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/google/android/gms/wearable/node/p;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v6, p0, Lcom/google/android/gms/wearable/node/p;->e:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/wearable/d/d;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 351
    return-void

    .line 344
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 332
    if-eqz p1, :cond_0

    .line 333
    iput v0, p0, Lcom/google/android/gms/wearable/node/p;->b:I

    .line 334
    iput v0, p0, Lcom/google/android/gms/wearable/node/p;->a:I

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/p;->e:J

    .line 336
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/p;->f:J

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/p;->d:J

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/node/p;->f:J

    goto :goto_0
.end method
