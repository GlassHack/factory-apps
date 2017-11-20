.class public final Lcom/google/j/n;
.super Lcom/google/j/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/j/b;-><init>(Ljava/lang/String;Z)V

    .line 18
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 71
    monitor-enter v1

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/google/j/n;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lcom/google/j/o;

    invoke-direct {v0, p0, v1}, Lcom/google/j/o;-><init>(Lcom/google/j/n;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/j/n;->a(Lcom/google/g/a/e/g;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/j/n;->k()V

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/j/n;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/j/n;->j()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0

    .line 91
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/j/n;->l()V

    .line 29
    invoke-super {p0, p1}, Lcom/google/j/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/io/DataInputStream;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/j/n;->l()V

    .line 65
    invoke-super {p0}, Lcom/google/j/b;->b()Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/j/n;->l()V

    .line 53
    invoke-super {p0}, Lcom/google/j/b;->c()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/j/n;->l()V

    .line 23
    invoke-super {p0}, Lcom/google/j/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/j/n;->l()V

    .line 47
    invoke-super {p0}, Lcom/google/j/b;->e()J

    move-result-wide v0

    return-wide v0
.end method
