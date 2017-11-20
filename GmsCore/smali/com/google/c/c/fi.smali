.class public abstract Lcom/google/c/c/fi;
.super Lcom/google/c/c/fj;

# interfaces
.implements Ljava/util/SortedMap;


# static fields
.field private static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/c/c/gm;->b()Lcom/google/c/c/gm;

    move-result-object v0

    sput-object v0, Lcom/google/c/c/fi;->a:Ljava/util/Comparator;

    new-instance v0, Lcom/google/c/c/il;

    sget-object v1, Lcom/google/c/c/fi;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/c/c/il;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/fj;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lcom/google/c/c/fi;
.end method

.method public abstract b(Ljava/lang/Object;)Lcom/google/c/c/fi;
.end method

.method public c()Lcom/google/c/c/fc;
    .locals 1

    invoke-super {p0}, Lcom/google/c/c/fj;->c()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fi;->i()Lcom/google/c/c/fk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/fk;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fi;->g()Lcom/google/c/c/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/c/c/iw;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic e()Lcom/google/c/c/fc;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fi;->i()Lcom/google/c/c/fk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fi;->c()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fi;->i()Lcom/google/c/c/fk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/fk;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract g()Lcom/google/c/c/iw;
.end method

.method h()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fi;->i()Lcom/google/c/c/fk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/fk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/c/fi;->g()Lcom/google/c/c/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/iw;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/c/c/fi;->a(Ljava/lang/Object;)Lcom/google/c/c/fi;

    move-result-object v0

    return-object v0
.end method

.method public abstract i()Lcom/google/c/c/fk;
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fi;->i()Lcom/google/c/c/fk;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fi;->i()Lcom/google/c/c/fk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/fk;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fi;->g()Lcom/google/c/c/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/iw;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/c/c/fi;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expected fromKey <= toKey but %s > %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/c/a/cj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/google/c/c/fi;->a(Ljava/lang/Object;)Lcom/google/c/c/fi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/c/c/fi;->b(Ljava/lang/Object;)Lcom/google/c/c/fi;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/c/c/fi;->b(Ljava/lang/Object;)Lcom/google/c/c/fi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fi;->g()Lcom/google/c/c/iw;

    move-result-object v0

    return-object v0
.end method
