.class public final Lcom/google/android/maps/driveabout/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/maps/driveabout/f/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/f/b;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/a;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/a;->b:Lcom/google/android/maps/driveabout/f/b;

    .line 47
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/w;I)I
    .locals 2

    .prologue
    .line 392
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 393
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 397
    :goto_1
    return v0

    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v0

    goto :goto_1
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ah;IIII)Lcom/google/android/maps/driveabout/nav/ah;
    .locals 20

    .prologue
    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->s()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 358
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 360
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/nav/aj;

    .line 361
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->u()Ljava/util/List;

    move-result-object v3

    .line 365
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 366
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/nav/i;

    .line 367
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 369
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->j()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v3

    .line 370
    if-nez v3, :cond_3

    const/4 v9, 0x0

    .line 371
    :goto_2
    if-nez v3, :cond_4

    const/4 v10, 0x0

    .line 372
    :goto_3
    new-instance v3, Lcom/google/android/maps/driveabout/nav/al;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v6

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->d()I

    move-result v7

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->g()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->h()F

    move-result v12

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->o()Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->l()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->m()Ljava/lang/String;

    move-result-object v15

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->n()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->t()Ljava/util/List;

    move-result-object v18

    move/from16 v8, p2

    invoke-direct/range {v3 .. v19}, Lcom/google/android/maps/driveabout/nav/al;-><init>(Lcom/google/android/maps/driveabout/model/ab;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 377
    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/al;III)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v3

    return-object v3

    .line 370
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v9

    goto :goto_2

    .line 371
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ah;->f()I

    move-result v10

    goto :goto_3
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/model/ai;)Lcom/google/android/maps/driveabout/nav/al;
    .locals 18

    .prologue
    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->s()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 330
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 332
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/nav/aj;

    .line 333
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/model/ai;->a()I

    move-result v6

    .line 337
    add-int/lit8 v1, v6, -0x2

    .line 340
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ai;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/model/ai;->b()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 339
    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)D

    move-result-wide v1

    double-to-float v9, v1

    .line 343
    const/4 v14, 0x0

    .line 347
    new-instance v1, Lcom/google/android/maps/driveabout/nav/al;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/model/ai;->b()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, -0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->o()Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->l()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->m()Ljava/lang/String;

    move-result-object v13

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->t()Ljava/util/List;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move v10, v9

    invoke-direct/range {v1 .. v17}, Lcom/google/android/maps/driveabout/nav/al;-><init>(Lcom/google/android/maps/driveabout/model/ab;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method private static a(ILcom/google/android/maps/driveabout/e/ac;)Ljava/util/ArrayList;
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 228
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ac;->d()[Lcom/google/android/maps/driveabout/f/f;

    move-result-object v10

    array-length v11, v10

    move v8, v7

    :goto_0
    if-ge v8, v11, :cond_2

    aget-object v3, v10, v8

    .line 230
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/f/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Lcom/google/android/maps/driveabout/nav/aj;

    const/4 v1, 0x3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/f/f;->b()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/f/f;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/nav/aj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 231
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 233
    :cond_1
    sget-object v0, Lcom/google/android/maps/driveabout/f/e;->a:Lcom/google/android/maps/driveabout/f/f;

    if-eq v3, v0, :cond_0

    .line 235
    packed-switch p0, :pswitch_data_0

    move v1, v7

    .line 243
    :goto_2
    new-instance v0, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/f/f;->b()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/f/f;->a()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/nav/aj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 243
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    :pswitch_0
    const/4 v1, 0x2

    .line 239
    goto :goto_2

    .line 247
    :cond_2
    return-object v9

    .line 235
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/e/aa;)Ljava/util/LinkedList;
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 124
    :goto_0
    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/aa;->c:[Lcom/google/android/maps/driveabout/f/e;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 125
    new-instance v2, Lcom/google/android/maps/driveabout/e/ac;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/maps/driveabout/e/ac;-><init>(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/e/aa;I)V

    .line 126
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/ac;->f()I

    move-result v0

    goto :goto_0

    .line 131
    :cond_0
    return-object v1
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/aa;Ljava/util/List;Ljava/util/List;Lcom/google/android/maps/driveabout/model/ai;)Ljava/util/List;
    .locals 23

    .prologue
    .line 199
    new-instance v20, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/aa;->c:[Lcom/google/android/maps/driveabout/f/e;

    move-object/from16 v21, v0

    .line 201
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    .line 202
    const/4 v7, 0x0

    .line 203
    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 204
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/maps/driveabout/e/ac;

    .line 205
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/maps/driveabout/e/h;

    .line 206
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/e/ac;->e()I

    move-result v3

    .line 207
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/model/ai;)D

    move-result-wide v4

    double-to-int v8, v4

    .line 208
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 209
    :goto_1
    aget-object v3, v21, v3

    .line 210
    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/b;->a(Lcom/google/android/maps/driveabout/f/e;)F

    move-result v10

    .line 212
    invoke-static {v3}, Lcom/google/android/maps/driveabout/e/b;->b(Lcom/google/android/maps/driveabout/f/e;)F

    move-result v11

    .line 214
    if-nez v2, :cond_0

    move v10, v11

    .line 215
    :cond_0
    new-instance v2, Lcom/google/android/maps/driveabout/nav/al;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/e/ac;->i()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/driveabout/e/h;->a()I

    move-result v4

    .line 216
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/driveabout/e/h;->b()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/e/ac;->a()I

    move-result v9

    .line 217
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/driveabout/e/h;->c()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 218
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/driveabout/e/h;->d()Ljava/util/List;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {v2 .. v18}, Lcom/google/android/maps/driveabout/nav/al;-><init>(Lcom/google/android/maps/driveabout/model/ab;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 220
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/maps/driveabout/model/ai;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 203
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_0

    .line 208
    :cond_1
    add-int/lit8 v2, v3, -0x1

    aget-object v2, v21, v2

    goto :goto_1

    .line 223
    :cond_2
    return-object v20
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 142
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/ac;

    .line 143
    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/e/a;->a(ILcom/google/android/maps/driveabout/e/ac;)Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    new-instance v5, Lcom/google/android/maps/driveabout/e/i;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/e/a;->a:Landroid/content/Context;

    .line 145
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ac;->g()Lcom/google/android/maps/driveabout/f/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/b;->c(Lcom/google/android/maps/driveabout/f/e;)I

    move-result v0

    invoke-direct {v5, v6, v2, v0}, Lcom/google/android/maps/driveabout/e/i;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 144
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 148
    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_0

    .line 149
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/maps/driveabout/e/ac;

    .line 150
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ac;->b()I

    move-result v5

    .line 151
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/ac;

    invoke-static {v5, v0}, Lcom/google/android/maps/driveabout/e/a;->a(ILcom/google/android/maps/driveabout/e/ac;)Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    packed-switch v5, :pswitch_data_0

    .line 148
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 156
    :pswitch_0
    new-instance v6, Lcom/google/android/maps/driveabout/e/n;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/e/a;->a:Landroid/content/Context;

    .line 157
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ac;->c()I

    move-result v1

    invoke-direct {v6, v7, v0, v5, v1}, Lcom/google/android/maps/driveabout/e/n;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    .line 156
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :pswitch_1
    new-instance v5, Lcom/google/android/maps/driveabout/e/m;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/e/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ac;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lcom/google/android/maps/driveabout/e/m;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :pswitch_2
    new-instance v5, Lcom/google/android/maps/driveabout/e/l;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/e/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ac;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lcom/google/android/maps/driveabout/e/l;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :pswitch_3
    new-instance v5, Lcom/google/android/maps/driveabout/e/o;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/e/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ac;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lcom/google/android/maps/driveabout/e/o;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :pswitch_4
    new-instance v1, Lcom/google/android/maps/driveabout/e/k;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/e/a;->a:Landroid/content/Context;

    invoke-direct {v1, v5, v0}, Lcom/google/android/maps/driveabout/e/k;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :pswitch_5
    new-instance v5, Lcom/google/android/maps/driveabout/e/j;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/e/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ac;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lcom/google/android/maps/driveabout/e/j;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_0
    return-object v3

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private static a(ILcom/google/android/maps/driveabout/nav/w;IILjava/util/ArrayList;Lcom/google/android/maps/driveabout/model/ai;)Z
    .locals 8

    .prologue
    .line 268
    .line 269
    invoke-static {p1, p0}, Lcom/google/android/maps/driveabout/e/a;->a(Lcom/google/android/maps/driveabout/nav/w;I)I

    move-result v1

    .line 270
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    .line 274
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    .line 277
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v4

    .line 278
    add-int/lit8 v0, p0, 0x1

    .line 279
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 280
    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    invoke-virtual {p5, v3}, Lcom/google/android/maps/driveabout/model/ai;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 284
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 285
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v5

    .line 287
    invoke-virtual {p5}, Lcom/google/android/maps/driveabout/model/ai;->a()I

    move-result v6

    .line 289
    if-ne v0, v1, :cond_2

    move v2, p3

    move v3, p2

    .line 300
    :goto_3
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v5, v7, v6, v3, v2}, Lcom/google/android/maps/driveabout/e/a;->a(Lcom/google/android/maps/driveabout/nav/ah;IIII)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/ah;->i()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 306
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 309
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v2

    .line 313
    :goto_4
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v3

    :goto_5
    if-ge v3, v2, :cond_4

    .line 314
    invoke-virtual {v4, v3}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    invoke-virtual {p5, v5}, Lcom/google/android/maps/driveabout/model/ai;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 293
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v3

    .line 294
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/ah;->f()I

    move-result v2

    goto :goto_3

    .line 311
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v2

    goto :goto_4

    .line 284
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 317
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/aa;Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/w;)Lcom/google/android/maps/driveabout/nav/w;
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 61
    new-instance v5, Lcom/google/android/maps/driveabout/model/ai;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/model/ai;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/a;->b:Lcom/google/android/maps/driveabout/f/b;

    invoke-static {v1, p1}, Lcom/google/android/maps/driveabout/e/a;->a(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/e/aa;)Ljava/util/LinkedList;

    move-result-object v1

    .line 65
    new-instance v2, Lcom/google/android/maps/driveabout/e/ad;

    invoke-direct {v2, p1}, Lcom/google/android/maps/driveabout/e/ad;-><init>(Lcom/google/android/maps/driveabout/e/aa;)V

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/e/ad;->a(Ljava/util/LinkedList;)V

    .line 66
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/e/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 68
    invoke-static {p1, v1, v2, v5}, Lcom/google/android/maps/driveabout/e/a;->a(Lcom/google/android/maps/driveabout/e/aa;Ljava/util/List;Ljava/util/List;Lcom/google/android/maps/driveabout/model/ai;)Ljava/util/List;

    move-result-object v8

    .line 70
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v0

    move v3, v0

    move v2, v0

    .line 73
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 74
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/al;

    .line 75
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/nav/al;

    invoke-static {v1, v7, v2, v3}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/al;III)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/al;->f()I

    move-result v2

    .line 78
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/al;->g()I

    move-result v3

    .line 73
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/ai;->b()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 82
    const-string v1, "Describer"

    const-string v7, "Join point: "

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/ai;->a()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 85
    iget-object v0, p1, Lcom/google/android/maps/driveabout/e/aa;->b:Lcom/google/android/maps/driveabout/e/d;

    iget v0, v0, Lcom/google/android/maps/driveabout/e/d;->e:I

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/e/a;->a(ILcom/google/android/maps/driveabout/nav/w;IILjava/util/ArrayList;Lcom/google/android/maps/driveabout/model/ai;)Z

    move-result v0

    .line 90
    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    .line 91
    invoke-static {v0, v5}, Lcom/google/android/maps/driveabout/e/a;->a(Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/model/ai;)Lcom/google/android/maps/driveabout/nav/al;

    move-result-object v1

    .line 93
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 94
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/al;->f()I

    move-result v3

    .line 95
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/al;->g()I

    move-result v0

    .line 93
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/al;III)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v10, v0, [Lcom/google/android/maps/driveabout/nav/ah;

    .line 99
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/google/android/maps/driveabout/e/q;

    invoke-direct {v0, v10}, Lcom/google/android/maps/driveabout/e/q;-><init>([Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 103
    new-instance v1, Lcom/google/android/maps/driveabout/e/c;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/e/c;-><init>()V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/c;->a(Lcom/google/android/maps/driveabout/e/q;)I

    .line 106
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v0

    const/4 v1, 0x4

    .line 107
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v3

    .line 108
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/ai;->d()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v5

    .line 109
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/w;->n()I

    move-result v7

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/w;->z()[Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v8

    move-object v2, p2

    move-object v4, v10

    move-object v10, v6

    .line 106
    invoke-static/range {v0 .. v10}, Lcom/google/android/maps/driveabout/nav/w;->a(IILcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;[Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/model/ag;Ljava/lang/String;I[Lcom/google/android/maps/driveabout/nav/b;ILjava/util/List;)Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    return-object v0

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
