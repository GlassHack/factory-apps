.class final Lcom/google/common/util/concurrent/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/o;

.field final synthetic b:Lcom/google/common/util/concurrent/k;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/k;Lcom/google/common/util/concurrent/o;)V
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lcom/google/common/util/concurrent/l;->b:Lcom/google/common/util/concurrent/k;

    iput-object p2, p0, Lcom/google/common/util/concurrent/l;->a:Lcom/google/common/util/concurrent/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/l;->b:Lcom/google/common/util/concurrent/k;

    iget-object v1, p0, Lcom/google/common/util/concurrent/l;->a:Lcom/google/common/util/concurrent/o;

    invoke-static {v1}, Lcom/google/common/util/concurrent/w;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/k;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    iget-object v0, p0, Lcom/google/common/util/concurrent/l;->b:Lcom/google/common/util/concurrent/k;

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/k;->a(Lcom/google/common/util/concurrent/k;Lcom/google/common/util/concurrent/o;)Lcom/google/common/util/concurrent/o;

    .line 860
    :goto_0
    return-void

    .line 851
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/l;->b:Lcom/google/common/util/concurrent/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/k;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    iget-object v0, p0, Lcom/google/common/util/concurrent/l;->b:Lcom/google/common/util/concurrent/k;

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/k;->a(Lcom/google/common/util/concurrent/k;Lcom/google/common/util/concurrent/o;)Lcom/google/common/util/concurrent/o;

    goto :goto_0

    .line 853
    :catch_1
    move-exception v0

    .line 855
    :try_start_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/l;->b:Lcom/google/common/util/concurrent/k;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/k;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 858
    iget-object v0, p0, Lcom/google/common/util/concurrent/l;->b:Lcom/google/common/util/concurrent/k;

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/k;->a(Lcom/google/common/util/concurrent/k;Lcom/google/common/util/concurrent/o;)Lcom/google/common/util/concurrent/o;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/l;->b:Lcom/google/common/util/concurrent/k;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/k;->a(Lcom/google/common/util/concurrent/k;Lcom/google/common/util/concurrent/o;)Lcom/google/common/util/concurrent/o;

    throw v0
.end method
