.class public abstract Lcom/google/c/c/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/be;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/google/c/c/dq;

    invoke-static {p0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/c/c/dq;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/be;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/google/c/c/db;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/google/c/c/be;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lcom/google/c/c/be;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/c/c/db;-><init>([Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/be;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lcom/google/c/c/db;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/google/c/c/be;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lcom/google/c/c/be;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lcom/google/c/c/be;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/c/c/db;-><init>([Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 139
    const-string v0, "null key"

    invoke-static {p0, v0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null value"

    invoke-static {p1, v1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/c/cd;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/google/c/c/be;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/c/c/ap;->a:Lcom/google/c/c/ap;

    return-object v0
.end method

.method public static e()Lcom/google/c/c/bf;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/google/c/c/bf;

    invoke-direct {v0}, Lcom/google/c/c/bf;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/c/c/bl;
.end method

.method public abstract b()Lcom/google/c/c/bl;
.end method

.method public abstract c()Lcom/google/c/c/bb;
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 332
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/google/c/c/be;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/c/c/be;->a()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 375
    if-ne p1, p0, :cond_0

    .line 376
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    .line 378
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 379
    check-cast p1, Ljava/util/Map;

    .line 380
    invoke-virtual {p0}, Lcom/google/c/c/be;->a()Lcom/google/c/c/bl;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/c/bl;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 382
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/c/c/be;->a()Lcom/google/c/c/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/bl;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/c/c/be;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/c/c/be;->b()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 312
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    invoke-static {p0}, Lcom/google/c/c/cd;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/c/c/be;->c()Lcom/google/c/c/bb;

    move-result-object v0

    return-object v0
.end method
