.class final Lcom/google/android/gms/analytics/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/bi;


# instance fields
.field private final a:J

.field private final b:I

.field private c:D

.field private d:J

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/bc;->e:Ljava/lang/Object;

    .line 32
    const/16 v0, 0x3c

    iput v0, p0, Lcom/google/android/gms/analytics/bc;->b:I

    .line 33
    iget v0, p0, Lcom/google/android/gms/analytics/bc;->b:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/bc;->c:D

    .line 34
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/bc;->a:J

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/analytics/bc;->f:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/bc;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/analytics/bc;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 68
    iget-wide v4, p0, Lcom/google/android/gms/analytics/bc;->c:D

    iget v0, p0, Lcom/google/android/gms/analytics/bc;->b:I

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    .line 69
    iget-wide v4, p0, Lcom/google/android/gms/analytics/bc;->d:J

    sub-long v4, v2, v4

    .line 70
    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/gms/analytics/bc;->a:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    .line 71
    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_0

    .line 72
    iget v0, p0, Lcom/google/android/gms/analytics/bc;->b:I

    int-to-double v6, v0

    iget-wide v8, p0, Lcom/google/android/gms/analytics/bc;->c:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/analytics/bc;->c:D

    .line 75
    :cond_0
    iput-wide v2, p0, Lcom/google/android/gms/analytics/bc;->d:J

    .line 76
    iget-wide v2, p0, Lcom/google/android/gms/analytics/bc;->c:D

    cmpl-double v0, v2, v10

    if-ltz v0, :cond_1

    .line 77
    iget-wide v2, p0, Lcom/google/android/gms/analytics/bc;->c:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/analytics/bc;->c:D

    .line 78
    const/4 v0, 0x1

    monitor-exit v1

    .line 81
    :goto_0
    return v0

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Excessive "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/bc;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " detected; call ignored."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
