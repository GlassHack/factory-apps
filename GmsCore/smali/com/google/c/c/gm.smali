.class public abstract Lcom/google/c/c/gm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/c/c/gm;
    .locals 1

    sget-object v0, Lcom/google/c/c/gk;->a:Lcom/google/c/c/gk;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)Lcom/google/c/c/eo;
    .locals 4

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Collection;

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v0}, Lcom/google/c/c/eo;->b([Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/google/c/c/gm;
    .locals 1

    new-instance v0, Lcom/google/c/c/gz;

    invoke-direct {v0, p0}, Lcom/google/c/c/gz;-><init>(Lcom/google/c/c/gm;)V

    return-object v0
.end method

.method public final a(Lcom/google/c/a/bz;)Lcom/google/c/c/gm;
    .locals 1

    new-instance v0, Lcom/google/c/c/ie;

    invoke-direct {v0, p1, p0}, Lcom/google/c/c/ie;-><init>(Lcom/google/c/a/bz;Lcom/google/c/c/gm;)V

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
.end method
