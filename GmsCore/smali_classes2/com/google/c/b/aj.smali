.class final Lcom/google/c/b/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/b/d;
.implements Ljava/io/Serializable;


# instance fields
.field final a:Lcom/google/c/b/n;


# direct methods
.method constructor <init>(Lcom/google/c/b/e;)V
    .locals 1

    .prologue
    .line 4745
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/c/b/aj;-><init>(Lcom/google/c/b/e;B)V

    .line 4746
    return-void
.end method

.method private constructor <init>(Lcom/google/c/b/e;B)V
    .locals 2

    .prologue
    .line 4749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4750
    new-instance v0, Lcom/google/c/b/n;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/c/b/n;-><init>(Lcom/google/c/b/e;Lcom/google/c/b/k;)V

    iput-object v0, p0, Lcom/google/c/b/aj;->a:Lcom/google/c/b/n;

    .line 4751
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4834
    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/aj;->a:Lcom/google/c/b/n;

    invoke-virtual {v0, p1}, Lcom/google/c/b/n;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 4835
    :catch_0
    move-exception v0

    .line 4836
    new-instance v1, Lcom/google/c/j/a/ae;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/c/j/a/ae;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4841
    invoke-direct {p0, p1}, Lcom/google/c/b/aj;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4763
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4764
    iget-object v0, p0, Lcom/google/c/b/aj;->a:Lcom/google/c/b/n;

    new-instance v1, Lcom/google/c/b/ak;

    invoke-direct {v1, p0, p2}, Lcom/google/c/b/ak;-><init>(Lcom/google/c/b/aj;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/c/b/n;->a(Ljava/lang/Object;Lcom/google/c/b/k;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4758
    iget-object v0, p0, Lcom/google/c/b/aj;->a:Lcom/google/c/b/n;

    invoke-virtual {v0, p1}, Lcom/google/c/b/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 4784
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4785
    iget-object v0, p0, Lcom/google/c/b/aj;->a:Lcom/google/c/b/n;

    invoke-virtual {v0, p1}, Lcom/google/c/b/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4786
    return-void
.end method
