.class public abstract Lcom/google/maps/api/android/lib6/gmm6/m/b;
.super Lcom/google/maps/api/android/lib6/gmm6/m/h;


# instance fields
.field protected a:I

.field protected b:[[B

.field private synthetic f:Lcom/google/maps/api/android/lib6/gmm6/m/a;


# direct methods
.method protected constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->f:Lcom/google/maps/api/android/lib6/gmm6/m/a;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/h;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->b:[[B

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 19

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    new-instance v4, Lcom/google/g/a/b/b/f;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    sget-object v2, Lcom/google/n/c/a/a/d;->d:Lcom/google/g/a/b/b/h;

    move-object/from16 v0, p1

    invoke-static {v2, v0, v4}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/InputStream;Lcom/google/g/a/b/b/f;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_a

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v7

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v2

    :goto_1
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/f;->c(I)[B

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v4, v5

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b;->a(II)[B

    move-result-object v14

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    array-length v6, v14

    sub-int/2addr v6, v4

    invoke-static {v5, v2, v14, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-ge v3, v13, :cond_8

    const/16 v2, 0x1e

    invoke-virtual {v7, v2}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x1e

    invoke-virtual {v7, v2}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v10

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    move v12, v5

    move v5, v8

    move-wide v8, v10

    move/from16 v18, v6

    move v6, v2

    move/from16 v2, v18

    :goto_3
    const-wide/16 v16, 0x1

    cmp-long v15, v8, v16

    if-lez v15, :cond_3

    const-wide/16 v16, 0x3

    and-long v16, v16, v8

    move-wide/from16 v0, v16

    long-to-int v15, v0

    packed-switch v15, :pswitch_data_0

    :goto_4
    :pswitch_0
    const/4 v15, 0x2

    shr-long/2addr v8, v15

    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :pswitch_1
    or-int/2addr v2, v6

    goto :goto_4

    :pswitch_2
    or-int/2addr v5, v6

    or-int/2addr v2, v6

    goto :goto_4

    :pswitch_3
    or-int/2addr v5, v6

    goto :goto_4

    :cond_3
    const-wide/16 v16, 0x1

    cmp-long v6, v8, v16

    if-eqz v6, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid TUVW "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v6, Lcom/google/g/a/b/b/f;

    sget-object v8, Lcom/google/n/c/a/a/d;->e:Lcom/google/g/a/b/b/h;

    invoke-direct {v6, v8}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v8, 0x2

    invoke-virtual {v6, v8, v5}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v5, 0x3

    invoke-virtual {v6, v5, v2}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v2, 0x4

    invoke-virtual {v6, v2, v12}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    move-object v2, v6

    :goto_5
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v6

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->f:Lcom/google/maps/api/android/lib6/gmm6/m/a;

    invoke-static {v8}, Lcom/google/maps/api/android/lib6/gmm6/m/a;->e(Lcom/google/maps/api/android/lib6/gmm6/m/a;)I

    move-result v8

    sub-int v8, v2, v8

    new-instance v9, Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-direct {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/at;-><init>()V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/al;->values()[Lcom/google/maps/api/android/lib6/gmm6/l/al;

    move-result-object v10

    array-length v11, v10

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v11, :cond_7

    aget-object v12, v10, v2

    invoke-virtual {v12, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/al;->a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v9, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    move-object v2, v7

    goto :goto_5

    :cond_7
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v2

    new-instance v7, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v7, v8, v5, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    invoke-static {v2, v7}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Landroid/util/Pair;

    move-result-object v5

    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_b

    new-instance v2, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v6, ""

    invoke-direct {v2, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->e:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->f:Lcom/google/maps/api/android/lib6/gmm6/m/a;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/a;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Received wrong tile"

    invoke-static {v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_0

    :cond_9
    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->b:[[B

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-object v14, v4, v2

    goto :goto_8

    :cond_a
    return-void

    :cond_b
    move-object v2, v5

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private l()Lcom/google/maps/api/android/lib6/gmm6/m/c;
    .locals 5

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/m/c;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/k;->d:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/m/c;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    if-eq v1, v3, :cond_0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/c;->a()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c;->a()I

    move-result v4

    if-ge v3, v4, :cond_1

    :cond_0
    move-object v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/io/DataOutput;)V
    .locals 11

    new-instance v1, Lcom/google/g/a/b/b/f;

    sget-object v0, Lcom/google/n/c/a/a/d;->b:Lcom/google/g/a/b/b/h;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    new-instance v2, Lcom/google/g/a/b/b/f;

    sget-object v0, Lcom/google/n/c/a/a/d;->c:Lcom/google/g/a/b/b/h;

    invoke-direct {v2, v0}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/google/g/a/b/b/f;->b(ILcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->f:Lcom/google/maps/api/android/lib6/gmm6/m/a;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/a;->a(Lcom/google/maps/api/android/lib6/gmm6/m/a;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->f:Lcom/google/maps/api/android/lib6/gmm6/m/a;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/a;->b(Lcom/google/maps/api/android/lib6/gmm6/m/a;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b;->l()Lcom/google/maps/api/android/lib6/gmm6/m/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/c;->a()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->f:Lcom/google/maps/api/android/lib6/gmm6/m/a;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/a;->c(Lcom/google/maps/api/android/lib6/gmm6/m/a;)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->f:Lcom/google/maps/api/android/lib6/gmm6/m/a;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/a;->c(Lcom/google/maps/api/android/lib6/gmm6/m/a;)F

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/google/g/a/b/b/f;->a(IF)Lcom/google/g/a/b/b/f;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->f:Lcom/google/maps/api/android/lib6/gmm6/m/a;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/a;->d(Lcom/google/maps/api/android/lib6/gmm6/m/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v0}, Lcom/google/g/a/b/b/f;->a(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->f:Lcom/google/maps/api/android/lib6/gmm6/m/a;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/m/a;->c()Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/google/g/a/b/b/f;->a(II)V

    :cond_2
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v3}, Lcom/google/g/a/b/b/f;->a(II)V

    :cond_3
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a()Lcom/google/maps/api/android/lib6/gmm6/n/j;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/n/j;->d:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Lcom/google/g/a/b/b/f;->a(II)V

    :cond_4
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b;->l()Lcom/google/maps/api/android/lib6/gmm6/m/c;

    move-result-object v0

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/m/c;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    if-eq v0, v3, :cond_5

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b;->l()Lcom/google/maps/api/android/lib6/gmm6/m/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/c;->a()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    :cond_5
    const/4 v0, 0x3

    const/4 v3, 0x6

    invoke-virtual {v1, v0, v3}, Lcom/google/g/a/b/b/f;->a(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->f:Lcom/google/maps/api/android/lib6/gmm6/m/a;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/l/av;->x:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne v0, v3, :cond_6

    const/4 v0, 0x3

    const/4 v3, 0x7

    invoke-virtual {v1, v0, v3}, Lcom/google/g/a/b/b/f;->a(II)V

    :cond_6
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_8

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v3, v3, v0

    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    new-instance v5, Lcom/google/g/a/b/b/f;

    sget-object v6, Lcom/google/n/c/a/a/d;->e:Lcom/google/g/a/b/b/h;

    invoke-direct {v5, v6}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/16 v6, 0x1e

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v8

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v9

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->f:Lcom/google/maps/api/android/lib6/gmm6/m/a;

    invoke-static {v10}, Lcom/google/maps/api/android/lib6/gmm6/m/a;->e(Lcom/google/maps/api/android/lib6/gmm6/m/a;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v7, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/bq;->a(III)J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v6, 0x1

    iget-object v7, v3, Lcom/google/maps/api/android/lib6/gmm6/m/k;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iget v7, v7, Lcom/google/maps/api/android/lib6/gmm6/l/av;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v6, 0x7

    iget-object v7, v3, Lcom/google/maps/api/android/lib6/gmm6/m/k;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iget v7, v7, Lcom/google/maps/api/android/lib6/gmm6/l/av;->z:I

    invoke-virtual {v5, v6, v7}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    iget-object v6, v3, Lcom/google/maps/api/android/lib6/gmm6/m/k;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v4, v6, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/g/a/b/b/f;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x8

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/k;->i:I

    invoke-virtual {v5, v4, v3}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    :cond_7
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v5}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    invoke-static {p1, v2}, Lcom/google/g/a/b/b/j;->a(Ljava/io/DataOutput;Lcom/google/g/a/b/b/f;)V

    return-void
.end method

.method protected final a(Lcom/google/maps/api/android/lib6/gmm6/m/k;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v2

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->j()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v2

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->j()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-static {p1}, Lcom/google/g/a/b/b/j;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/g/a/b/b/f;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    sget-object v2, Lcom/google/n/c/a/a/d;->d:Lcom/google/g/a/b/b/h;

    invoke-static {v2, v1, v0}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/InputStream;Lcom/google/g/a/b/b/f;)I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v2

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->a:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->f:Lcom/google/maps/api/android/lib6/gmm6/m/a;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/a;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received tile response code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return v5

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method protected a(II)[B
    .locals 1

    new-array v0, p1, [B

    return-object v0
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0x6c

    return v0
.end method

.method protected i()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b;->a:I

    return v0
.end method
