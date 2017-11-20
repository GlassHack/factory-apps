.class final Lcom/google/c/c/gs;
.super Lcom/google/c/c/es;


# instance fields
.field private final transient a:[Lcom/google/c/c/gu;

.field private final transient b:[Lcom/google/c/c/gu;

.field private final transient c:I


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/c/c/es;-><init>()V

    array-length v5, p1

    new-array v0, v5, [Lcom/google/c/c/gu;

    iput-object v0, p0, Lcom/google/c/c/gs;->a:[Lcom/google/c/c/gu;

    invoke-static {v5}, Lcom/google/c/c/it;->b(I)I

    move-result v0

    new-array v3, v0, [Lcom/google/c/c/gu;

    iput-object v3, p0, Lcom/google/c/c/gs;->b:[Lcom/google/c/c/gu;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/c/c/gs;->c:I

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, p1, v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/c/c/it;->a(I)I

    move-result v3

    iget v7, p0, Lcom/google/c/c/gs;->c:I

    and-int/2addr v7, v3

    iget-object v3, p0, Lcom/google/c/c/gs;->b:[Lcom/google/c/c/gu;

    aget-object v3, v3, v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_0

    new-instance v0, Lcom/google/c/c/gw;

    invoke-direct {v0, v6, v8}, Lcom/google/c/c/gw;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    check-cast v0, Lcom/google/c/c/gu;

    iget-object v8, p0, Lcom/google/c/c/gs;->b:[Lcom/google/c/c/gu;

    aput-object v0, v8, v7

    iget-object v7, p0, Lcom/google/c/c/gs;->a:[Lcom/google/c/c/gu;

    aput-object v0, v7, v4

    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/google/c/c/gu;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_3
    const-string v7, "duplicate key: %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v6, v8, v2

    invoke-static {v0, v7, v8}, Lcom/google/c/a/cj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/google/c/c/gu;->a()Lcom/google/c/c/gu;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/google/c/c/gv;

    invoke-direct {v0, v6, v8, v3}, Lcom/google/c/c/gv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/c/c/gu;)V

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/google/c/c/gs;)[Lcom/google/c/c/gu;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gs;->a:[Lcom/google/c/c/gu;

    return-object v0
.end method


# virtual methods
.method public final containsValue(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/c/c/gs;->a:[Lcom/google/c/c/gu;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method final d()Lcom/google/c/c/fc;
    .locals 2

    new-instance v0, Lcom/google/c/c/gt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/c/c/gt;-><init>(Lcom/google/c/c/gs;B)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/c/c/it;->a(I)I

    move-result v1

    iget v2, p0, Lcom/google/c/c/gs;->c:I

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/c/c/gs;->b:[Lcom/google/c/c/gu;

    aget-object v1, v2, v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/c/c/gu;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/google/c/c/gu;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/google/c/c/gu;->a()Lcom/google/c/c/gu;

    move-result-object v1

    goto :goto_1
.end method

.method final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gs;->a:[Lcom/google/c/c/gu;

    array-length v0, v0

    return v0
.end method
