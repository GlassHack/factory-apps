.class final Lcom/google/j/k;
.super Lcom/google/g/a/d/b;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/j/a/b;

.field final synthetic e:[Lcom/google/j/b/m;

.field final synthetic f:I

.field final synthetic g:Lcom/google/j/h;


# direct methods
.method constructor <init>(Lcom/google/j/h;Lcom/google/g/a/d/c;Lcom/google/j/a/b;[Lcom/google/j/b/m;I)V
    .locals 0

    .prologue
    .line 944
    iput-object p1, p0, Lcom/google/j/k;->g:Lcom/google/j/h;

    iput-object p3, p0, Lcom/google/j/k;->d:Lcom/google/j/a/b;

    iput-object p4, p0, Lcom/google/j/k;->e:[Lcom/google/j/b/m;

    iput p5, p0, Lcom/google/j/k;->f:I

    invoke-direct {p0, p2}, Lcom/google/g/a/d/b;-><init>(Lcom/google/g/a/d/c;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 946
    iget-object v1, p0, Lcom/google/j/k;->d:Lcom/google/j/a/b;

    invoke-interface {v1}, Lcom/google/j/a/b;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 948
    iget-object v1, p0, Lcom/google/j/k;->g:Lcom/google/j/h;

    iget-object v1, v1, Lcom/google/j/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 949
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/j/k;->e:[Lcom/google/j/b/m;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 950
    iget-object v2, p0, Lcom/google/j/k;->e:[Lcom/google/j/b/m;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/j/k;->d:Lcom/google/j/a/b;

    invoke-interface {v3}, Lcom/google/j/a/b;->k()J

    move-result-wide v4

    iget-boolean v3, v2, Lcom/google/j/b/m;->h:Z

    if-eqz v3, :cond_0

    const-wide/16 v6, 0xbb8

    add-long/2addr v6, v4

    iput-wide v6, v2, Lcom/google/j/b/m;->f:J

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/google/j/b/m;->g:J

    .line 949
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/google/j/k;->g:Lcom/google/j/h;

    invoke-static {v0}, Lcom/google/j/h;->a(Lcom/google/j/h;)V

    .line 953
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    :cond_2
    :goto_1
    return-void

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 954
    :cond_3
    iget-object v1, p0, Lcom/google/j/k;->d:Lcom/google/j/a/b;

    invoke-interface {v1}, Lcom/google/j/a/b;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 956
    :try_start_1
    iget-object v1, p0, Lcom/google/j/k;->d:Lcom/google/j/a/b;

    invoke-interface {v1}, Lcom/google/j/a/b;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 957
    iget-object v1, p0, Lcom/google/j/k;->g:Lcom/google/j/h;

    iget-object v2, p0, Lcom/google/j/k;->e:[Lcom/google/j/b/m;

    iget-object v3, p0, Lcom/google/j/k;->d:Lcom/google/j/a/b;

    invoke-interface {v3}, Lcom/google/j/a/b;->c()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/j/h;->a(Lcom/google/j/h;[Lcom/google/j/b/m;Ljava/lang/Exception;)V

    .line 962
    :goto_2
    iget-object v1, p0, Lcom/google/j/k;->g:Lcom/google/j/h;

    iget-object v2, p0, Lcom/google/j/k;->e:[Lcom/google/j/b/m;

    move v1, v0

    :goto_3
    array-length v0, v2

    if-ge v1, v0, :cond_6

    aget-object v0, v2, v1

    check-cast v0, Lcom/google/j/b/m;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/j/b/m;->a()V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 959
    :cond_5
    iget-object v1, p0, Lcom/google/j/k;->g:Lcom/google/j/h;

    iget-object v2, p0, Lcom/google/j/k;->d:Lcom/google/j/a/b;

    iget-object v3, p0, Lcom/google/j/k;->e:[Lcom/google/j/b/m;

    invoke-static {v1, v2, v3}, Lcom/google/j/h;->a(Lcom/google/j/h;Lcom/google/j/a/b;[Lcom/google/j/b/m;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 968
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/j/k;->g:Lcom/google/j/h;

    invoke-static {v1}, Lcom/google/j/h;->a(Lcom/google/j/h;)V

    .line 969
    iget-object v1, p0, Lcom/google/j/k;->d:Lcom/google/j/a/b;

    invoke-interface {v1}, Lcom/google/j/a/b;->b()V

    throw v0

    .line 963
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/google/j/k;->g:Lcom/google/j/h;

    iget v1, p0, Lcom/google/j/k;->f:I

    iget v2, v0, Lcom/google/j/h;->i:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/j/h;->i:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 968
    iget-object v0, p0, Lcom/google/j/k;->g:Lcom/google/j/h;

    invoke-static {v0}, Lcom/google/j/h;->a(Lcom/google/j/h;)V

    .line 969
    iget-object v0, p0, Lcom/google/j/k;->d:Lcom/google/j/a/b;

    invoke-interface {v0}, Lcom/google/j/a/b;->b()V

    goto :goto_1
.end method
