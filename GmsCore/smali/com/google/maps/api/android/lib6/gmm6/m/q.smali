.class public final Lcom/google/maps/api/android/lib6/gmm6/m/q;
.super Lcom/google/maps/api/android/lib6/gmm6/m/d;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/b/o;ILjava/util/Locale;Ljava/io/File;)V
    .locals 11

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    const-string v3, "lts"

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/s;

    invoke-direct {v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/s;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/m/d;-><init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;Lcom/google/maps/api/android/lib6/gmm6/m/b/f;IZILjava/util/Locale;Ljava/io/File;)V

    return-void
.end method

.method static a(Lcom/google/g/a/b/b/f;Lcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/cp;
    .locals 21

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v3

    const/16 v1, 0x1f

    invoke-virtual {v3, v1}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x1f

    invoke-virtual {v3, v1}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/n/c;->a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/q;->a(Lcom/google/g/a/b/b/f;I)Ljava/lang/String;

    move-result-object v16

    const/4 v5, 0x4

    invoke-static {v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/q;->a(Lcom/google/g/a/b/b/f;I)Ljava/lang/String;

    move-result-object v19

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/q;->a(Lcom/google/g/a/b/b/f;I)Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v1

    div-int/lit8 v11, v1, 0xa

    :goto_1
    const-string v1, ""

    const/16 v5, 0x22

    invoke-virtual {v3, v5}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x22

    invoke-virtual {v3, v5}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v3

    if-ltz v3, :cond_a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    :goto_2
    const/4 v1, 0x0

    new-array v0, v1, [I

    move-object/from16 v17, v0

    sget-object v1, Lcom/google/maps/api/android/lib6/a/a/a;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    :try_start_0
    invoke-static {v4}, Lcom/google/maps/api/android/lib6/a/a/a;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object/from16 v18, v1

    :goto_3
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/a;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;IFLcom/google/maps/api/android/lib6/gmm6/l/h;FFF)V

    const/4 v2, 0x1

    new-array v0, v2, [Lcom/google/maps/api/android/lib6/gmm6/l/a;

    move-object/from16 v20, v0

    const/4 v2, 0x0

    aput-object v1, v20, v2

    const/4 v1, 0x0

    const/4 v10, 0x0

    if-eqz v9, :cond_9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    const/4 v2, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;F)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/google/maps/api/android/lib6/gmm6/l/db;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/af;->b:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    invoke-direct {v9, v12, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/db;-><init>(Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/l/af;)V

    :goto_4
    if-eqz v16, :cond_8

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->a()Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-result-object v6

    const-string v7, "styleid"

    const/4 v8, 0x0

    move-object/from16 v5, v16

    invoke-direct/range {v1 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;F)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_7

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/l/db;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/af;->b:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    invoke-direct {v5, v12, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/db;-><init>(Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/l/af;)V

    move-object v6, v10

    :goto_5
    if-nez v6, :cond_4

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/db;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/af;->b:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    invoke-direct {v6, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/db;-><init>(Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/l/af;)V

    :cond_4
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/i;

    const/4 v2, 0x0

    new-array v7, v2, [Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    const-string v10, "styleid"

    const/4 v12, 0x0

    const/16 v13, 0x14

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-nez v16, :cond_5

    const-string v16, ""

    :cond_5
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/ag;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move-object/from16 v4, v20

    move-object/from16 v8, v19

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v17}, Lcom/google/maps/api/android/lib6/gmm6/l/i;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/a/a/a;[Lcom/google/maps/api/android/lib6/gmm6/l/a;Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/db;[Lcom/google/maps/api/android/lib6/gmm6/l/ag;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    move-object/from16 v18, v1

    goto/16 :goto_3

    :cond_7
    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/db;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/af;->b:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    invoke-direct {v6, v12, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/db;-><init>(Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/l/af;)V

    move-object v5, v9

    goto :goto_5

    :cond_8
    move-object v6, v10

    move-object v5, v9

    goto :goto_5

    :cond_9
    move-object v9, v1

    goto :goto_4

    :cond_a
    move-object v9, v1

    goto/16 :goto_2
.end method

.method private static a(Lcom/google/g/a/b/b/f;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/l/ae;
    .locals 2

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/s;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DashServerLayerTileStore only supports LayerCoords"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    .locals 2

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/s;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DashServerLayerTileStore only supports LayerCoords"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    return-void
.end method

.method protected final h()Lcom/google/maps/api/android/lib6/gmm6/m/h;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/r;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/q;->b:Lcom/google/g/a/d;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/r;-><init>(Lcom/google/g/a/d;)V

    return-object v0
.end method

.method public final i()Lcom/google/maps/api/android/lib6/gmm6/l/av;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    return-object v0
.end method
