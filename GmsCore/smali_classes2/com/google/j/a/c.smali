.class public final Lcom/google/j/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/google/g/a/d/c;

.field b:Lcom/google/g/a/b/g;

.field protected c:Z

.field private d:Ljava/util/Vector;

.field private e:Ljava/lang/Object;

.field private f:Lcom/google/g/a/c/c;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/j/a/c;->d:Ljava/util/Vector;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/j/a/c;->e:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/google/g/a/d/c;Lcom/google/g/a/c/c;Lcom/google/g/a/b/g;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/j/a/c;->d:Ljava/util/Vector;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/j/a/c;->e:Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lcom/google/j/a/c;->a:Lcom/google/g/a/d/c;

    .line 69
    iput-object p2, p0, Lcom/google/j/a/c;->f:Lcom/google/g/a/c/c;

    .line 70
    iput-object p3, p0, Lcom/google/j/a/c;->b:Lcom/google/g/a/b/g;

    .line 71
    iput-object p4, p0, Lcom/google/j/a/c;->g:Ljava/lang/String;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/google/j/a/c;->h:[Ljava/lang/Thread;

    .line 73
    return-void
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 204
    iget-object v1, p0, Lcom/google/j/a/c;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/j/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/j/a/c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 209
    :try_start_1
    iget-object v2, p0, Lcom/google/j/a/c;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v2

    :try_start_2
    monitor-exit v1

    .line 228
    :goto_1
    return v0

    .line 215
    :cond_0
    iget-boolean v2, p0, Lcom/google/j/a/c;->c:Z

    if-nez v2, :cond_1

    .line 216
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 219
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/j/a/c;->d:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/j/a/d;

    .line 220
    iget-object v2, p0, Lcom/google/j/a/c;->d:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 221
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    :try_start_4
    invoke-virtual {v0}, Lcom/google/j/a/d;->run()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 228
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 225
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/j/a/b;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/google/j/a/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/j/a/d;-><init>(Lcom/google/j/a/c;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/j/a/c;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lcom/google/j/a/c;->c:Z

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/j/a/c;->c:Z

    .line 116
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/j/a/c;->h:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/google/j/a/c;->h:[Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/j/a/c;->f:Lcom/google/g/a/c/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/j/a/c;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lcom/google/g/a/c/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v0

    .line 118
    iget-object v2, p0, Lcom/google/j/a/c;->h:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
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

.method final a(Lcom/google/j/a/d;)Z
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/google/j/a/c;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/google/j/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/j/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/google/j/a/c;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 176
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/google/j/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    return-void
.end method
