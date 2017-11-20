.class final Lcom/google/c/c/go;
.super Lcom/google/c/c/eo;


# instance fields
.field private final transient a:I

.field private final transient b:I

.field private final transient c:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/c/c/go;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/eo;-><init>()V

    iput p2, p0, Lcom/google/c/c/go;->a:I

    iput p3, p0, Lcom/google/c/c/go;->b:I

    iput-object p1, p0, Lcom/google/c/c/go;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/c/c/hj;
    .locals 3

    iget-object v0, p0, Lcom/google/c/c/go;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/c/c/go;->a:I

    iget v2, p0, Lcom/google/c/c/go;->b:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/c/c/fp;->a([Ljava/lang/Object;III)Lcom/google/c/c/hj;

    move-result-object v0

    return-object v0
.end method

.method final a()Z
    .locals 2

    iget v0, p0, Lcom/google/c/c/go;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/c/c/go;->b:I

    iget-object v1, p0, Lcom/google/c/c/go;->c:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(II)Lcom/google/c/c/eo;
    .locals 4

    new-instance v0, Lcom/google/c/c/go;

    iget-object v1, p0, Lcom/google/c/c/go;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/c/c/go;->a:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/c/c/go;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/c/c/go;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/google/c/c/go;->a:I

    instance-of v2, p1, Lcom/google/c/c/go;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/google/c/c/go;

    iget v0, p1, Lcom/google/c/c/go;->a:I

    move v2, v0

    move v0, v1

    :goto_1
    iget v1, p1, Lcom/google/c/c/go;->a:I

    iget v5, p1, Lcom/google/c/c/go;->b:I

    add-int/2addr v1, v5

    if-ge v2, v1, :cond_6

    iget-object v5, p0, Lcom/google/c/c/go;->c:[Ljava/lang/Object;

    add-int/lit8 v1, v0, 0x1

    aget-object v0, v5, v0

    iget-object v5, p1, Lcom/google/c/c/go;->c:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/c/c/go;->c:[Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/c/c/go;->b:I

    invoke-static {p1, v0}, Lcom/google/c/a/cj;->a(II)I

    iget-object v0, p0, Lcom/google/c/c/go;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/c/c/go;->a:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/c/c/go;->a(I)Lcom/google/c/c/hj;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/c/c/go;->b:I

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lcom/google/c/c/go;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/c/c/go;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/c/c/go;->a:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/c/c/go;->b:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    array-length v0, p1

    iget v1, p0, Lcom/google/c/c/go;->b:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/c/c/go;->b:I

    invoke-static {p1, v0}, Lcom/google/c/c/gl;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/c/c/go;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/c/c/go;->a:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/c/c/go;->b:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    array-length v0, p1

    iget v1, p0, Lcom/google/c/c/go;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/c/c/go;->b:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/c/c/go;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/c/c/if;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/c/go;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/c/c/go;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/google/c/c/go;->a:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v2, p0, Lcom/google/c/c/go;->a:I

    iget v3, p0, Lcom/google/c/c/go;->b:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/c/c/go;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
