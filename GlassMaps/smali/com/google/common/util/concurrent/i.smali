.class final Lcom/google/common/util/concurrent/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/o;

.field final synthetic b:Lcom/google/common/util/concurrent/e;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/e;)V
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/o;

    iput-object p2, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/i;->a:Lcom/google/common/util/concurrent/o;

    invoke-static {v0}, Lcom/google/common/util/concurrent/w;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 1115
    iget-object v1, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/e;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/e;->onSuccess(Ljava/lang/Object;)V

    .line 1116
    :goto_0
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    iget-object v1, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/e;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/e;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1108
    :catch_1
    move-exception v0

    .line 1109
    iget-object v1, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/e;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/e;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1111
    :catch_2
    move-exception v0

    .line 1112
    iget-object v1, p0, Lcom/google/common/util/concurrent/i;->b:Lcom/google/common/util/concurrent/e;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/e;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
