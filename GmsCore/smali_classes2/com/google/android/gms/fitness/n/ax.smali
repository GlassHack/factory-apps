.class public final Lcom/google/android/gms/fitness/n/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/f/g;

.field private final b:Landroid/support/v4/f/q;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-gtz p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput p1, p0, Lcom/google/android/gms/fitness/n/ax;->d:I

    .line 61
    new-instance v0, Landroid/support/v4/f/g;

    invoke-direct {v0, v1}, Landroid/support/v4/f/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/ax;->a:Landroid/support/v4/f/g;

    .line 62
    new-instance v0, Landroid/support/v4/f/q;

    invoke-direct {v0, v1}, Landroid/support/v4/f/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/ax;->b:Landroid/support/v4/f/q;

    .line 63
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ax;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final a(JLcom/google/android/gms/fitness/n/ay;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ax;->a:Landroid/support/v4/f/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/f/g;->a(J)Ljava/lang/Object;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    iget v1, p0, Lcom/google/android/gms/fitness/n/ax;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/fitness/n/ax;->h:I

    .line 79
    monitor-exit p0

    .line 109
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget v0, p0, Lcom/google/android/gms/fitness/n/ax;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/n/ax;->i:I

    .line 82
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/fitness/n/ay;->a(J)Ljava/lang/Object;

    move-result-object v1

    .line 92
    if-nez v1, :cond_1

    .line 93
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_1
    monitor-enter p0

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ax;->a:Landroid/support/v4/f/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/f/g;->a(J)Ljava/lang/Object;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 106
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/android/gms/fitness/n/ax;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/n/ax;->f:I

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ax;->a:Landroid/support/v4/f/g;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/f/g;->a(JLjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ax;->b:Landroid/support/v4/f/q;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/f/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget v0, p0, Lcom/google/android/gms/fitness/n/ax;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/n/ax;->c:I

    .line 106
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    iget v0, p0, Lcom/google/android/gms/fitness/n/ax;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/n/ax;->a(I)V

    move-object v0, v1

    .line 109
    goto :goto_0
.end method

.method public final a(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 128
    if-nez p3, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    monitor-enter p0

    .line 134
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/fitness/n/ax;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/n/ax;->e:I

    .line 135
    iget v0, p0, Lcom/google/android/gms/fitness/n/ax;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/n/ax;->c:I

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ax;->a:Landroid/support/v4/f/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/f/g;->a(J)Ljava/lang/Object;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/ax;->a:Landroid/support/v4/f/g;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/f/g;->a(JLjava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/ax;->b:Landroid/support/v4/f/q;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/support/v4/f/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    if-eqz v0, :cond_1

    .line 140
    iget v1, p0, Lcom/google/android/gms/fitness/n/ax;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/fitness/n/ax;->c:I

    .line 142
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget v1, p0, Lcom/google/android/gms/fitness/n/ax;->d:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/fitness/n/ax;->a(I)V

    .line 149
    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(I)V
    .locals 4

    .prologue
    .line 160
    :goto_0
    monitor-enter p0

    .line 161
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/fitness/n/ax;->c:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ax;->a:Landroid/support/v4/f/g;

    invoke-virtual {v0}, Landroid/support/v4/f/g;->a()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/fitness/n/ax;->c:I

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 166
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/fitness/n/ax;->c:I

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ax;->a:Landroid/support/v4/f/g;

    invoke-virtual {v0}, Landroid/support/v4/f/g;->a()I

    move-result v0

    if-nez v0, :cond_3

    .line 167
    :cond_2
    monitor-exit p0

    return-void

    .line 172
    :cond_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/fitness/n/ax;->c:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 173
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/ax;->a:Landroid/support/v4/f/g;

    invoke-virtual {v1, v0}, Landroid/support/v4/f/g;->a(I)J

    move-result-wide v2

    .line 174
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/ax;->a:Landroid/support/v4/f/g;

    invoke-virtual {v1, v0}, Landroid/support/v4/f/g;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/ax;->a:Landroid/support/v4/f/g;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/f/g;->b(J)V

    .line 176
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/ax;->b:Landroid/support/v4/f/q;

    invoke-virtual {v1, v0}, Landroid/support/v4/f/q;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget v0, p0, Lcom/google/android/gms/fitness/n/ax;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/fitness/n/ax;->c:I

    .line 178
    iget v0, p0, Lcom/google/android/gms/fitness/n/ax;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/n/ax;->g:I

    .line 179
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 305
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/fitness/n/ax;->h:I

    iget v2, p0, Lcom/google/android/gms/fitness/n/ax;->i:I

    add-int/2addr v1, v2

    .line 306
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/n/ax;->h:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 307
    :cond_0
    const-string v1, "LongSparseCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gms/fitness/n/ax;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/gms/fitness/n/ax;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/gms/fitness/n/ax;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
