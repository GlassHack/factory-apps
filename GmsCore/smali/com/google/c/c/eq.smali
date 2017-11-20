.class public final Lcom/google/c/c/eq;
.super Lcom/google/c/c/ix;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/c/c/eq;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/c/c/ix;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/c/c/eq;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/c/eq;->b:I

    return-void
.end method

.method private a(I)Lcom/google/c/c/eq;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/eq;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/c/c/eq;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/c/c/eq;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1, p1}, Lcom/google/c/c/eq;->a(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/c/c/gl;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/eq;->a:[Ljava/lang/Object;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/c/c/eo;
    .locals 3

    iget v0, p0, Lcom/google/c/c/eq;->b:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/google/c/c/eq;->b:I

    iget-object v1, p0, Lcom/google/c/c/eq;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/c/c/go;

    iget-object v1, p0, Lcom/google/c/c/eq;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/c/c/go;-><init>([Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/google/c/c/eo;->v_()Lcom/google/c/c/eo;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/c/c/eq;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/c/c/eo;->a(Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/c/c/go;

    iget-object v1, p0, Lcom/google/c/c/eq;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/c/c/eq;->b:I

    invoke-static {v1, v2}, Lcom/google/c/c/gl;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/c/c/go;-><init>([Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/c/c/eq;
    .locals 3

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/c/c/eq;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/c/c/eq;->a(I)Lcom/google/c/c/eq;

    iget-object v0, p0, Lcom/google/c/c/eq;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/c/c/eq;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/c/c/eq;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/c/c/ix;
    .locals 2

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget v1, p0, Lcom/google/c/c/eq;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/c/c/eq;->a(I)Lcom/google/c/c/eq;

    :cond_0
    invoke-super {p0, p1}, Lcom/google/c/c/ix;->a(Ljava/lang/Iterable;)Lcom/google/c/c/ix;

    return-object p0
.end method

.method public final bridge synthetic a(Ljava/util/Iterator;)Lcom/google/c/c/ix;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/c/c/ix;->a(Ljava/util/Iterator;)Lcom/google/c/c/ix;

    return-object p0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/c/c/ix;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/c/c/eq;->a(Ljava/lang/Object;)Lcom/google/c/c/eq;

    move-result-object v0

    return-object v0
.end method
