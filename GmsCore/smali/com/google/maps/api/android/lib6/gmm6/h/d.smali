.class final Lcom/google/maps/api/android/lib6/gmm6/h/d;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

.field final b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

.field final c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/h/y;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/h/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/h/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/h/y;Lcom/google/maps/api/android/lib6/gmm6/h/y;Lcom/google/maps/api/android/lib6/gmm6/h/y;Lcom/google/maps/api/android/lib6/gmm6/h/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    return-void
.end method

.method private a(ID)D
    .locals 10

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(I)D

    move-result-wide v4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(I)D

    move-result-wide v0

    cmpl-double v2, v4, p2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(I)D

    move-result-wide v6

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(I)D

    move-result-wide v2

    cmpl-double v8, v6, p2

    if-nez v8, :cond_2

    move-wide v0, v2

    goto :goto_0

    :cond_2
    sub-double/2addr v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_3

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_3
    sub-double/2addr v2, v0

    sub-double v4, p2, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->a(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->a(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->a(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->a(I)V

    return-void
.end method

.method private static d(III)I
    .locals 0

    if-gt p0, p1, :cond_0

    :goto_0
    return p0

    :cond_0
    sub-int/2addr p0, p2

    goto :goto_0
.end method

.method private g(II)Z
    .locals 28

    if-ltz p1, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    move/from16 v0, p1

    if-ge v0, v2, :cond_c

    if-ltz p2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    move/from16 v0, p2

    if-ge v0, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(I)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(I)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(I)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(I)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(I)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(I)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(I)D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(I)D

    move-result-wide v24

    cmpl-double v14, v2, v22

    if-nez v14, :cond_0

    cmpl-double v14, v4, v24

    if-eqz v14, :cond_1

    :cond_0
    cmpl-double v14, v10, v6

    if-nez v14, :cond_2

    cmpl-double v14, v12, v8

    if-nez v14, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    cmpl-double v14, v2, v10

    if-nez v14, :cond_3

    cmpl-double v14, v4, v12

    if-eqz v14, :cond_4

    :cond_3
    cmpl-double v14, v6, v22

    if-nez v14, :cond_9

    cmpl-double v14, v8, v24

    if-nez v14, :cond_9

    :cond_4
    cmpl-double v2, v2, v10

    if-nez v2, :cond_8

    cmpl-double v2, v4, v12

    if-nez v2, :cond_8

    cmpl-double v2, v6, v22

    if-nez v2, :cond_8

    cmpl-double v2, v8, v24

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v6, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->d(I)I

    move-result v2

    if-ne v2, v4, :cond_5

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->d(I)I

    move-result v3

    if-ne v3, v5, :cond_6

    const/4 v3, 0x1

    :goto_2
    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    :cond_9
    invoke-static/range {v2 .. v13}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDDDD)D

    move-result-wide v26

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-static/range {v14 .. v25}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDDDD)D

    move-result-wide v14

    mul-double v14, v14, v26

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_a

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    move-wide/from16 v14, v22

    move-wide/from16 v16, v24

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    invoke-static/range {v10 .. v21}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDDDD)D

    move-result-wide v2

    move-wide/from16 v14, v22

    move-wide/from16 v16, v24

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-static/range {v10 .. v21}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDDDD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_b

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private h(II)I
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(II)I

    move-result v0

    :goto_0
    if-eq v0, v2, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->i(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(II)I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find egde in EdgeList."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method private i(II)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p2, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->i(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final a(I)I
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b(I)D

    move-result-wide v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c(I)D

    move-result-wide v4

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(ID)D

    move-result-wide v6

    cmpg-double v6, v6, v4

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget v6, v6, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    if-ge v0, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    :cond_1
    return v1
.end method

.method public final a(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v1, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(II)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0, p1, p2, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(III)I

    move-result v1

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/e;->a:[I

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/h/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/j;

    const-string v1, "Impossible EdgeList start case."

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/j;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->d(I)I

    move-result v2

    invoke-virtual {p0, v2, p1, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c(III)I

    move-result v2

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(IIII)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(III)I

    move-result v1

    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(IIII)V

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->e(II)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/h/u;II)Lcom/google/maps/api/android/lib6/gmm6/h/d;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c()Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move-result-object v6

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_7

    sub-int v2, p2, p3

    add-int/lit8 v7, v2, -0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget v8, v8, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    if-ge v2, v8, :cond_d

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v8, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v8

    move/from16 v0, p3

    if-le v8, v0, :cond_0

    move/from16 v0, p2

    if-lt v8, v0, :cond_4

    :cond_0
    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v9, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v9

    move/from16 v0, p3

    if-le v9, v0, :cond_1

    move/from16 v0, p2

    if-lt v9, v0, :cond_4

    :cond_1
    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v10, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v10

    iget-object v11, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v11, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v11

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    move/from16 v0, p3

    invoke-static {v8, v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d(III)I

    move-result v14

    aput v14, v12, v13

    invoke-virtual {v3, v12}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    move/from16 v0, p3

    invoke-static {v9, v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d(III)I

    move-result v9

    aput v9, v12, v13

    invoke-virtual {v4, v12}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    move/from16 v0, p3

    if-le v10, v0, :cond_2

    move/from16 v0, p2

    if-lt v10, v0, :cond_5

    :cond_2
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    move/from16 v0, p3

    invoke-static {v10, v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d(III)I

    move-result v10

    aput v10, v8, v9

    invoke-virtual {v5, v8}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    :goto_1
    move/from16 v0, p3

    if-le v11, v0, :cond_3

    move/from16 v0, p2

    if-lt v11, v0, :cond_6

    :cond_3
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    move/from16 v0, p3

    invoke-static {v11, v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d(III)I

    move-result v10

    aput v10, v8, v9

    invoke-virtual {v6, v8}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    move/from16 v0, p3

    invoke-static {v8, v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d(III)I

    move-result v8

    aput v8, v9, v10

    invoke-virtual {v5, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    goto :goto_1

    :cond_6
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/h/j;

    const-string v3, "When cutting edge list, we lost a merge vertex."

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/j;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget v7, v7, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    if-ge v2, v7, :cond_d

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v7

    move/from16 v0, p2

    if-lt v7, v0, :cond_8

    move/from16 v0, p3

    if-gt v7, v0, :cond_8

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v8, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v8

    move/from16 v0, p2

    if-lt v8, v0, :cond_8

    move/from16 v0, p3

    if-gt v8, v0, :cond_8

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v9, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v9

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v10, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v10

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    sub-int v13, v7, p2

    aput v13, v11, v12

    invoke-virtual {v3, v11}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    sub-int v8, v8, p2

    aput v8, v11, v12

    invoke-virtual {v4, v11}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    const/4 v8, -0x1

    if-ne v9, v8, :cond_9

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v9, v7, v8

    invoke-virtual {v5, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    :goto_3
    const/4 v7, -0x1

    if-ne v10, v7, :cond_b

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v10, v7, v8

    invoke-virtual {v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    move/from16 v0, p2

    if-lt v9, v0, :cond_a

    move/from16 v0, p3

    if-gt v9, v0, :cond_a

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    sub-int v9, v9, p2

    aput v9, v7, v8

    invoke-virtual {v5, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    goto :goto_3

    :cond_a
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    sub-int v7, v7, p2

    aput v7, v8, v9

    invoke-virtual {v5, v8}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    goto :goto_3

    :cond_b
    move/from16 v0, p2

    if-lt v10, v0, :cond_c

    move/from16 v0, p3

    if-gt v10, v0, :cond_c

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    sub-int v9, v10, p2

    aput v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b([I)V

    goto :goto_4

    :cond_c
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/h/j;

    const-string v3, "When cutting edge list, we lost a merge vertex."

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/j;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/h/d;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/y;Lcom/google/maps/api/android/lib6/gmm6/h/y;Lcom/google/maps/api/android/lib6/gmm6/h/y;Lcom/google/maps/api/android/lib6/gmm6/h/y;)V

    return-object v2
.end method

.method public final a(III)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p3, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(III)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0, p2, p3, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(IIII)V

    add-int/lit8 v0, v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(IIII)V

    return-void
.end method

.method final a(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->e(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->e(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->e(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->e(II)V

    return-void
.end method

.method public final a(II)Z
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p2, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(II)I

    move-result v0

    if-gez v0, :cond_2

    :goto_0
    invoke-virtual {p0, p2, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(III)I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(IIII)V

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->g(II)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->g(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v2, p2

    move p2, p1

    move p1, v2

    goto :goto_0
.end method

.method final b(III)I
    .locals 26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b(I)D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c(I)D

    move-result-wide v24

    const/4 v4, 0x0

    move/from16 v20, v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    move/from16 v0, v20

    if-ge v0, v4, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(ID)D

    move-result-wide v4

    cmpl-double v6, v4, v24

    if-lez v6, :cond_1

    :cond_0
    :goto_1
    return v20

    :cond_1
    cmpl-double v4, v4, v24

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(I)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(I)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b(I)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c(I)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b(I)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c(I)D

    move-result-wide v10

    invoke-static/range {v4 .. v15}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDDDD)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    invoke-static/range {v12 .. v19}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDD)I

    move-result v4

    if-nez v4, :cond_2

    rem-int/lit8 v4, v20, 0x2

    if-eqz v4, :cond_0

    :cond_2
    add-int/lit8 v4, v20, 0x1

    move/from16 v20, v4

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    iget v0, v4, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c:I

    move/from16 v20, v0

    goto :goto_1
.end method

.method public final b(IILcom/google/maps/api/android/lib6/gmm6/h/c;)I
    .locals 5

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v1, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(II)I

    move-result v1

    if-gez v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->h(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->i(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v0

    :cond_0
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/e;->a:[I

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/h/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(I)V

    return v0

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->i(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v0

    :cond_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v3, v2, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->f(II)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v3, v2, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->f(II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->h(II)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(I)I

    move-result v3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->i(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v4, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->f(II)V

    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v1, v3, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->f(II)V

    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final b(II)Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(II)I

    move-result v0

    if-gez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->h(II)I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(I)V

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->g(II)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->g(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->h(II)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final c(III)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->h(II)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->f(II)I

    move-result v0

    return v0
.end method

.method public final c(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v1, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(II)I

    move-result v1

    :goto_0
    if-eq v1, v3, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->i(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(II)I

    move-result v1

    goto :goto_0

    :cond_0
    if-eq v1, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final d(II)V
    .locals 1

    invoke-virtual {p0, p1, p2, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(III)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(IIII)V

    return-void
.end method

.method final e(II)I
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->f(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v1, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->f(II)V

    :cond_0
    return v0
.end method

.method final f(II)I
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b(I)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c(I)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(I)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(I)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->g(I)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->h(I)D

    move-result-wide v8

    invoke-static/range {v2 .. v13}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDDDD)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->b(I)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->c(I)D

    move-result-wide v20

    move-wide v14, v2

    move-wide/from16 v16, v4

    invoke-static/range {v10 .. v21}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDDDD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->j(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    move/from16 v2, v22

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{start:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n end:    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n helper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->d:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n merge:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/d;->c:Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
