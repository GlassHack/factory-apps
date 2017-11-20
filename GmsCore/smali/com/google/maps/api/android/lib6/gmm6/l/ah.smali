.class public Lcom/google/maps/api/android/lib6/gmm6/l/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

.field final e:I

.field final f:I

.field final g:I

.field private h:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field private i:Lcom/google/maps/api/android/lib6/gmm6/l/p;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    return-void
.end method

.method public constructor <init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V
    .locals 3

    const/high16 v2, 0x20000000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    if-nez p4, :cond_0

    new-instance p4, Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-direct {p4}, Lcom/google/maps/api/android/lib6/gmm6/l/at;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    rsub-int/lit8 v0, p1, 0x12

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->g:I

    const/high16 v0, 0x40000000    # 2.0f

    shr-int/2addr v0, p1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    mul-int/2addr v1, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    sub-int/2addr v0, v2

    neg-int v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    return-void
.end method

.method private static a(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 5

    const/high16 v4, 0x20000000

    const/16 v1, 0x1e

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v1, v0, v0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(III)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-le p0, v1, :cond_1

    move p0, v1

    :cond_1
    rsub-int/lit8 v1, p0, 0x1e

    add-int v2, p1, v4

    shr-int/2addr v2, v1

    neg-int v3, p2

    add-int/2addr v3, v4

    shr-int v1, v3, v1

    const/4 v3, 0x1

    shl-int/2addr v3, p0

    if-gez v2, :cond_3

    add-int/2addr v2, v3

    :cond_2
    :goto_1
    if-gez v1, :cond_4

    :goto_2
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v1, p0, v2, v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    if-lt v2, v3, :cond_2

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_4
    if-lt v1, v3, :cond_5

    add-int/lit8 v0, v3, -0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x20000000

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    const/high16 v2, -0x20000000

    if-le v1, v2, :cond_0

    if-le v1, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    add-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x0

    neg-int v1, v1

    add-int/2addr v1, v3

    shr-int/lit8 v2, v1, 0x0

    if-gez v0, :cond_3

    add-int/2addr v0, v4

    :cond_2
    :goto_1
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/16 v3, 0x1e

    invoke-direct {v1, v3, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(III)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    if-lt v0, v4, :cond_2

    sub-int/2addr v0, v4

    goto :goto_1
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 4

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v1

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v2

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(III)V

    return-object v3
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/cd;)Ljava/util/ArrayList;
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cd;ILcom/google/maps/api/android/lib6/gmm6/l/at;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/cd;I)Ljava/util/ArrayList;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-static {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b(III)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b(III)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    iget v5, v2, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    iget v6, v2, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    invoke-static {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    invoke-static {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(II)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    shl-int v2, v0, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-le v1, v5, :cond_9

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_4

    move v1, v3

    :goto_1
    if-gez v1, :cond_2

    new-instance v7, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v7, p1, v4, v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    if-gt v1, v6, :cond_3

    new-instance v7, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v7, p1, v4, v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    move v4, v1

    :goto_3
    if-gt v4, v5, :cond_0

    move v1, v3

    :goto_4
    if-gez v1, :cond_5

    new-instance v7, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v7, p1, v4, v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_5
    if-gt v1, v6, :cond_6

    new-instance v7, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v7, p1, v4, v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    :goto_6
    if-gt v4, v5, :cond_0

    move v1, v3

    :goto_7
    if-gez v1, :cond_8

    new-instance v7, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v7, p1, v4, v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    move v1, v2

    :goto_8
    if-gt v1, v6, :cond_7

    new-instance v7, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v7, p1, v4, v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    move v4, v1

    goto :goto_6
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/cd;ILcom/google/maps/api/android/lib6/gmm6/l/at;)Ljava/util/ArrayList;
    .locals 11

    const/4 v10, 0x2

    const/4 v2, 0x0

    if-gez p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-static {p1, v0, v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0, v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v6

    iget v1, v5, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    iget v3, v5, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    iget v7, v6, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    iget v8, v6, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    const/4 v0, 0x1

    shl-int v9, v0, p1

    if-le v1, v7, :cond_2

    sub-int v0, v9, v1

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    sub-int v4, v8, v3

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    move v4, v0

    :goto_1
    if-gez v4, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    sub-int v0, v7, v1

    add-int/lit8 v0, v0, 0x1

    sub-int v4, v8, v3

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    if-gt v4, v10, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v4, v10, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-le v1, v7, :cond_9

    :goto_2
    if-ge v1, v9, :cond_7

    move v4, v3

    :goto_3
    if-gt v4, v8, :cond_5

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v5, p1, v1, v4, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    :cond_7
    if-gt v2, v7, :cond_0

    move v1, v3

    :goto_4
    if-gt v1, v8, :cond_6

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v4, p1, v2, v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    :cond_9
    if-gt v1, v7, :cond_0

    move v2, v3

    :goto_5
    if-gt v2, v8, :cond_8

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v4, p1, v1, v2, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private static b(III)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 4

    const/high16 v3, 0x20000000

    const/16 v0, 0x1e

    const/4 v1, 0x0

    if-gtz p0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(III)V

    :goto_0
    return-object v0

    :cond_0
    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    rsub-int/lit8 v0, p0, 0x1e

    add-int v1, p1, v3

    shr-int/2addr v1, v0

    neg-int v2, p2

    add-int/2addr v2, v3

    shr-int/2addr v2, v0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    goto :goto_0
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 4

    const/16 v0, 0xf

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->h:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    return-object v0
.end method

.method public final a(I)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    sub-int/2addr v0, p1

    if-gtz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    shr-int/2addr v1, v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    shr-int v0, v2, v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(III)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object p0

    goto :goto_0
.end method

.method public final a(III)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    return-object v0
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/l/at;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/at;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/al;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/al;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/g/a/b/b/f;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ak;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ak;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ak;->a(Lcom/google/g/a/b/b/f;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataOutput;I)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/at;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    return v0
.end method

.method public final g()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    return-object v0
.end method

.method public final h()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    shr-int/2addr v0, v1

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    add-int/2addr v0, v3

    invoke-direct {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->b()Z

    move-result v1

    if-nez v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final i()Lcom/google/maps/api/android/lib6/gmm6/l/p;
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    if-nez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    shr-int/2addr v0, v1

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    invoke-direct {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f:I

    add-int/2addr v0, v5

    invoke-direct {v3, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-direct {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    return-object v0
.end method

.method public final j()Lcom/google/maps/api/android/lib6/gmm6/l/at;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
