.class public final Lcom/google/android/maps/driveabout/nav/f;
.super Lcom/google/googlenav/datarequest/a;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;

.field private static l:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:[Lcom/google/android/maps/driveabout/nav/ao;

.field private final d:[Lcom/google/android/maps/driveabout/nav/b;

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:F

.field private final i:F

.field private final j:Lcom/google/android/maps/driveabout/nav/ao;

.field private final k:I

.field private m:Lcom/google/googlenav/common/io/b/a;

.field private n:I

.field private o:[Lcom/google/android/maps/driveabout/nav/w;

.field private p:[Lcom/google/android/maps/driveabout/nav/ao;

.field private q:[Lcom/google/android/maps/driveabout/nav/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/nav/f;->a:Lcom/google/glass/logging/FormattingLogger;

    .line 85
    const-string v0, "com.google.android.tts"

    sput-object v0, Lcom/google/android/maps/driveabout/nav/f;->l:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([Lcom/google/android/maps/driveabout/nav/ao;IFFZLcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;)V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    .line 141
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 142
    iput p2, p0, Lcom/google/android/maps/driveabout/nav/f;->b:I

    .line 143
    iput p9, p0, Lcom/google/android/maps/driveabout/nav/f;->k:I

    .line 144
    iput p3, p0, Lcom/google/android/maps/driveabout/nav/f;->h:F

    .line 145
    iput p4, p0, Lcom/google/android/maps/driveabout/nav/f;->i:F

    .line 146
    iput-boolean p5, p0, Lcom/google/android/maps/driveabout/nav/f;->e:Z

    .line 147
    iput-object p6, p0, Lcom/google/android/maps/driveabout/nav/f;->j:Lcom/google/android/maps/driveabout/nav/ao;

    .line 148
    iput p8, p0, Lcom/google/android/maps/driveabout/nav/f;->g:I

    .line 149
    iput-object p10, p0, Lcom/google/android/maps/driveabout/nav/f;->d:[Lcom/google/android/maps/driveabout/nav/b;

    .line 150
    iput p7, p0, Lcom/google/android/maps/driveabout/nav/f;->f:I

    .line 151
    return-void
.end method

.method synthetic constructor <init>([Lcom/google/android/maps/driveabout/nav/ao;IFFZLcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;Lcom/google/android/maps/driveabout/nav/g;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p10}, Lcom/google/android/maps/driveabout/nav/f;-><init>([Lcom/google/android/maps/driveabout/nav/ao;IFFZLcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/f;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    return p1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    sput-object p0, Lcom/google/android/maps/driveabout/nav/f;->l:Ljava/lang/String;

    .line 156
    return-void
.end method

.method static synthetic a([Lcom/google/android/maps/driveabout/nav/ao;)Z
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/google/android/maps/driveabout/nav/f;->b([Lcom/google/android/maps/driveabout/nav/ao;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x5

    const/4 v1, 0x0

    .line 566
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 567
    new-array v3, v2, [Lcom/google/android/maps/driveabout/nav/ao;

    move v0, v1

    .line 568
    :goto_0
    if-ge v0, v2, :cond_2

    .line 569
    invoke-virtual {p0, v8, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    .line 571
    const/4 v5, 0x7

    invoke-virtual {v4, v5, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    .line 573
    add-int/lit8 v6, v2, -0x1

    if-ne v0, v6, :cond_1

    .line 574
    new-instance v6, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v6, v5, p1}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V

    aput-object v6, v3, v0

    .line 579
    :goto_1
    invoke-virtual {v4, v9}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 580
    aget-object v5, v3, v0

    invoke-virtual {v4, v9}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/nav/ao;->a(Ljava/lang/String;)V

    .line 568
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_1
    new-instance v6, Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V

    aput-object v6, v3, v0

    goto :goto_1

    .line 584
    :cond_2
    return-object v3
.end method

.method private a(Lcom/google/googlenav/common/io/b/a;[Lcom/google/android/maps/driveabout/nav/ao;)[Lcom/google/android/maps/driveabout/nav/w;
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p1, v12}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v10

    .line 512
    new-array v11, v10, [Lcom/google/android/maps/driveabout/nav/w;

    .line 513
    const/16 v1, 0xd

    invoke-static {p1, v1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v7

    .line 518
    if-le v7, v2, :cond_0

    move v7, v0

    .line 523
    :cond_0
    if-ne v7, v2, :cond_1

    const/16 v1, 0x17

    .line 524
    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/b/f;->e(Lcom/google/googlenav/common/io/b/a;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    const/4 v7, 0x3

    :cond_1
    move v9, v0

    .line 529
    :goto_0
    if-ge v9, v10, :cond_2

    .line 530
    invoke-virtual {p1, v12, v9}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 531
    iget v1, p0, Lcom/google/android/maps/driveabout/nav/f;->k:I

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->h:F

    iget v4, p0, Lcom/google/android/maps/driveabout/nav/f;->i:F

    iget-boolean v5, p0, Lcom/google/android/maps/driveabout/nav/f;->e:Z

    iget-object v6, p0, Lcom/google/android/maps/driveabout/nav/f;->j:Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/nav/f;->q:[Lcom/google/android/maps/driveabout/nav/b;

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/googlenav/common/io/b/a;I[Lcom/google/android/maps/driveabout/nav/ao;FFZLcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    aput-object v0, v11, v9

    .line 529
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 535
    :cond_2
    return-object v11
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const/4 v1, 0x6

    .line 722
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    return v0
.end method

.method private static b([Lcom/google/android/maps/driveabout/nav/ao;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 271
    array-length v2, p0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 275
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v2

    .line 276
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v3

    .line 277
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 278
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/android/maps/driveabout/model/ab;->b(II)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 279
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/android/maps/driveabout/model/ab;->b(II)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    .line 280
    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v5

    div-double v2, v3, v5

    .line 281
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 286
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 544
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v0

    .line 545
    if-nez v0, :cond_1

    .line 546
    new-array v0, v1, [Lcom/google/android/maps/driveabout/nav/ao;

    .line 558
    :cond_0
    return-object v0

    .line 548
    :cond_1
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 550
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    .line 552
    new-array v0, v3, [Lcom/google/android/maps/driveabout/nav/ao;

    .line 553
    :goto_0
    if-ge v1, v3, :cond_0

    .line 554
    invoke-virtual {v2, v7, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    .line 556
    new-instance v5, Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V

    aput-object v5, v0, v1

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static c(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/b;
    .locals 7

    .prologue
    const/16 v6, 0xe

    const/4 v2, 0x0

    .line 592
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    .line 593
    new-array v0, v3, [Lcom/google/android/maps/driveabout/nav/b;

    move v1, v2

    .line 594
    :goto_0
    if-ge v1, v3, :cond_0

    .line 595
    invoke-virtual {p0, v6, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    .line 596
    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/b;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v5

    aput-object v5, v0, v1

    .line 597
    aget-object v5, v0, v1

    if-nez v5, :cond_1

    .line 600
    sget-object v0, Lcom/google/android/maps/driveabout/nav/f;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 601
    invoke-virtual {v4, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Option with no value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-array v0, v2, [Lcom/google/android/maps/driveabout/nav/b;

    .line 605
    :cond_0
    return-object v0

    .line 594
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private q()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 480
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    .line 482
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/f;->c(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->q:[Lcom/google/android/maps/driveabout/nav/b;

    .line 485
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/f;->r()V

    .line 487
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/f;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/f;->m:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/nav/f;->a(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/f;->m:Lcom/google/googlenav/common/io/b/a;

    invoke-direct {p0, v1, v0}, Lcom/google/android/maps/driveabout/nav/f;->a(Lcom/google/googlenav/common/io/b/a;[Lcom/google/android/maps/driveabout/nav/ao;)[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->o:[Lcom/google/android/maps/driveabout/nav/w;

    .line 491
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->k:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->o:[Lcom/google/android/maps/driveabout/nav/w;

    array-length v0, v0

    if-ge v0, v2, :cond_0

    .line 494
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/f;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/f;->b(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->p:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 501
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->p:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 502
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->p:[Lcom/google/android/maps/driveabout/nav/ao;

    goto :goto_0

    .line 506
    :cond_2
    sget-object v0, Lcom/google/android/maps/driveabout/nav/f;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Response status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 693
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    .line 697
    if-lt v1, v3, :cond_0

    .line 703
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_2

    .line 704
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/f;->b(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 712
    :cond_2
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/f;->b(I)I

    move-result v0

    .line 713
    if-ne v0, v3, :cond_0

    .line 715
    iput v3, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 762
    iput p1, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    .line 763
    return-void
.end method

.method public final a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 5

    .prologue
    .line 436
    sget-object v0, Lcom/google/android/maps/driveabout/nav/f;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "readResponseData() [response=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/common/io/b/a;->d()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/f;->m:Lcom/google/googlenav/common/io/b/a;

    .line 438
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/f;->q()V

    .line 439
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 263
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()[Lcom/google/android/maps/driveabout/nav/w;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->o:[Lcom/google/android/maps/driveabout/nav/w;

    return-object v0
.end method

.method public final c()[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->p:[Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->b:I

    return v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 352
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->k:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->k:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->f:I

    return v0
.end method

.method public final getRequestType()I
    .locals 1

    .prologue
    .line 427
    const/16 v0, 0x1c

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSubmission()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x1

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 388
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 397
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 406
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 413
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->k:I

    return v0
.end method

.method public final o()Lcom/google/googlenav/common/io/b/a;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->m:Lcom/google/googlenav/common/io/b/a;

    return-object v0
.end method

.method final p()Lcom/google/googlenav/common/io/b/a;
    .locals 10

    .prologue
    const v4, 0x186a0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 613
    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/j/b/a/b/h;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 614
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->b:I

    invoke-virtual {v2, v7, v0}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    move v0, v1

    .line 615
    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 616
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v3, v3, v0

    .line 617
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->i()Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 616
    invoke-virtual {v2, v9, v3}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_0
    const/4 v0, 0x5

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->g:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 621
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->g:I

    if-le v0, v7, :cond_1

    .line 625
    const/16 v0, 0x16

    invoke-virtual {v2, v0, v7}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 626
    const/16 v0, 0x20

    sget-object v3, Lcom/google/glass/util/Labs$Feature;->ALT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 628
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 630
    const/16 v0, 0xd

    invoke-virtual {v2, v0, v7}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 631
    const/16 v0, 0xf

    invoke-virtual {v2, v0, v7}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 633
    const/16 v0, 0x14

    invoke-virtual {v2, v0, v7}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 634
    const/16 v0, 0x30

    sget-object v3, Lcom/google/glass/util/Labs$Feature;->NID:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 635
    const/16 v0, 0xb

    invoke-virtual {v2, v0, v7}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 636
    const/16 v0, 0x26

    invoke-virtual {v2, v0, v7}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 637
    const/16 v0, 0x19

    invoke-virtual {v2, v0, v7}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 638
    const/16 v0, 0x15

    invoke-virtual {v2, v0, v7}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 639
    const/16 v0, 0x10

    invoke-virtual {v2, v0, v7}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 640
    const/16 v0, 0x1d

    invoke-virtual {v2, v0, v7}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 641
    const/16 v0, 0x1f

    invoke-virtual {v2, v0, v7}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 642
    const/16 v0, 0x17

    const/16 v3, 0x32

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 643
    const/16 v0, 0x18

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->k:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 645
    sget-object v0, Lcom/google/android/maps/driveabout/nav/f;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 646
    const/16 v0, 0x23

    sget-object v3, Lcom/google/android/maps/driveabout/nav/f;->l:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 652
    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->k:I

    if-nez v0, :cond_3

    .line 653
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v3, Lcom/google/j/b/a/b/l;->g:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v3}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 654
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v3, v3, v1

    .line 655
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/util/f;->b(Lcom/google/android/maps/driveabout/model/m;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 654
    invoke-virtual {v0, v7, v3}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 656
    invoke-virtual {v0, v9, v4}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 657
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 658
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->d:[Lcom/google/android/maps/driveabout/nav/b;

    if-eqz v0, :cond_4

    .line 662
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/f;->d:[Lcom/google/android/maps/driveabout/nav/b;

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 663
    const/16 v6, 0xa

    .line 664
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/b;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    .line 663
    invoke-virtual {v2, v6, v5}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 668
    :cond_4
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->h:F

    cmpl-float v0, v0, v8

    if-gez v0, :cond_5

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->i:F

    cmpl-float v0, v0, v8

    if-ltz v0, :cond_8

    .line 669
    :cond_5
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v3, Lcom/google/j/b/a/b/h;->A:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v3}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 670
    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->h:F

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_6

    .line 671
    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->h:F

    float-to-int v3, v3

    invoke-virtual {v0, v7, v3}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 673
    :cond_6
    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->i:F

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_7

    .line 674
    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->i:F

    float-to-int v3, v3

    invoke-virtual {v0, v9, v3}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 676
    :cond_7
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 679
    :cond_8
    sget-object v0, Lcom/google/android/maps/driveabout/nav/f;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "getRequest() returns [request=%s, this=%s]"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/googlenav/common/io/b/a;->d()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p0, v4, v7

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    return-object v2
.end method

.method public final readResponseData(Ljava/io/DataInput;)Z
    .locals 3

    .prologue
    .line 447
    :try_start_0
    sget-object v0, Lcom/google/j/b/a/b/h;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/nav/f;->a(Lcom/google/googlenav/common/io/b/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 463
    const/4 v0, 0x1

    return v0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    const-string v1, "DA:DirectionsRequest"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    const-string v1, "DirectionsRequest: Handling request failed"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    throw v0

    .line 453
    :catch_1
    move-exception v0

    .line 456
    sget-object v1, Lcom/google/android/maps/driveabout/nav/f;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    throw v0

    .line 458
    :catch_2
    move-exception v0

    .line 459
    const-string v1, "DA:DirectionsRequest"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    const-string v1, "DirectionsRequest: Parse failed"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 728
    const-string v0, " mode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 729
    const-string v0, " action:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->k:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 730
    const-string v0, " startBearing:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->h:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 731
    const-string v0, " startSpeed:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->i:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 732
    const-string v0, " waypoints: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 733
    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 734
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 735
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/f;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/nav/f;->j:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/nav/ao;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 736
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/f;->e:Z

    if-eqz v0, :cond_2

    .line 740
    const-string v0, " hasUncertainFromPoint:true"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :cond_2
    const-string v0, " maxTripCount:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/f;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 743
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->d:[Lcom/google/android/maps/driveabout/nav/b;

    if-eqz v0, :cond_3

    .line 744
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/f;->d:[Lcom/google/android/maps/driveabout/nav/b;

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 745
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 748
    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/f;->f:I

    if-eqz v0, :cond_4

    .line 749
    const-string v0, " previousAlternateExtraMeters:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 751
    :cond_4
    const-string v0, " ] ]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeRequestData(Ljava/io/DataOutput;)V
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/f;->p()Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    .line 472
    return-void
.end method
