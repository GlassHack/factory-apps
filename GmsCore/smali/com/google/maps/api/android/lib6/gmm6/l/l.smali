.class public final Lcom/google/maps/api/android/lib6/gmm6/l/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private volatile b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

.field private volatile c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/m;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/m;-><init>()V

    return-void
.end method

.method private constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c:F

    return-void
.end method

.method synthetic constructor <init>([IB)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;-><init>([I)V

    return-void
.end method

.method private a(FIIILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;[Z)I
    .locals 15

    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    const/4 v8, -0x1

    add-int v6, p3, p2

    move/from16 v5, p1

    :goto_0
    add-int/lit8 v4, p4, -0x1

    if-gt v6, v4, :cond_0

    move-object/from16 v0, p8

    invoke-virtual {p0, v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v4

    cmpl-float v7, v4, v5

    if-lez v7, :cond_3

    move v8, v6

    :goto_1
    add-int v6, v6, p2

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-ltz v8, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, p9, v8

    add-int/lit8 v5, p3, 0x1

    if-le v8, v5, :cond_1

    move-object v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(FIIILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;[Z)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v5, p4, -0x1

    if-ge v8, v5, :cond_2

    move-object v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(FIIILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;[Z)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    return v4

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/l;
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a([II)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a([II)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;-><init>([I)V

    return-object v1
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/l;
    .locals 3

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v1

    mul-int/lit8 v0, v1, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p0, p1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;-><init>([I)V

    return-object v0
.end method

.method public static a([I)Lcom/google/maps/api/android/lib6/gmm6/l/l;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public final a(F)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->d()F

    move-result v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v2, -0x1

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_1
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(I)F

    move-result v2

    cmpl-float v4, v2, v0

    if-ltz v4, :cond_2

    div-float v2, v0, v2

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    invoke-virtual {p0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v3, v0, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    goto :goto_0

    :cond_2
    sub-float v2, v0, v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 5

    mul-int/lit8 v0, p1, 0x3

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    return-object v1
.end method

.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/p;
    .locals 7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    iget v2, v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_0
    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v0, v6, :cond_4

    invoke-virtual {p0, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

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
    invoke-virtual {v5, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(II)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-direct {v1, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    return-object v0

    :cond_6
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    goto :goto_1
.end method

.method public final a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 3

    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v1, v1, v0

    iput v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public final a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 3

    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v1, v1, v0

    iget v2, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v1, v2

    iput v1, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget v2, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v1, v2

    iput v1, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v1, v1, v0

    iput v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    return-void
.end method

.method public final b(I)F
    .locals 6

    mul-int/lit8 v0, p1, 0x3

    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v2, v3, v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v3, v3, v5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final b(F)Lcom/google/maps/api/android/lib6/gmm6/l/l;
    .locals 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v0, v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v0, v0

    div-int/lit8 v10, v0, 0x3

    new-array v9, v10, [Z

    aput-boolean v2, v9, v3

    add-int/lit8 v0, v10, -0x1

    aput-boolean v2, v9, v0

    mul-float v1, p1, p1

    add-int/lit8 v4, v10, -0x1

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    new-instance v7, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(FIIILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;[Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-eq v0, v10, :cond_0

    mul-int/lit8 v0, v0, 0x3

    new-array v1, v0, [I

    move v0, v3

    :goto_1
    if-ge v3, v10, :cond_3

    aget-boolean v2, v9, v3

    if-eqz v2, :cond_2

    mul-int/lit8 v2, v3, 0x3

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v1, v0

    add-int/lit8 v2, v4, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v5, v6, 0x1

    aget v0, v0, v6

    aput v0, v1, v4

    add-int/lit8 v0, v2, 0x1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v4, v4, v5

    aput v4, v1, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;-><init>([I)V

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/l;
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v2, v2, v0

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    add-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    add-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c:I

    add-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;-><init>([I)V

    return-object v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    return-object v1
.end method

.method public final c(F)Lcom/google/maps/api/android/lib6/gmm6/l/l;
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->e()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v2, v2

    div-int/lit8 v6, v2, 0x3

    add-int/lit8 v7, v6, -0x1

    const/4 v2, 0x2

    if-le v6, v2, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x3

    if-gt v6, v2, :cond_1

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/l/n;

    invoke-direct {v8, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/n;-><init>(I)V

    if-eqz v5, :cond_3

    add-int/lit8 v2, v7, -0x1

    :goto_1
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v9, v2, 0x1

    rem-int/2addr v9, v6

    mul-int/lit8 v9, v9, 0x3

    add-int/lit8 v2, v2, 0x2

    rem-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x3

    new-instance v10, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v11, v11, v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v3, v3, 0x1

    aget v3, v12, v3

    const/4 v12, 0x0

    invoke-direct {v10, v11, v3, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    new-instance v11, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v4, v4, 0x1

    aget v4, v12, v4

    const/4 v12, 0x0

    invoke-direct {v11, v3, v4, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    new-instance v12, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v3, v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v9, v9, 0x1

    aget v4, v4, v9

    const/4 v9, 0x0

    invoke-direct {v12, v3, v4, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    new-instance v9, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v3, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v13, v2, 0x1

    aget v4, v4, v13

    const/4 v13, 0x0

    invoke-direct {v9, v3, v4, v13}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    new-instance v13, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v13}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    if-eqz v5, :cond_4

    invoke-virtual {v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_4

    const/4 v3, 0x1

    move v4, v3

    :goto_2
    if-nez v5, :cond_8

    invoke-virtual {v8, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    if-nez v2, :cond_6

    invoke-virtual {v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_2

    invoke-virtual {v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_2

    invoke-virtual {v8, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    :cond_2
    invoke-virtual {v8, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x0

    move v4, v3

    goto :goto_2

    :cond_5
    invoke-virtual {v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v12, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v3, v3, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v15, v2, 0x1

    aget v14, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v9, v3, v14, v15}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(III)V

    :cond_6
    invoke-virtual {v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_8

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, v6, 0x3

    if-ne v2, v3, :cond_5

    invoke-virtual {v10, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_7

    invoke-virtual {v12, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_7

    invoke-virtual {v8, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    :cond_7
    invoke-virtual {v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    move v3, v2

    :goto_3
    mul-int/lit8 v14, v6, 0x3

    if-ge v3, v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v14, v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v16, v3, 0x1

    aget v15, v15, v16

    invoke-virtual {v9, v14, v15}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(II)V

    if-eqz v4, :cond_9

    add-int/lit8 v14, v7, -0x1

    mul-int/lit8 v14, v14, 0x3

    if-ne v3, v14, :cond_b

    invoke-virtual {v9, v13}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_9
    :goto_4
    invoke-virtual {v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v14

    cmpl-float v15, v14, p1

    if-lez v15, :cond_d

    if-eqz v5, :cond_c

    if-ne v3, v2, :cond_c

    invoke-virtual {v13, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :goto_5
    invoke-virtual {v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v12, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x3

    goto :goto_3

    :cond_b
    mul-int/lit8 v14, v7, 0x3

    if-eq v3, v14, :cond_a

    goto :goto_4

    :cond_c
    invoke-virtual {v8, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    goto :goto_5

    :cond_d
    invoke-virtual {v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v15

    invoke-virtual {v12, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v16

    add-float/2addr v15, v14

    float-to-double v0, v15

    move-wide/from16 v18, v0

    add-float v14, v14, v16

    float-to-double v14, v14

    iget v0, v11, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v18

    iget v0, v12, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v14

    add-double v16, v16, v20

    add-double v20, v18, v14

    div-double v16, v16, v20

    iget v0, v11, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v18

    iget v0, v12, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v14

    add-double v20, v20, v22

    add-double v14, v14, v18

    div-double v14, v20, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v0, v16

    invoke-virtual {v11, v0, v14}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(II)V

    invoke-virtual {v12, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    goto :goto_6

    :cond_e
    if-nez v5, :cond_f

    invoke-virtual {v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_10

    :cond_f
    invoke-virtual {v8, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    :cond_10
    if-eqz v5, :cond_11

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->b()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    :goto_7
    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a()I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object p0

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v8, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    goto :goto_7
.end method

.method public final c(I)Lcom/google/maps/api/android/lib6/gmm6/l/l;
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v0, -0x20000000

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-gez p1, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v3, v3

    div-int/lit8 v4, v3, 0x3

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/l/n;

    invoke-direct {v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/n;-><init>(I)V

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_5

    invoke-virtual {p0, v3, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    if-eqz v0, :cond_4

    iget v7, v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-ge v7, p1, :cond_2

    iget v2, v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    add-int/2addr v2, v8

    iput v2, v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    move v2, v1

    :cond_2
    :goto_3
    invoke-virtual {v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget v7, v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-le v7, p1, :cond_2

    iget v2, v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int/2addr v2, v8

    iput v2, v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    move v2, v1

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object p0

    goto :goto_0
.end method

.method public final d()F
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(I)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c:F

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c:F

    return v0
.end method

.method public final d(I)F
    .locals 4

    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(II)F

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    add-int/lit8 v2, v2, 0x2

    aget v2, v4, v2

    if-ne v3, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 14

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v1, v1

    div-int/lit8 v6, v1, 0x3

    move v1, v0

    move-wide v2, v4

    :goto_0
    add-int/lit8 v7, v6, -0x1

    if-ge v1, v7, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v8

    iget v9, v7, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-long v10, v9

    iget v9, v8, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-long v12, v9

    mul-long/2addr v10, v12

    iget v8, v8, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-long v8, v8

    iget v7, v7, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-long v12, v7

    mul-long/2addr v8, v12

    sub-long v8, v10, v8

    add-long/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v6

    iget v7, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-long v8, v7

    iget v7, v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-long v10, v7

    mul-long/2addr v8, v10

    iget v6, v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    int-to-long v6, v6

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    int-to-long v10, v1

    mul-long/2addr v6, v10

    sub-long v6, v8, v6

    add-long/2addr v2, v6

    :cond_1
    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final g()I
    .locals 14

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v0, v0

    div-int/lit8 v7, v0, 0x3

    if-nez v7, :cond_0

    const/high16 v0, -0x20000000

    :goto_0
    return v0

    :cond_0
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    const-wide v4, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/t;-><init>(DD)V

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    const/4 v0, 0x1

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_14

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {p0, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a(I)D

    move-result-wide v4

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a(I)D

    move-result-wide v0

    const-wide v10, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v2, v4, v10

    if-nez v2, :cond_1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    :cond_1
    const-wide v10, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v2, v0, v10

    if-nez v2, :cond_2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    :cond_2
    invoke-static {v4, v5, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a(DD)D

    move-result-wide v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    cmpg-double v2, v10, v12

    if-gtz v2, :cond_4

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/h/t;

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/t;-><init>(DD)V

    move-object v0, v2

    :goto_2
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v3

    :cond_3
    :goto_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move-object v3, v0

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/h/t;

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/t;-><init>(DD)V

    move-object v0, v2

    goto :goto_2

    :cond_5
    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    invoke-virtual {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a(D)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    invoke-virtual {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a(D)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->d()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iget-wide v10, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    cmpl-double v1, v4, v10

    if-ltz v1, :cond_6

    iget-wide v0, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    iget-wide v4, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_f

    move-object v0, v3

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iget-wide v10, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    cmpl-double v1, v4, v10

    if-gez v1, :cond_8

    iget-wide v0, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    iget-wide v4, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_9

    :cond_8
    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->c()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->d()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iget-wide v10, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    cmpl-double v1, v4, v10

    if-ltz v1, :cond_e

    iget-wide v0, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    iget-wide v4, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    goto :goto_4

    :cond_f
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a()Lcom/google/maps/api/android/lib6/gmm6/h/t;

    move-result-object v0

    goto/16 :goto_3

    :cond_10
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/h/t;

    iget-wide v2, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/t;-><init>(DD)V

    move-object v0, v1

    goto/16 :goto_3

    :cond_11
    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    invoke-virtual {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a(D)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/h/t;

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iget-wide v2, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/t;-><init>(DD)V

    move-object v0, v1

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->c()Z

    move-result v1

    if-nez v1, :cond_3

    iget-wide v4, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    invoke-virtual {v0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a(D)Z

    move-result v1

    if-nez v1, :cond_3

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    iget-wide v10, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    invoke-static {v4, v5, v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a(DD)D

    move-result-wide v4

    iget-wide v10, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    iget-wide v12, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    invoke-static {v10, v11, v12, v13}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a(DD)D

    move-result-wide v10

    cmpg-double v1, v4, v10

    if-gez v1, :cond_13

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/h/t;

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iget-wide v2, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/t;-><init>(DD)V

    move-object v0, v1

    goto/16 :goto_3

    :cond_13
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/h/t;

    iget-wide v2, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/t;-><init>(DD)V

    move-object v0, v1

    goto/16 :goto_3

    :cond_14
    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    const/high16 v0, -0x20000000

    goto/16 :goto_0

    :cond_15
    const/high16 v0, -0x20000000

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a(I)D

    move-result-wide v0

    const-wide v4, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpl-double v2, v0, v4

    if-nez v2, :cond_16

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    :cond_16
    invoke-virtual {v3, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a(D)Z

    move-result v0

    if-nez v0, :cond_17

    const/high16 v0, -0x20000000

    goto/16 :goto_0

    :cond_17
    iget-wide v0, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iget-wide v4, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_18

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a()Lcom/google/maps/api/android/lib6/gmm6/h/t;

    move-result-object v0

    :goto_5
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/t;->d()Z

    move-result v0

    if-nez v0, :cond_19

    move-wide v0, v2

    :goto_6
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x41c0000000000000L    # 5.36870912E8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(I)I

    move-result v0

    goto/16 :goto_0

    :cond_18
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/t;

    iget-wide v4, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->b:D

    iget-wide v2, v3, Lcom/google/maps/api/android/lib6/gmm6/h/t;->a:D

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/t;-><init>(DD)V

    goto :goto_5

    :cond_19
    const-wide/16 v0, 0x0

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_1a

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v2

    goto :goto_6

    :cond_1a
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    sub-double v0, v2, v0

    goto :goto_6
.end method

.method public final h()Lcom/google/maps/api/android/lib6/gmm6/l/l;
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v1, v0

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x3

    aget v4, v3, v4

    aput v4, v2, v0

    add-int/lit8 v4, v0, 0x1

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x2

    aget v5, v3, v5

    aput v5, v2, v4

    add-int/lit8 v4, v0, 0x2

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    aput v5, v2, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;-><init>([I)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0xa0

    return v0
.end method
