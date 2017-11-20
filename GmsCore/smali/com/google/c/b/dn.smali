.class final Lcom/google/c/b/dn;
.super Lcom/google/c/b/do;

# interfaces
.implements Lcom/google/c/a/bz;


# direct methods
.method constructor <init>(Lcom/google/c/b/by;Lcom/google/c/b/ce;)V
    .locals 2

    new-instance v1, Lcom/google/c/b/ch;

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/ce;

    invoke-direct {v1, p1, v0}, Lcom/google/c/b/ch;-><init>(Lcom/google/c/b/by;Lcom/google/c/b/ce;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/c/b/do;-><init>(Lcom/google/c/b/ch;B)V

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/dn;->a:Lcom/google/c/b/ch;

    invoke-virtual {v0, p1}, Lcom/google/c/b/ch;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/c/j/a/ax;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/c/j/a/ax;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/c/b/dn;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
