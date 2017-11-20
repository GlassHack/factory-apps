.class public abstract Lcom/google/j/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/a/f;


# instance fields
.field private a:Ljava/lang/Exception;

.field private b:Lcom/google/g/a/d/a;

.field private c:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-direct {p0}, Lcom/google/j/a/a;->l()V

    .line 21
    return-void
.end method

.method private declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/j/a/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/j/a/a;->a:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/j/a/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/j/a/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/j/a/a;->b:Lcom/google/g/a/d/a;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/j/a/a;->b:Lcom/google/g/a/d/a;

    invoke-virtual {v0}, Lcom/google/g/a/d/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized H_()I
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/a/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized I_()V
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/j/a/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized J_()V
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/j/a/a;->a(I)V

    .line 95
    invoke-direct {p0}, Lcom/google/j/a/a;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a()V
    .locals 2

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/a/a;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "state != STATE_COMPLETED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 29
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected final declared-synchronized a(Lcom/google/g/a/d/a;)V
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/j/a/a;->b:Lcom/google/g/a/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/j/a/a;->a(I)V

    .line 109
    invoke-direct {p0, p1}, Lcom/google/j/a/a;->b(Ljava/lang/Exception;)V

    .line 110
    invoke-direct {p0}, Lcom/google/j/a/a;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/j/a/a;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/j/a/a;->a:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/j/a/a;->a:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/j/a/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Z
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/j/a/a;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/j/a/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

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

.method protected declared-synchronized i()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/j/a/a;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
