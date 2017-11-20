.class final Lcom/google/c/j/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/c/j/a/v;

.field final synthetic b:Lcom/google/c/j/a/s;


# direct methods
.method constructor <init>(Lcom/google/c/j/a/s;Lcom/google/c/j/a/v;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/c/j/a/t;->b:Lcom/google/c/j/a/s;

    iput-object p2, p0, Lcom/google/c/j/a/t;->a:Lcom/google/c/j/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/google/c/j/a/t;->b:Lcom/google/c/j/a/s;

    iget-object v1, p0, Lcom/google/c/j/a/t;->a:Lcom/google/c/j/a/v;

    invoke-static {v1}, Lcom/google/c/j/a/af;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/j/a/s;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    iget-object v0, p0, Lcom/google/c/j/a/t;->b:Lcom/google/c/j/a/s;

    invoke-static {v0}, Lcom/google/c/j/a/s;->a(Lcom/google/c/j/a/s;)Lcom/google/c/j/a/v;

    .line 762
    :goto_0
    return-void

    .line 754
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/c/j/a/t;->b:Lcom/google/c/j/a/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/c/j/a/s;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    iget-object v0, p0, Lcom/google/c/j/a/t;->b:Lcom/google/c/j/a/s;

    invoke-static {v0}, Lcom/google/c/j/a/s;->a(Lcom/google/c/j/a/s;)Lcom/google/c/j/a/v;

    goto :goto_0

    .line 756
    :catch_1
    move-exception v0

    .line 758
    :try_start_2
    iget-object v1, p0, Lcom/google/c/j/a/t;->b:Lcom/google/c/j/a/s;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/c/j/a/s;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 761
    iget-object v0, p0, Lcom/google/c/j/a/t;->b:Lcom/google/c/j/a/s;

    invoke-static {v0}, Lcom/google/c/j/a/s;->a(Lcom/google/c/j/a/s;)Lcom/google/c/j/a/v;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/c/j/a/t;->b:Lcom/google/c/j/a/s;

    invoke-static {v1}, Lcom/google/c/j/a/s;->a(Lcom/google/c/j/a/s;)Lcom/google/c/j/a/v;

    throw v0
.end method
