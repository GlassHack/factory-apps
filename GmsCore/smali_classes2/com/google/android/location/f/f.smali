.class public final Lcom/google/android/location/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/location/f/g;

.field private b:J

.field private c:Ljava/lang/Boolean;

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method private declared-synchronized b()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 121
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/f/f;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 122
    const/4 v0, 0x1

    .line 129
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 123
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/location/f/f;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/f/f;->a:Lcom/google/android/location/f/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(JLcom/google/android/location/f/g;)V
    .locals 7

    .prologue
    .line 93
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/google/android/location/f/g;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/f/f;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/f/f;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/location/f/f;->d:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    if-ge v0, v1, :cond_2

    .line 104
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/google/android/location/f/f;->a:Lcom/google/android/location/f/g;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/google/android/location/f/f;->a:Lcom/google/android/location/f/g;

    invoke-virtual {p3, v0}, Lcom/google/android/location/f/g;->b(Lcom/google/android/location/f/g;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/f/f;->e:Z

    .line 115
    :cond_2
    iput-wide p1, p0, Lcom/google/android/location/f/f;->b:J

    .line 116
    iput-object p3, p0, Lcom/google/android/location/f/f;->a:Lcom/google/android/location/f/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ZJ)V
    .locals 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iput-wide p2, p0, Lcom/google/android/location/f/f;->d:J

    .line 88
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/f/f;->c:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/f/f;->b()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/location/f/f;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/location/f/f;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
