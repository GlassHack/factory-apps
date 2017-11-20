.class public abstract Lcom/google/c/c/es;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# instance fields
.field private transient a:Lcom/google/c/c/fc;

.field private transient b:Lcom/google/c/c/fc;

.field private transient c:Lcom/google/c/c/iw;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/c/c/es;
    .locals 1

    sget-object v0, Lcom/google/c/c/ih;->a:Lcom/google/c/c/ih;

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Lcom/google/c/c/es;
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    instance-of v0, p0, Lcom/google/c/c/es;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/google/c/c/fi;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/c/c/es;

    invoke-virtual {v0}, Lcom/google/c/c/es;->h()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/util/EnumMap;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/EnumMap;

    invoke-direct {v2, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    invoke-virtual {v2}, Ljava/util/EnumMap;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/c/c/ja;

    invoke-direct {v0, v2}, Lcom/google/c/c/ja;-><init>(Ljava/util/EnumMap;)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/google/c/c/ih;->a:Lcom/google/c/c/ih;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v2}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fm;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v0, "null key in entry: null=%s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-static {v2, v0, v4}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "null value in entry: %s=null"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v3, v0, v4}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/c/c/hd;

    invoke-direct {v0, v2, v3}, Lcom/google/c/c/hd;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    array-length v2, v0

    packed-switch v2, :pswitch_data_1

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/c/c/es;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/google/c/c/ih;->a:Lcom/google/c/c/ih;

    goto/16 :goto_0

    :pswitch_3
    new-instance v2, Lcom/google/c/c/hd;

    aget-object v3, v0, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/c/c/es;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/c/c/hd;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_3
    new-instance v1, Lcom/google/c/c/gs;

    invoke-direct {v1, v0}, Lcom/google/c/c/gs;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "null key in entry: null=%s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "null value in entry: %s=null"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p1, v0, v1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/c/c/gc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/google/c/c/et;
    .locals 1

    new-instance v0, Lcom/google/c/c/et;

    invoke-direct {v0}, Lcom/google/c/c/et;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/c/c/fc;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/es;->a:Lcom/google/c/c/fc;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/c/es;->d()Lcom/google/c/c/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/es;->a:Lcom/google/c/c/fc;

    :cond_0
    return-object v0
.end method

.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/c/c/es;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/google/c/c/gc;->e(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract d()Lcom/google/c/c/fc;
.end method

.method public e()Lcom/google/c/c/fc;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/es;->b:Lcom/google/c/c/fc;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/c/es;->f()Lcom/google/c/c/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/es;->b:Lcom/google/c/c/fc;

    :cond_0
    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/es;->c()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/c/c/gc;->d(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method f()Lcom/google/c/c/fc;
    .locals 1

    new-instance v0, Lcom/google/c/c/ev;

    invoke-direct {v0, p0}, Lcom/google/c/c/ev;-><init>(Lcom/google/c/c/es;)V

    return-object v0
.end method

.method public g()Lcom/google/c/c/iw;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/es;->c:Lcom/google/c/c/iw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/c/ex;

    invoke-direct {v0, p0}, Lcom/google/c/c/ex;-><init>(Lcom/google/c/c/es;)V

    iput-object v0, p0, Lcom/google/c/c/es;->c:Lcom/google/c/c/iw;

    :cond_0
    return-object v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract h()Z
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/es;->c()Lcom/google/c/c/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/fc;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/es;->size()I

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

    invoke-virtual {p0}, Lcom/google/c/c/es;->e()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/c/c/gc;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/es;->g()Lcom/google/c/c/iw;

    move-result-object v0

    return-object v0
.end method
