.class public final Lcom/google/android/location/collectionlib/at;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method private static a(Ljava/util/List;I)Ljava/util/List;
    .locals 3

    .prologue
    .line 114
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    :goto_0
    if-ge p1, v0, :cond_0

    .line 117
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 119
    :cond_0
    return-object v1
.end method


# virtual methods
.method final a(Ljava/util/List;)Ljava/util/List;
    .locals 20

    .prologue
    .line 80
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    .line 81
    const/4 v2, 0x1

    if-ne v5, v2, :cond_0

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_0
    return-object v2

    .line 87
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/location/collectionlib/at;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/location/collectionlib/at;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 88
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/location/collectionlib/at;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/location/collectionlib/at;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 89
    div-int/lit8 v8, v5, 0x2

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 93
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v8, :cond_1

    .line 94
    const-wide v10, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    int-to-double v12, v4

    mul-double/2addr v10, v12

    int-to-double v12, v5

    div-double/2addr v10, v12

    .line 95
    new-instance v12, Lcom/google/android/location/collectionlib/au;

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-direct {v12, v14, v15, v10, v11}, Lcom/google/android/location/collectionlib/au;-><init>(DD)V

    .line 96
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/collectionlib/au;

    iget-wide v10, v12, Lcom/google/android/location/collectionlib/au;->a:D

    iget-wide v14, v2, Lcom/google/android/location/collectionlib/au;->a:D

    mul-double/2addr v10, v14

    iget-wide v14, v12, Lcom/google/android/location/collectionlib/au;->b:D

    iget-wide v0, v2, Lcom/google/android/location/collectionlib/au;->b:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    sub-double/2addr v10, v14

    iget-wide v14, v12, Lcom/google/android/location/collectionlib/au;->a:D

    iget-wide v0, v2, Lcom/google/android/location/collectionlib/au;->b:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget-wide v12, v12, Lcom/google/android/location/collectionlib/au;->b:D

    iget-wide v0, v2, Lcom/google/android/location/collectionlib/au;->a:D

    move-wide/from16 v16, v0

    mul-double v12, v12, v16

    add-double/2addr v12, v14

    new-instance v14, Lcom/google/android/location/collectionlib/au;

    invoke-direct {v14, v10, v11, v12, v13}, Lcom/google/android/location/collectionlib/au;-><init>(DD)V

    .line 97
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/collectionlib/au;

    .line 98
    new-instance v10, Lcom/google/android/location/collectionlib/au;

    iget-wide v12, v2, Lcom/google/android/location/collectionlib/au;->a:D

    iget-wide v0, v14, Lcom/google/android/location/collectionlib/au;->a:D

    move-wide/from16 v16, v0

    add-double v12, v12, v16

    iget-wide v0, v2, Lcom/google/android/location/collectionlib/au;->b:D

    move-wide/from16 v16, v0

    iget-wide v0, v14, Lcom/google/android/location/collectionlib/au;->b:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v10, v12, v13, v0, v1}, Lcom/google/android/location/collectionlib/au;-><init>(DD)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v10, Lcom/google/android/location/collectionlib/au;

    iget-wide v12, v2, Lcom/google/android/location/collectionlib/au;->a:D

    iget-wide v0, v14, Lcom/google/android/location/collectionlib/au;->a:D

    move-wide/from16 v16, v0

    sub-double v12, v12, v16

    iget-wide v0, v2, Lcom/google/android/location/collectionlib/au;->b:D

    move-wide/from16 v16, v0

    iget-wide v14, v14, Lcom/google/android/location/collectionlib/au;->b:D

    sub-double v14, v16, v14

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/google/android/location/collectionlib/au;-><init>(DD)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 101
    :cond_1
    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v2, v3

    .line 102
    goto/16 :goto_0
.end method
