.class public final Lcom/google/android/maps/driveabout/nav/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/ab;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:F

.field private final j:F

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Landroid/text/Spanned;

.field private final o:Lcom/google/android/maps/driveabout/nav/aj;

.field private final p:Ljava/util/Map;

.field private final q:Ljava/util/List;

.field private final r:Ljava/util/List;

.field private final s:Ljava/util/List;

.field private final t:Ljava/util/List;

.field private final u:Ljava/util/List;

.field private final v:Ljava/util/List;

.field private w:Lcom/google/android/maps/driveabout/nav/ah;

.field private x:Lcom/google/android/maps/driveabout/nav/ah;


# direct methods
.method private constructor <init>(IIILcom/google/android/maps/driveabout/model/ab;IILjava/lang/String;IIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput p1, p0, Lcom/google/android/maps/driveabout/nav/ah;->b:I

    .line 349
    iput p2, p0, Lcom/google/android/maps/driveabout/nav/ah;->c:I

    .line 350
    iput p3, p0, Lcom/google/android/maps/driveabout/nav/ah;->d:I

    .line 351
    iput-object p4, p0, Lcom/google/android/maps/driveabout/nav/ah;->a:Lcom/google/android/maps/driveabout/model/ab;

    .line 352
    iput p5, p0, Lcom/google/android/maps/driveabout/nav/ah;->e:I

    .line 353
    iput p6, p0, Lcom/google/android/maps/driveabout/nav/ah;->f:I

    .line 354
    iput p8, p0, Lcom/google/android/maps/driveabout/nav/ah;->g:I

    .line 355
    iput p9, p0, Lcom/google/android/maps/driveabout/nav/ah;->h:I

    .line 356
    iput p10, p0, Lcom/google/android/maps/driveabout/nav/ah;->i:F

    .line 357
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->j:F

    .line 359
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->k:Ljava/lang/String;

    .line 360
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->l:Ljava/lang/String;

    .line 361
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->m:Ljava/lang/String;

    .line 362
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->u:Ljava/util/List;

    .line 363
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->v:Ljava/util/List;

    .line 365
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/nav/i;

    .line 366
    invoke-virtual {v1, p0}, Lcom/google/android/maps/driveabout/nav/i;->a(Lcom/google/android/maps/driveabout/nav/ah;)V

    goto :goto_0

    .line 369
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->q:Ljava/util/List;

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->r:Ljava/util/List;

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->s:Ljava/util/List;

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->t:Ljava/util/List;

    .line 374
    move-object/from16 v0, p15

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/ah;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    .line 375
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->q:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Ljava/util/List;Ljava/util/List;)V

    .line 376
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->r:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Ljava/util/List;Ljava/util/List;)V

    .line 377
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->r:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Ljava/util/List;Ljava/util/List;)V

    .line 378
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->s:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Ljava/util/List;Ljava/util/List;)V

    .line 379
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->t:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Ljava/util/List;Ljava/util/List;)V

    .line 380
    iget v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->b:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 381
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 382
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->q:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 386
    if-eqz v1, :cond_2

    .line 387
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 388
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/ah;->r:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 394
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 395
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/nav/aj;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->o:Lcom/google/android/maps/driveabout/nav/aj;

    .line 399
    :goto_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    invoke-static {p7, v1}, Lcom/google/android/maps/driveabout/nav/ah;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->n:Landroid/text/Spanned;

    .line 400
    return-void

    .line 397
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->o:Lcom/google/android/maps/driveabout/nav/aj;

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/Spanned;
    .locals 9

    .prologue
    .line 536
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 538
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 539
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 540
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 544
    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ai;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/nav/ai;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 552
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 553
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_5

    .line 554
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    .line 555
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v6

    .line 556
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 553
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 559
    :cond_2
    const/4 v1, -0x1

    .line 561
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 562
    if-ltz v1, :cond_4

    .line 563
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    const-class v8, Ljava/lang/Object;

    invoke-virtual {v3, v1, v7, v8}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_3

    .line 565
    :cond_4
    if-ltz v1, :cond_1

    .line 566
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    const/16 v7, 0x21

    invoke-virtual {v3, v0, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 570
    :cond_5
    return-object v3
.end method

.method public static a(Lcom/google/android/maps/driveabout/nav/al;III)Lcom/google/android/maps/driveabout/nav/ah;
    .locals 18

    .prologue
    .line 494
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->b()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->c()I

    move-result v2

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->d()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->e()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->j()Ljava/lang/String;

    move-result-object v7

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->h()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->i()F

    move-result v11

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->k()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->l()Ljava/lang/String;

    move-result-object v13

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->m()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->n()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->o()Ljava/util/List;

    move-result-object v16

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->p()Ljava/util/List;

    move-result-object v17

    move/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v0 .. v17}, Lcom/google/android/maps/driveabout/nav/ah;-><init>(IIILcom/google/android/maps/driveabout/model/ab;IILjava/lang/String;IIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/model/ab;IIIFFLcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/nav/ah;
    .locals 20

    .prologue
    .line 424
    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v14

    .line 425
    const/16 v3, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v15

    .line 426
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v16

    .line 427
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v8

    .line 428
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v5

    .line 429
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v9

    .line 430
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v10

    .line 437
    const/16 v3, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    const/16 v3, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    .line 440
    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/ah;->b(Lcom/google/googlenav/common/io/b/a;)I

    move-result v11

    .line 441
    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/ah;->c(Lcom/google/googlenav/common/io/b/a;)I

    move-result v7

    .line 442
    const/16 v3, 0xc

    if-ne v11, v3, :cond_0

    .line 443
    const/4 v3, 0x7

    const/4 v6, -0x1

    invoke-static {v4, v3, v6}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v3

    .line 451
    :goto_0
    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/ah;->d(Lcom/google/googlenav/common/io/b/a;)Ljava/util/List;

    move-result-object v18

    .line 452
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/model/ab;)Ljava/util/List;

    move-result-object v19

    .line 453
    const/16 v6, 0x10

    if-ne v11, v6, :cond_1

    .line 454
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 455
    if-eqz p7, :cond_4

    .line 456
    move-object/from16 v0, p7

    invoke-static {v0, v6}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/ao;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 457
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_3

    :goto_1
    move-object v5, v4

    move-object v4, v6

    :goto_2
    move-object/from16 v17, v4

    move v6, v7

    move-object v13, v5

    move v5, v11

    move v7, v3

    .line 474
    :goto_3
    new-instance v3, Lcom/google/android/maps/driveabout/nav/al;

    move-object/from16 v4, p1

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v3 .. v19}, Lcom/google/android/maps/driveabout/nav/al;-><init>(Lcom/google/android/maps/driveabout/model/ab;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 477
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/al;III)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v3

    return-object v3

    .line 448
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 462
    :cond_1
    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/googlenav/common/io/b/a;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_2

    .line 465
    :cond_2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 466
    const/4 v3, 0x0

    .line 467
    const/4 v6, 0x0

    .line 468
    const/4 v7, -0x1

    .line 469
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 470
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    move v5, v3

    goto :goto_3

    :cond_3
    move-object v4, v5

    goto :goto_1

    :cond_4
    move-object v4, v6

    goto :goto_2
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ao;Ljava/util/List;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 512
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v2

    .line 516
    if-eqz v2, :cond_0

    .line 517
    new-instance v0, Lcom/google/android/maps/driveabout/nav/aj;

    const/4 v1, 0x6

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/nav/aj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v9

    .line 522
    if-eqz v9, :cond_2

    move v7, v6

    .line 523
    :goto_0
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/nav/ap;->a()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 524
    new-instance v0, Lcom/google/android/maps/driveabout/nav/aj;

    const/4 v1, 0x7

    invoke-virtual {v9, v7}, Lcom/google/android/maps/driveabout/nav/ap;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/nav/aj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 526
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    :cond_1
    invoke-virtual {v9, v7}, Lcom/google/android/maps/driveabout/nav/ap;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 596
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 597
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 598
    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 600
    invoke-static {v3}, Lcom/google/android/maps/driveabout/nav/aj;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_0
    return-object v1
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/model/ab;)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 901
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 902
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 904
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v3

    .line 905
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 906
    invoke-virtual {p0, v6, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    .line 908
    invoke-static {v5, v3, v4}, Lcom/google/android/maps/driveabout/nav/i;->a(Lcom/google/googlenav/common/io/b/a;D)Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v5

    .line 909
    if-eqz v5, :cond_0

    .line 910
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 913
    :cond_1
    return-object v1
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ah;Ljava/util/List;)Ljava/util/Map;
    .locals 5

    .prologue
    .line 580
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 581
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    .line 582
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->a()I

    move-result v4

    .line 583
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 584
    if-nez v1, :cond_0

    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 586
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :cond_0
    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/nav/aj;->a(Lcom/google/android/maps/driveabout/nav/aj;Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 589
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    :cond_1
    return-object v2
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 574
    if-eqz p0, :cond_0

    .line 575
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 577
    :cond_0
    return-void
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/google/googlenav/common/io/b/a;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 854
    .line 855
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 857
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    .line 859
    if-ltz v0, :cond_0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 863
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static c(Lcom/google/googlenav/common/io/b/a;)I
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 870
    .line 871
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 873
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    .line 875
    if-ltz v0, :cond_0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 879
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static d(Lcom/google/googlenav/common/io/b/a;)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 886
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 887
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 889
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 890
    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/nav/ak;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/ak;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 893
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->a:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method final a(Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/ah;->w:Lcom/google/android/maps/driveabout/nav/ah;

    .line 827
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/i;)V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    invoke-virtual {p1, p0}, Lcom/google/android/maps/driveabout/nav/i;->a(Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 819
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->b:I

    return v0
.end method

.method final b(Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/ah;->x:Lcom/google/android/maps/driveabout/nav/ah;

    .line 835
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->g:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->h:I

    return v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->i:F

    return v0
.end method

.method public final h()F
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->j:F

    return v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->e:I

    return v0
.end method

.method public final j()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->w:Lcom/google/android/maps/driveabout/nav/ah;

    return-object v0
.end method

.method public final k()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->x:Lcom/google/android/maps/driveabout/nav/ah;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->n:Landroid/text/Spanned;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->q:Ljava/util/List;

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->r:Ljava/util/List;

    return-object v0
.end method

.method public final r()Ljava/util/List;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->q:Ljava/util/List;

    .line 747
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->s:Ljava/util/List;

    goto :goto_0
.end method

.method public final s()Ljava/util/Map;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->u:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 807
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->e:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->a:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->f:I

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/ah;->b:I

    iget v4, p0, Lcom/google/android/maps/driveabout/nav/ah;->c:I

    .line 809
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->o()Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x52

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "[idx:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " loc:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " point:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " side:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->v:Ljava/util/List;

    return-object v0
.end method

.method public final v()Lcom/google/android/maps/driveabout/nav/aj;
    .locals 2

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->r()Ljava/util/List;

    move-result-object v0

    .line 789
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 790
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    .line 793
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Lcom/google/android/maps/driveabout/nav/aj;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->o:Lcom/google/android/maps/driveabout/nav/aj;

    return-object v0
.end method

.method public final x()I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->f:I

    return v0
.end method
