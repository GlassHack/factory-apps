.class public final Lcom/google/maps/api/android/lib6/gmm6/l/p;
.super Lcom/google/maps/api/android/lib6/gmm6/l/q;


# instance fields
.field protected a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field protected b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private volatile c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private volatile d:Lcom/google/maps/api/android/lib6/gmm6/l/h;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/q;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)Lcom/google/maps/api/android/lib6/gmm6/l/p;
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-direct {v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    return-object v2
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/p;
    .locals 6

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    :goto_0
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    :goto_1
    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v5, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v1, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-direct {v4, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    return-object v4

    :cond_0
    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    goto :goto_0

    :cond_1
    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    goto :goto_1
.end method

.method public static a([Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/p;
    .locals 7

    const/4 v0, 0x0

    aget-object v0, p0, v0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_4

    aget-object v5, p0, v0

    iget v6, v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-ge v6, v4, :cond_0

    iget v4, v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    :cond_0
    iget v6, v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-le v6, v3, :cond_1

    iget v3, v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    :cond_1
    iget v6, v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-ge v6, v2, :cond_2

    iget v2, v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    :cond_2
    iget v6, v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-le v6, v1, :cond_3

    iget v1, v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v5, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-direct {v0, v5, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/p;
    .locals 0

    return-object p0
.end method

.method final a(Lcom/google/maps/api/android/lib6/gmm6/l/p;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z
    .locals 2

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-object v0
.end method

.method public final d()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-object v0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final g()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final h()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
