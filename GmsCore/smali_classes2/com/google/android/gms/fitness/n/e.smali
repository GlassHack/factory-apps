.class final Lcom/google/android/gms/fitness/n/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/n/d;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/n/d;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/n/d;B)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/e;-><init>(Lcom/google/android/gms/fitness/n/d;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 119
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iget-object v0, v0, Lcom/google/android/gms/fitness/n/d;->f:Lcom/google/android/gms/fitness/data/DataPoint;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iget-object v0, v0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iget-object v2, v2, Lcom/google/android/gms/fitness/n/d;->f:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/fitness/n/d;->f:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iget-object v0, v0, Lcom/google/android/gms/fitness/n/d;->g:Lcom/google/android/gms/fitness/data/DataPoint;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iget-object v0, v0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iget-object v2, v2, Lcom/google/android/gms/fitness/n/d;->g:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/fitness/n/d;->g:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iget-object v2, v0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/gms/fitness/n/d;->d:Z

    .line 132
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iget-object v0, v0, Lcom/google/android/gms/fitness/n/d;->a:Lcom/google/android/gms/fitness/n/ar;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iget-boolean v3, v3, Lcom/google/android/gms/fitness/n/d;->b:Z

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Application;Z)Ljava/util/Set;

    .line 137
    const-string v0, "Flushed %d DataPoints in buffer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/fitness/n/d;->e:I
    :try_end_1
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :goto_0
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 140
    :catch_0
    move-exception v0

    const-string v1, "Failed to flush data points buffer to store"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iget v1, v0, Lcom/google/android/gms/fitness/n/d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/fitness/n/d;->e:I

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iget v1, v0, Lcom/google/android/gms/fitness/n/d;->e:I

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->T:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 144
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    monitor-enter v1

    .line 146
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iget-object v0, v0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    iput-object v2, v0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/e;->a:Lcom/google/android/gms/fitness/n/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/d;->b()V

    .line 150
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 152
    :cond_2
    const-string v0, "Write attempts failed, dropping buffered data points"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
