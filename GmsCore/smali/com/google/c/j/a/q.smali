.class final Lcom/google/c/j/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/c/j/a/v;

.field final synthetic b:Lcom/google/c/j/a/m;


# direct methods
.method constructor <init>(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lcom/google/c/j/a/q;->a:Lcom/google/c/j/a/v;

    iput-object p2, p0, Lcom/google/c/j/a/q;->b:Lcom/google/c/j/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 974
    :try_start_0
    iget-object v0, p0, Lcom/google/c/j/a/q;->a:Lcom/google/c/j/a/v;

    invoke-static {v0}, Lcom/google/c/j/a/af;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 975
    iget-object v1, p0, Lcom/google/c/j/a/q;->b:Lcom/google/c/j/a/m;

    invoke-interface {v1, v0}, Lcom/google/c/j/a/m;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 983
    :goto_0
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 977
    iget-object v1, p0, Lcom/google/c/j/a/q;->b:Lcom/google/c/j/a/m;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/c/j/a/m;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 978
    :catch_1
    move-exception v0

    .line 979
    iget-object v1, p0, Lcom/google/c/j/a/q;->b:Lcom/google/c/j/a/m;

    invoke-interface {v1, v0}, Lcom/google/c/j/a/m;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 980
    :catch_2
    move-exception v0

    .line 981
    iget-object v1, p0, Lcom/google/c/j/a/q;->b:Lcom/google/c/j/a/m;

    invoke-interface {v1, v0}, Lcom/google/c/j/a/m;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
