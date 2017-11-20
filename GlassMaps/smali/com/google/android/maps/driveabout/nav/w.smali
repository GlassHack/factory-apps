.class public final Lcom/google/android/maps/driveabout/nav/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final F:Ljava/util/Comparator;

.field public static final a:[Ljava/lang/String;


# instance fields
.field private final A:Ljava/util/List;

.field private B:Z

.field private final C:Z

.field private D:Z

.field private E:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:[Lcom/google/android/maps/driveabout/nav/ah;

.field private f:Lcom/google/android/maps/driveabout/model/ag;

.field private g:Lcom/google/android/maps/driveabout/model/aj;

.field private final h:[Lcom/google/android/maps/driveabout/nav/aq;

.field private i:I

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/lang/String;

.field private volatile m:[Lcom/google/android/maps/driveabout/nav/z;

.field private n:[D

.field private o:[D

.field private final p:I

.field private final q:I

.field private final r:Z

.field private final s:F

.field private final t:F

.field private u:J

.field private v:Z

.field private final w:I

.field private x:Lcom/google/android/maps/driveabout/nav/f;

.field private y:[Lcom/google/android/maps/driveabout/nav/b;

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TRAFFIC_STATUS_UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TRAFFIC_STATUS_BLACK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TRAFFIC_STATUS_RED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TRAFFIC_STATUS_YELLOW"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TRAFFIC_STATUS_GREEN"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TRAFFIC_STATUS_IRRELEVANT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/nav/w;->a:[Ljava/lang/String;

    .line 936
    new-instance v0, Lcom/google/android/maps/driveabout/nav/x;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/nav/x;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/nav/w;->F:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(II[Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;FF[Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/model/ag;Ljava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;[Lcom/google/android/maps/driveabout/nav/z;ZI[Lcom/google/android/maps/driveabout/nav/b;ILjava/util/List;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/nav/w;->i:I

    .line 237
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/nav/w;->v:Z

    .line 274
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/nav/w;->D:Z

    .line 278
    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/w;->E:Ljava/lang/String;

    .line 329
    iput p1, p0, Lcom/google/android/maps/driveabout/nav/w;->b:I

    .line 330
    iput p2, p0, Lcom/google/android/maps/driveabout/nav/w;->c:I

    .line 331
    iput p5, p0, Lcom/google/android/maps/driveabout/nav/w;->s:F

    .line 332
    iput p6, p0, Lcom/google/android/maps/driveabout/nav/w;->t:F

    .line 333
    iput-object p7, p0, Lcom/google/android/maps/driveabout/nav/w;->e:[Lcom/google/android/maps/driveabout/nav/ah;

    .line 334
    iput-object p8, p0, Lcom/google/android/maps/driveabout/nav/w;->f:Lcom/google/android/maps/driveabout/model/ag;

    .line 335
    iput-object p9, p0, Lcom/google/android/maps/driveabout/nav/w;->l:Ljava/lang/String;

    .line 336
    iput p10, p0, Lcom/google/android/maps/driveabout/nav/w;->q:I

    .line 337
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->j:Ljava/util/ArrayList;

    .line 338
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->k:Ljava/util/ArrayList;

    .line 339
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/w;->d:Z

    .line 340
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/w;->w:I

    .line 341
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->y:[Lcom/google/android/maps/driveabout/nav/b;

    .line 342
    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/w;->z:I

    .line 343
    if-eqz p19, :cond_2

    :goto_0
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->A:Ljava/util/List;

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/nav/w;->u:J

    .line 347
    array-length v1, p7

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/nav/w;->r:Z

    .line 349
    new-instance v1, Lcom/google/android/maps/driveabout/model/aj;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->f:Lcom/google/android/maps/driveabout/model/ag;

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/model/aj;-><init>(Lcom/google/android/maps/driveabout/model/ag;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/w;->g:Lcom/google/android/maps/driveabout/model/aj;

    .line 350
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/w;->B()V

    .line 352
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/w;->e:[Lcom/google/android/maps/driveabout/nav/ah;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/nav/w;->a([Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 353
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/w;->e:[Lcom/google/android/maps/driveabout/nav/ah;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/nav/w;->b([Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 354
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/w;->e:[Lcom/google/android/maps/driveabout/nav/ah;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/nav/w;->c([Lcom/google/android/maps/driveabout/nav/ah;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/nav/w;->B:Z

    .line 355
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/w;->e:[Lcom/google/android/maps/driveabout/nav/ah;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/nav/w;->d([Lcom/google/android/maps/driveabout/nav/ah;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/nav/w;->C:Z

    .line 357
    if-eqz p3, :cond_4

    .line 358
    array-length v1, p3

    new-array v1, v1, [Lcom/google/android/maps/driveabout/nav/aq;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    .line 359
    const/4 v1, 0x0

    :goto_2
    array-length v2, p3

    if-ge v1, v2, :cond_5

    .line 360
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    new-instance v3, Lcom/google/android/maps/driveabout/nav/aq;

    aget-object v4, p3, v1

    invoke-direct {v3, v4, p0}, Lcom/google/android/maps/driveabout/nav/aq;-><init>(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/w;)V

    aput-object v3, v2, v1

    .line 361
    if-eqz p4, :cond_0

    aget-object v2, p3, v1

    .line 362
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v2

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/nav/aq;->a(Z)V

    .line 365
    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aq;->b()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 366
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/nav/w;->D:Z

    .line 359
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 343
    :cond_2
    new-instance p19, Ljava/util/ArrayList;

    invoke-direct/range {p19 .. p19}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 347
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 370
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    .line 376
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->p()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    if-ne p2, v1, :cond_8

    :cond_6
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/nav/w;->v:Z

    .line 379
    if-nez p14, :cond_9

    .line 380
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/w;->A()V

    .line 381
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/w;->p:I

    .line 387
    :goto_4
    if-eqz p20, :cond_7

    .line 388
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->E:Ljava/lang/String;

    .line 390
    :cond_7
    return-void

    .line 376
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 383
    :cond_9
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->m:[Lcom/google/android/maps/driveabout/nav/z;

    .line 384
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/maps/driveabout/nav/w;->b(D)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/nav/w;->p:I

    goto :goto_4
.end method

.method private A()V
    .locals 5

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->e:[Lcom/google/android/maps/driveabout/nav/ah;

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->e:[Lcom/google/android/maps/driveabout/nav/ah;

    array-length v0, v0

    new-array v2, v0, [Lcom/google/android/maps/driveabout/nav/z;

    .line 802
    const/4 v1, 0x0

    .line 803
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->e:[Lcom/google/android/maps/driveabout/nav/ah;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 804
    new-instance v3, Lcom/google/android/maps/driveabout/nav/z;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/nav/w;->e:[Lcom/google/android/maps/driveabout/nav/ah;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/maps/driveabout/nav/z;-><init>(II)V

    aput-object v3, v2, v0

    .line 805
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/w;->e:[Lcom/google/android/maps/driveabout/nav/ah;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ah;->f()I

    move-result v3

    add-int/2addr v1, v3

    .line 803
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 807
    :cond_0
    iput-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->m:[Lcom/google/android/maps/driveabout/nav/z;

    .line 809
    :cond_1
    return-void
.end method

.method private B()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 816
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->f:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->n:[D

    .line 817
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->f:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->o:[D

    .line 818
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->f:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 834
    :cond_0
    return-void

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->n:[D

    aput-wide v1, v0, v3

    .line 822
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->o:[D

    aput-wide v1, v0, v3

    .line 826
    const/4 v0, 0x1

    move-wide v3, v1

    :goto_0
    iget-object v5, p0, Lcom/google/android/maps/driveabout/nav/w;->n:[D

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 827
    iget-object v5, p0, Lcom/google/android/maps/driveabout/nav/w;->f:Lcom/google/android/maps/driveabout/model/ag;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/model/ag;->b(I)F

    move-result v5

    float-to-double v5, v5

    .line 828
    add-double/2addr v3, v5

    .line 829
    iget-object v7, p0, Lcom/google/android/maps/driveabout/nav/w;->f:Lcom/google/android/maps/driveabout/model/ag;

    .line 830
    invoke-virtual {v7, v0}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v1, v5

    .line 831
    iget-object v5, p0, Lcom/google/android/maps/driveabout/nav/w;->n:[D

    aput-wide v3, v5, v0

    .line 832
    iget-object v5, p0, Lcom/google/android/maps/driveabout/nav/w;->o:[D

    aput-wide v1, v5, v0

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([Lcom/google/android/maps/driveabout/model/m;)Lcom/google/android/maps/driveabout/model/ag;
    .locals 9

    .prologue
    const/high16 v8, 0x41000000    # 8.0f

    .line 763
    array-length v3, p0

    .line 764
    new-instance v4, Lcom/google/android/maps/driveabout/model/ai;

    invoke-direct {v4, v3}, Lcom/google/android/maps/driveabout/model/ai;-><init>(I)V

    .line 765
    const/4 v1, 0x0

    .line 766
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 767
    aget-object v2, p0, v0

    .line 768
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v5

    .line 769
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v2

    .line 768
    invoke-static {v5, v2}, Lcom/google/android/maps/driveabout/model/ab;->b(II)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 775
    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 776
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v3, :cond_0

    .line 777
    add-int/lit8 v5, v0, 0x1

    aget-object v5, p0, v5

    .line 778
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    .line 779
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v6

    .line 777
    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/model/ab;->b(II)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    .line 780
    invoke-virtual {v5, v2}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v6

    .line 781
    cmpl-float v7, v6, v8

    if-lez v7, :cond_0

    .line 782
    div-float v6, v8, v6

    invoke-static {v2, v5, v6, v2}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 785
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/model/ab;->a(I)V

    .line 790
    :cond_1
    invoke-virtual {v4, v2}, Lcom/google/android/maps/driveabout/model/ai;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    .line 766
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_0

    .line 793
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ai;->d()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ah;)Lcom/google/android/maps/driveabout/nav/i;
    .locals 4

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/i;

    .line 1215
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1219
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(IILcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;[Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/model/ag;Ljava/lang/String;I[Lcom/google/android/maps/driveabout/nav/b;ILjava/util/List;)Lcom/google/android/maps/driveabout/nav/w;
    .locals 22

    .prologue
    .line 506
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 507
    aget-object v2, p4, v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v2

    if-ltz v2, :cond_0

    aget-object v2, p4, v1

    .line 508
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 509
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p4

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v4, p4, v1

    .line 510
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x4e

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Invalid point index for step: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " point index: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 506
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_2
    const/4 v1, 0x2

    new-array v4, v1, [Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v1, 0x1

    aput-object p3, v4, v1

    .line 514
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 515
    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 516
    aget-object v2, p4, v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->f()I

    move-result v2

    add-int/2addr v11, v2

    .line 517
    aget-object v2, p4, v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v2

    add-int/2addr v12, v2

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 519
    :cond_3
    new-instance v1, Lcom/google/android/maps/driveabout/nav/w;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    move/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v17, p7

    move-object/from16 v18, p8

    move/from16 v19, p9

    move-object/from16 v20, p10

    invoke-direct/range {v1 .. v21}, Lcom/google/android/maps/driveabout/nav/w;-><init>(II[Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;FF[Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/model/ag;Ljava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;[Lcom/google/android/maps/driveabout/nav/z;ZI[Lcom/google/android/maps/driveabout/nav/b;ILjava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;I[Lcom/google/android/maps/driveabout/nav/ao;FFZLcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/w;
    .locals 22

    .prologue
    .line 420
    const/16 v1, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 421
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trips with multiple routes are not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_0
    const/16 v1, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 425
    :goto_0
    const/16 v2, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v10

    .line 427
    const/16 v2, 0x1c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x1c

    .line 428
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v21

    .line 429
    :goto_1
    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 430
    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    .line 431
    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    .line 432
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 433
    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v11

    .line 434
    :goto_3
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    .line 435
    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v12

    .line 437
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/w;->b(Lcom/google/googlenav/common/io/b/a;)Ljava/util/List;

    move-result-object v20

    .line 439
    invoke-static {v3}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/model/m;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/w;->a([Lcom/google/android/maps/driveabout/model/m;)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v9

    .line 442
    if-nez v1, :cond_6

    .line 443
    move-object/from16 v0, p2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p2, v1

    invoke-static {v3, v9, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/model/ag;Lcom/google/android/maps/driveabout/nav/ao;)[Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v8

    .line 449
    :goto_5
    const/4 v1, 0x0

    aget-object v1, p2, v1

    move-object/from16 v0, p2

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p2, v4

    invoke-static {v3, v1, v4}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;)[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v4

    .line 451
    invoke-static {v3, v9}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/model/ag;)Ljava/util/ArrayList;

    move-result-object v13

    .line 452
    invoke-static {v3}, Lcom/google/android/maps/driveabout/nav/w;->c(Lcom/google/googlenav/common/io/b/a;)Ljava/util/ArrayList;

    move-result-object v14

    .line 453
    invoke-static {v3}, Lcom/google/android/maps/driveabout/nav/w;->d(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/z;

    move-result-object v15

    .line 455
    const/16 v19, -0x1

    .line 456
    new-instance v1, Lcom/google/android/maps/driveabout/nav/w;

    move/from16 v3, p1

    move-object/from16 v5, p6

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v16, p5

    move/from16 v17, p7

    move-object/from16 v18, p8

    invoke-direct/range {v1 .. v21}, Lcom/google/android/maps/driveabout/nav/w;-><init>(II[Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;FF[Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/model/ag;Ljava/lang/String;IILjava/util/ArrayList;Ljava/util/ArrayList;[Lcom/google/android/maps/driveabout/nav/z;ZI[Lcom/google/android/maps/driveabout/nav/b;ILjava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 423
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 428
    :cond_2
    const-string v21, ""

    goto :goto_1

    .line 431
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 433
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 435
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 445
    :cond_6
    const/4 v1, 0x0

    new-array v8, v1, [Lcom/google/android/maps/driveabout/nav/ah;

    goto :goto_5
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/model/ag;)Ljava/util/ArrayList;
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v0, 0x0

    .line 992
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 995
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v5

    move v1, v0

    move v2, v0

    move v3, v0

    .line 1000
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1002
    invoke-virtual {p0, v8, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v6

    .line 1003
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    .line 1006
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v7

    if-lt v0, v7, :cond_0

    .line 1007
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1009
    :cond_0
    if-le v0, v3, :cond_1

    .line 1010
    new-instance v7, Lcom/google/android/maps/driveabout/nav/ab;

    invoke-direct {v7, v3, v0, v2}, Lcom/google/android/maps/driveabout/nav/ab;-><init>(III)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    .line 1000
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_0

    .line 1015
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_3

    .line 1016
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ab;

    .line 1017
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/maps/driveabout/nav/ab;-><init>(III)V

    .line 1016
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    :cond_3
    return-object v4
.end method

.method private static a([Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 3

    .prologue
    .line 1193
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1194
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 1195
    aget-object v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->b(Lcom/google/android/maps/driveabout/nav/ah;)V

    .line 1193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1197
    :cond_0
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/model/m;
    .locals 14

    .prologue
    const/16 v13, 0x9

    const/4 v12, 0x7

    const/4 v2, 0x0

    .line 1226
    invoke-virtual {p0, v12}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v7

    move v0, v2

    move v1, v2

    .line 1229
    :goto_0
    if-ge v0, v7, :cond_0

    .line 1233
    invoke-virtual {p0, v12, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 1235
    invoke-virtual {v3, v13}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v3

    array-length v3, v3

    .line 1237
    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 1229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1239
    :cond_0
    new-array v8, v1, [Lcom/google/android/maps/driveabout/model/m;

    move v6, v2

    move v4, v2

    .line 1242
    :goto_1
    if-ge v6, v7, :cond_2

    .line 1244
    invoke-virtual {p0, v12, v6}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    .line 1245
    const/16 v0, 0x8

    .line 1246
    invoke-virtual {v5, v0}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const/16 v1, 0xe

    .line 1247
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 1248
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v3

    .line 1249
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    .line 1251
    add-int/lit8 v0, v4, 0x1

    new-instance v9, Lcom/google/android/maps/driveabout/model/m;

    invoke-direct {v9, v3, v1}, Lcom/google/android/maps/driveabout/model/m;-><init>(II)V

    aput-object v9, v8, v4

    .line 1253
    invoke-virtual {v5, v13}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v9

    .line 1255
    if-eqz v9, :cond_1

    .line 1256
    array-length v10, v9

    move v4, v3

    move v3, v1

    move v1, v2

    .line 1257
    :goto_2
    if-ge v1, v10, :cond_1

    .line 1260
    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v11, v5, 0x1

    aget-byte v5, v9, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    int-to-short v1, v1

    add-int/2addr v4, v1

    .line 1263
    add-int/lit8 v5, v11, 0x1

    aget-byte v1, v9, v11

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v11, v1, 0x8

    add-int/lit8 v1, v5, 0x1

    aget-byte v5, v9, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v5, v11

    int-to-short v5, v5

    add-int/2addr v3, v5

    .line 1266
    add-int/lit8 v5, v0, 0x1

    new-instance v11, Lcom/google/android/maps/driveabout/model/m;

    invoke-direct {v11, v4, v3}, Lcom/google/android/maps/driveabout/model/m;-><init>(II)V

    aput-object v11, v8, v0

    move v0, v5

    goto :goto_2

    .line 1242
    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v4, v0

    goto :goto_1

    .line 1271
    :cond_2
    return-object v8
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/model/ag;Lcom/google/android/maps/driveabout/nav/ao;)[Lcom/google/android/maps/driveabout/nav/ah;
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v8, 0x0

    .line 1155
    invoke-virtual {p0, v11}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v9

    .line 1156
    new-array v10, v9, [Lcom/google/android/maps/driveabout/nav/ah;

    .line 1157
    const/4 v0, 0x0

    move v2, v8

    move-object v1, v0

    .line 1158
    :goto_0
    if-ge v2, v9, :cond_3

    .line 1159
    invoke-virtual {p0, v11, v2}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 1162
    if-eqz v1, :cond_4

    .line 1163
    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v3

    .line 1165
    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v4

    .line 1169
    :goto_1
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v7

    .line 1173
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v1

    const/4 v5, 0x2

    if-lt v1, v5, :cond_2

    .line 1174
    if-lez v7, :cond_0

    add-int/lit8 v1, v7, -0x1

    .line 1175
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/model/ag;->c(I)F

    move-result v1

    .line 1177
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v7, v5, :cond_1

    .line 1178
    invoke-virtual {p1, v7}, Lcom/google/android/maps/driveabout/model/ag;->c(I)F

    move-result v5

    :goto_3
    move v6, v5

    move v5, v1

    .line 1183
    :goto_4
    invoke-virtual {p1, v7}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/model/ab;IIIFFLcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    aput-object v1, v10, v2

    .line 1158
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    .line 1176
    :cond_0
    invoke-virtual {p1, v7}, Lcom/google/android/maps/driveabout/model/ag;->c(I)F

    move-result v1

    goto :goto_2

    .line 1178
    :cond_1
    add-int/lit8 v5, v7, -0x1

    .line 1179
    invoke-virtual {p1, v5}, Lcom/google/android/maps/driveabout/model/ag;->c(I)F

    move-result v5

    goto :goto_3

    .line 1181
    :cond_2
    const/4 v6, 0x0

    move v5, v6

    goto :goto_4

    .line 1188
    :cond_3
    return-object v10

    :cond_4
    move v4, v8

    move v3, v8

    goto :goto_1
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;)[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v0, 0x0

    .line 1063
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    .line 1064
    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lcom/google/android/maps/driveabout/nav/ao;

    .line 1065
    new-instance v3, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v3, p1}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/nav/ao;)V

    aput-object v3, v2, v0

    .line 1066
    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v4, p2}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/nav/ao;)V

    aput-object v4, v2, v3

    .line 1067
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1068
    add-int/lit8 v3, v0, 0x1

    new-instance v4, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {p0, v7, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1070
    :cond_0
    return-object v2
.end method

.method private b(Lcom/google/android/maps/driveabout/model/ab;DZ)Ljava/util/List;
    .locals 16

    .prologue
    .line 891
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/nav/w;->g:Lcom/google/android/maps/driveabout/model/aj;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v2, v2, p2

    double-to-int v2, v2

    .line 892
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/ab;I)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v2

    .line 891
    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/model/aj;->a(Lcom/google/android/maps/driveabout/model/am;)Ljava/util/List;

    move-result-object v7

    .line 893
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 894
    const/4 v1, 0x0

    .line 931
    :goto_0
    return-object v1

    .line 898
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 900
    new-instance v8, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v8}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 901
    new-instance v9, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v9}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 902
    new-instance v10, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v10}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 903
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    .line 904
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/model/as;

    .line 905
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/as;->a()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .line 906
    const/4 v2, 0x0

    move v6, v2

    :goto_2
    if-ge v6, v11, :cond_4

    .line 907
    invoke-virtual {v1, v6, v8}, Lcom/google/android/maps/driveabout/model/as;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 908
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v1, v2, v9}, Lcom/google/android/maps/driveabout/model/as;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 910
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0, v10}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v2

    float-to-double v12, v2

    .line 911
    cmpg-double v2, v12, p2

    if-gez v2, :cond_2

    .line 912
    const/4 v5, 0x0

    .line 913
    if-nez p4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 914
    :cond_1
    new-instance v2, Lcom/google/android/maps/driveabout/nav/aa;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/google/android/maps/driveabout/nav/aa;-><init>(Lcom/google/android/maps/driveabout/nav/x;)V

    .line 915
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    :goto_3
    if-eqz v2, :cond_2

    .line 922
    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/nav/aa;->a(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/nav/w;)Lcom/google/android/maps/driveabout/nav/w;

    .line 923
    invoke-static {v2, v12, v13}, Lcom/google/android/maps/driveabout/nav/aa;->a(Lcom/google/android/maps/driveabout/nav/aa;D)D

    .line 924
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/as;->b()I

    move-result v5

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Lcom/google/android/maps/driveabout/nav/aa;->a(Lcom/google/android/maps/driveabout/nav/aa;I)I

    .line 925
    invoke-static {v10}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/maps/driveabout/nav/aa;->a(Lcom/google/android/maps/driveabout/nav/aa;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    .line 926
    invoke-static {v8, v9}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v5

    float-to-double v12, v5

    invoke-static {v2, v12, v13}, Lcom/google/android/maps/driveabout/nav/aa;->b(Lcom/google/android/maps/driveabout/nav/aa;D)D

    .line 906
    :cond_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    .line 916
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/nav/aa;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/nav/aa;->b(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v14

    cmpg-double v2, v12, v14

    if-gez v2, :cond_7

    .line 919
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/nav/aa;

    goto :goto_3

    .line 903
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 931
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    move-object v1, v4

    goto/16 :goto_0

    :cond_7
    move-object v2, v5

    goto :goto_3
.end method

.method private static b(Lcom/google/googlenav/common/io/b/a;)Ljava/util/List;
    .locals 8

    .prologue
    const/16 v7, 0x1a

    const/4 v6, 0x2

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    .line 466
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 468
    invoke-virtual {p0, v7, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 470
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 473
    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    :goto_1
    new-instance v5, Lcom/google/android/maps/driveabout/nav/am;

    invoke-direct {v5, v4, v0}, Lcom/google/android/maps/driveabout/nav/am;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 473
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 480
    :cond_1
    return-object v2
.end method

.method private static b([Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 4

    .prologue
    .line 1201
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    .line 1202
    aget-object v0, p0, v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/i;

    .line 1203
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/i;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1204
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/ah;)Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/nav/i;->a(Lcom/google/android/maps/driveabout/nav/i;)V

    goto :goto_1

    .line 1201
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1208
    :cond_2
    return-void
.end method

.method private static c(Lcom/google/googlenav/common/io/b/a;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/16 v5, 0x12

    .line 1026
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 1028
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1029
    invoke-virtual {p0, v5, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 1030
    new-instance v4, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;

    invoke-direct {v4, v3}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1033
    :cond_0
    return-object v1
.end method

.method private static c([Lcom/google/android/maps/driveabout/nav/ah;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1403
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, p0, v2

    .line 1404
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ak;

    .line 1409
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ak;->a()I

    move-result v0

    .line 1410
    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    const/16 v5, 0x9

    if-ne v0, v5, :cond_0

    .line 1412
    :cond_1
    const/4 v0, 0x1

    .line 1416
    :goto_1
    return v0

    .line 1403
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1416
    goto :goto_1
.end method

.method private static d([Lcom/google/android/maps/driveabout/nav/ah;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1424
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p0, v2

    .line 1425
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ak;

    .line 1426
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ak;->a()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_0

    .line 1427
    const/4 v0, 0x1

    .line 1431
    :goto_1
    return v0

    .line 1424
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1431
    goto :goto_1
.end method

.method private static d(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/z;
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 1041
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 1042
    new-array v0, v2, [Lcom/google/android/maps/driveabout/nav/z;

    .line 1043
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1044
    invoke-virtual {p0, v6, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 1045
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v4

    .line 1046
    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v3

    .line 1047
    new-instance v5, Lcom/google/android/maps/driveabout/nav/z;

    invoke-direct {v5, v4, v3}, Lcom/google/android/maps/driveabout/nav/z;-><init>(II)V

    aput-object v5, v0, v1

    .line 1043
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1049
    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/nav/aa;)D
    .locals 4

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->n:[D

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->f:Lcom/google/android/maps/driveabout/model/ag;

    .line 722
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 723
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/aa;->a(Lcom/google/android/maps/driveabout/nav/aa;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final a(D)I
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->n:[D

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    .line 1079
    if-gez v0, :cond_0

    .line 1082
    add-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    .line 1084
    :cond_0
    return v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ab;D)Lcom/google/android/maps/driveabout/nav/aa;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 846
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/maps/driveabout/nav/w;->b(Lcom/google/android/maps/driveabout/model/ab;DZ)Ljava/util/List;

    move-result-object v0

    .line 847
    if-nez v0, :cond_0

    .line 848
    const/4 v0, 0x0

    .line 850
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aa;

    goto :goto_0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/nav/ah;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->e:[Lcom/google/android/maps/driveabout/nav/ah;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ab;I)Lcom/google/android/maps/driveabout/nav/ah;
    .locals 6

    .prologue
    .line 1341
    const/4 v3, 0x0

    .line 1342
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1343
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v4

    .line 1344
    :goto_0
    if-ge p2, v4, :cond_0

    .line 1345
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    .line 1346
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 1347
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/model/ab;->d(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    .line 1348
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1

    move-object v1, v2

    .line 1344
    :goto_1
    add-int/lit8 p2, p2, 0x1

    move-object v3, v1

    move v1, v0

    goto :goto_0

    .line 1353
    :cond_0
    return-object v3

    :cond_1
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method final a(Lcom/google/android/maps/driveabout/nav/f;)V
    .locals 0

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/w;->x:Lcom/google/android/maps/driveabout/nav/f;

    .line 1330
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/w;->l:Ljava/lang/String;

    .line 1140
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/w;->z:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ab;DZ)[Lcom/google/android/maps/driveabout/nav/aa;
    .locals 2

    .prologue
    .line 866
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/nav/w;->b(Lcom/google/android/maps/driveabout/model/ab;DZ)Ljava/util/List;

    move-result-object v0

    .line 867
    if-nez v0, :cond_1

    .line 868
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/nav/aa;

    .line 875
    :cond_0
    :goto_0
    return-object v0

    .line 871
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/nav/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/nav/aa;

    .line 872
    if-eqz p4, :cond_0

    .line 873
    sget-object v1, Lcom/google/android/maps/driveabout/nav/w;->F:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public final b(I)D
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->n:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final b(Lcom/google/android/maps/driveabout/nav/aa;)D
    .locals 6

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->o:[D

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->f:Lcom/google/android/maps/driveabout/model/ag;

    .line 740
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 741
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/aa;->a(Lcom/google/android/maps/driveabout/nav/aa;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v2

    float-to-double v2, v2

    .line 742
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/aa;->a(Lcom/google/android/maps/driveabout/nav/aa;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/w;->b:I

    return v0
.end method

.method public final b(D)I
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 1104
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->m:[Lcom/google/android/maps/driveabout/nav/z;

    .line 1105
    new-instance v0, Lcom/google/android/maps/driveabout/nav/z;

    .line 1107
    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/nav/w;->a(D)I

    move-result v3

    invoke-direct {v0, v3, v1}, Lcom/google/android/maps/driveabout/nav/z;-><init>(II)V

    new-instance v3, Lcom/google/android/maps/driveabout/nav/y;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/nav/y;-><init>(Lcom/google/android/maps/driveabout/nav/w;)V

    .line 1105
    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1114
    if-gez v0, :cond_0

    .line 1115
    add-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    .line 1117
    :cond_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_1

    move v0, v1

    .line 1123
    :goto_0
    return v0

    .line 1120
    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/w;->n:[D

    aget-object v3, v2, v0

    iget v3, v3, Lcom/google/android/maps/driveabout/nav/z;->a:I

    aget-wide v3, v1, v3

    .line 1121
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/w;->n:[D

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v2, v5

    iget v5, v5, Lcom/google/android/maps/driveabout/nav/z;->a:I

    aget-wide v5, v1, v5

    .line 1123
    add-int/lit8 v1, v0, 0x1

    aget-object v1, v2, v1

    iget v1, v1, Lcom/google/android/maps/driveabout/nav/z;->b:I

    int-to-double v7, v1

    sub-double v9, v5, p1

    sub-double v3, v5, v3

    div-double v3, v9, v3

    aget-object v1, v2, v0

    iget v1, v1, Lcom/google/android/maps/driveabout/nav/z;->b:I

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    iget v0, v0, Lcom/google/android/maps/driveabout/nav/z;->b:I

    sub-int v0, v1, v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    add-double/2addr v0, v7

    double-to-int v0, v0

    goto :goto_0
.end method

.method public final c(I)D
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->o:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/w;->s:F

    return v0
.end method

.method public final c(D)Ljava/util/Collection;
    .locals 4

    .prologue
    .line 1284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 1286
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aq;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    aget-object v2, v2, v0

    .line 1287
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aq;->j()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    aget-object v2, v2, v0

    .line 1288
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aq;->k()D

    move-result-wide v2

    cmpl-double v2, v2, p1

    if-lez v2, :cond_0

    .line 1289
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1292
    :cond_1
    return-object v1
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/w;->t:F

    return v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 750
    iput p1, p0, Lcom/google/android/maps/driveabout/nav/w;->i:I

    .line 751
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/w;->c:I

    if-nez v0, :cond_0

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
    .line 654
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/w;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/w;->d:Z

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->e:[Lcom/google/android/maps/driveabout/nav/ah;

    array-length v0, v0

    return v0
.end method

.method public final i()Lcom/google/android/maps/driveabout/nav/ao;
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final j()Lcom/google/android/maps/driveabout/nav/ao;
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final k()Lcom/google/android/maps/driveabout/model/ag;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->f:Lcom/google/android/maps/driveabout/model/ag;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/w;->p:I

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 697
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/w;->q:I

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/w;->w:I

    return v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/w;->i:I

    return v0
.end method

.method public final p()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 959
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 970
    :goto_0
    return v0

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 963
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ab;

    .line 964
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->a()I

    move-result v3

    if-eqz v3, :cond_2

    .line 965
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->a()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v1

    .line 967
    goto :goto_0

    :cond_3
    move v0, v2

    .line 970
    goto :goto_0
.end method

.method public final q()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final r()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final s()[Lcom/google/android/maps/driveabout/nav/aq;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->h:[Lcom/google/android/maps/driveabout/nav/aq;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 1275
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/w;->r:Z

    return v0
.end method

.method public final v()J
    .locals 2

    .prologue
    .line 1296
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/w;->u:J

    return-wide v0
.end method

.method public final w()V
    .locals 1

    .prologue
    .line 1300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->j:Ljava/util/ArrayList;

    .line 1301
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/w;->A()V

    .line 1302
    return-void
.end method

.method public final x()Z
    .locals 1

    .prologue
    .line 1305
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/w;->v:Z

    return v0
.end method

.method final y()Lcom/google/android/maps/driveabout/nav/f;
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->x:Lcom/google/android/maps/driveabout/nav/f;

    return-object v0
.end method

.method public final z()[Lcom/google/android/maps/driveabout/nav/b;
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/w;->y:[Lcom/google/android/maps/driveabout/nav/b;

    return-object v0
.end method
