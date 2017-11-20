.class public abstract Lcom/google/c/c/eo;
.super Lcom/google/c/c/iw;

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/iw;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/c/eo;
    .locals 1

    new-instance v0, Lcom/google/c/c/he;

    invoke-direct {v0, p0}, Lcom/google/c/c/he;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/c/c/eo;
    .locals 2

    instance-of v0, p0, Lcom/google/c/c/iw;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/c/c/iw;

    invoke-virtual {p0}, Lcom/google/c/c/iw;->e()Lcom/google/c/c/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/eo;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/c/c/eo;->b(Ljava/util/Collection;)Lcom/google/c/c/eo;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/c/c/eo;->b(Ljava/util/Collection;)Lcom/google/c/c/eo;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;)Lcom/google/c/c/eo;
    .locals 2

    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/c/c/eo;->c([Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/c/c/ii;->a:Lcom/google/c/c/ii;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/c/c/he;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/google/c/c/he;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Ljava/util/Collection;)Lcom/google/c/c/eo;
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/eo;->b([Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method

.method static b([Ljava/lang/Object;)Lcom/google/c/c/eo;
    .locals 2

    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/google/c/c/eo;->c([Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/c/c/ii;->a:Lcom/google/c/c/ii;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/c/c/he;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/google/c/c/he;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static varargs c([Ljava/lang/Object;)Lcom/google/c/c/eo;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-static {v1, v0}, Lcom/google/c/c/gl;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/c/c/go;

    invoke-direct {v0, p0}, Lcom/google/c/c/go;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f()Lcom/google/c/c/eq;
    .locals 1

    new-instance v0, Lcom/google/c/c/eq;

    invoke-direct {v0}, Lcom/google/c/c/eq;-><init>()V

    return-object v0
.end method

.method public static v_()Lcom/google/c/c/eo;
    .locals 1

    sget-object v0, Lcom/google/c/c/ii;->a:Lcom/google/c/c/ii;

    return-object v0
.end method


# virtual methods
.method public a(II)Lcom/google/c/c/eo;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/eo;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/c/a/cj;->a(III)V

    sub-int v0, p2, p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lcom/google/c/c/eo;->b(II)Lcom/google/c/c/eo;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/c/c/ii;->a:Lcom/google/c/c/ii;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/c/c/eo;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/eo;->a(Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(I)Lcom/google/c/c/hj;
    .locals 2

    new-instance v0, Lcom/google/c/c/ep;

    invoke-virtual {p0}, Lcom/google/c/c/eo;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/c/c/ep;-><init>(Lcom/google/c/c/eo;II)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method b(II)Lcom/google/c/c/eo;
    .locals 2

    new-instance v0, Lcom/google/c/c/er;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/c/c/er;-><init>(Lcom/google/c/c/eo;II)V

    return-object v0
.end method

.method public b()Lcom/google/c/c/hi;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/eo;->d()Lcom/google/c/c/hj;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/c/c/eo;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/google/c/c/hj;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/c/c/eo;->a(I)Lcom/google/c/c/hj;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/c/c/eo;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/c/c/fp;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v3

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/eo;->b()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/eo;->d()Lcom/google/c/c/hj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/c/c/eo;->a(I)Lcom/google/c/c/hj;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/c/c/eo;->a(II)Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method
