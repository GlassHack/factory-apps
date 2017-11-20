.class public final Lcom/google/android/location/fused/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field b:Z

.field private final c:Lcom/google/android/location/fused/c;

.field private d:Z

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/c;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/bf;->a:Ljava/lang/Object;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/bf;->d:Z

    .line 19
    iput v1, p0, Lcom/google/android/location/fused/bf;->e:I

    .line 21
    iput v1, p0, Lcom/google/android/location/fused/bf;->f:I

    .line 26
    iput-wide v2, p0, Lcom/google/android/location/fused/bf;->h:J

    .line 28
    iput-boolean v1, p0, Lcom/google/android/location/fused/bf;->b:Z

    .line 31
    iput-wide v2, p0, Lcom/google/android/location/fused/bf;->i:J

    .line 34
    iput-object p1, p0, Lcom/google/android/location/fused/bf;->c:Lcom/google/android/location/fused/c;

    .line 35
    iget-object v0, p0, Lcom/google/android/location/fused/bf;->c:Lcom/google/android/location/fused/c;

    invoke-static {}, Lcom/google/android/location/fused/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/fused/bf;->g:J

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/google/android/location/fused/bf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/location/fused/bf;->b:Z

    .line 87
    iget-object v0, p0, Lcom/google/android/location/fused/bf;->c:Lcom/google/android/location/fused/c;

    invoke-static {}, Lcom/google/android/location/fused/c;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/fused/bf;->i:J

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)Z
    .locals 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/google/android/location/fused/bf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget v0, p0, Lcom/google/android/location/fused/bf;->f:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 47
    :goto_0
    iput p1, p0, Lcom/google/android/location/fused/bf;->f:I

    .line 48
    iget-object v2, p0, Lcom/google/android/location/fused/bf;->c:Lcom/google/android/location/fused/c;

    invoke-static {}, Lcom/google/android/location/fused/c;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/fused/bf;->g:J

    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Z)Z
    .locals 4

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/android/location/fused/bf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/fused/bf;->d:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 75
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/location/fused/bf;->d:Z

    .line 76
    iget-object v2, p0, Lcom/google/android/location/fused/bf;->c:Lcom/google/android/location/fused/c;

    invoke-static {}, Lcom/google/android/location/fused/c;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/fused/bf;->h:J

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Lcom/google/android/gms/location/LocationStatus;
    .locals 8

    .prologue
    const/16 v2, 0x8

    .line 104
    iget-object v5, p0, Lcom/google/android/location/fused/bf;->a:Ljava/lang/Object;

    monitor-enter v5

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/fused/bf;->d:Z

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x7

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/location/fused/bf;->h:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/location/LocationStatus;->a(IIJ)Lcom/google/android/gms/location/LocationStatus;

    move-result-object v0

    monitor-exit v5

    .line 129
    :goto_0
    return-object v0

    .line 112
    :cond_0
    iget v4, p0, Lcom/google/android/location/fused/bf;->e:I

    .line 113
    iget v3, p0, Lcom/google/android/location/fused/bf;->f:I

    .line 114
    iget-wide v0, p0, Lcom/google/android/location/fused/bf;->g:J

    .line 116
    iget-boolean v6, p0, Lcom/google/android/location/fused/bf;->b:Z

    if-eqz v6, :cond_2

    .line 117
    if-nez v4, :cond_1

    .line 119
    iget-wide v6, p0, Lcom/google/android/location/fused/bf;->i:J

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move v4, v2

    .line 122
    :cond_1
    if-nez v3, :cond_2

    .line 124
    iget-wide v6, p0, Lcom/google/android/location/fused/bf;->i:J

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move v3, v4

    .line 129
    :goto_1
    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/location/LocationStatus;->a(IIJ)Lcom/google/android/gms/location/LocationStatus;

    move-result-object v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_2
    move v2, v3

    move v3, v4

    goto :goto_1
.end method

.method public final b(I)Z
    .locals 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/android/location/fused/bf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget v0, p0, Lcom/google/android/location/fused/bf;->e:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 62
    :goto_0
    iput p1, p0, Lcom/google/android/location/fused/bf;->e:I

    .line 63
    iget-object v2, p0, Lcom/google/android/location/fused/bf;->c:Lcom/google/android/location/fused/c;

    invoke-static {}, Lcom/google/android/location/fused/c;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/fused/bf;->g:J

    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/location/fused/bf;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/google/android/location/fused/bf;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
