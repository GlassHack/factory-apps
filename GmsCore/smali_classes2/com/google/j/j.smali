.class final Lcom/google/j/j;
.super Lcom/google/g/a/d/d;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/j/h;


# direct methods
.method constructor <init>(Lcom/google/j/h;Lcom/google/g/a/d/c;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/j/j;->d:Lcom/google/j/h;

    invoke-direct {p0, p2}, Lcom/google/g/a/d/d;-><init>(Lcom/google/g/a/d/c;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/j/j;->d:Lcom/google/j/h;

    iget-object v1, v0, Lcom/google/j/h;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/google/j/j;->d:Lcom/google/j/h;

    invoke-virtual {v0}, Lcom/google/j/h;->d()V

    .line 278
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
