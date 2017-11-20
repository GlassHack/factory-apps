.class public final Lcom/google/c/c/fm;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Iterable;Lcom/google/c/a/bz;)Ljava/lang/Iterable;
    .locals 1

    invoke-static {p0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/c/c/fo;

    invoke-direct {v0, p0, p1}, Lcom/google/c/c/fo;-><init>(Ljava/lang/Iterable;Lcom/google/c/a/bz;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/google/c/a/ck;)Ljava/lang/Iterable;
    .locals 1

    invoke-static {p0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/c/c/fn;

    invoke-direct {v0, p0, p1}, Lcom/google/c/c/fn;-><init>(Ljava/lang/Iterable;Lcom/google/c/a/ck;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fp;->c(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
