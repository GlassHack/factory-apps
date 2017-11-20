.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:F

.field private static final t:Ljava/lang/ThreadLocal;

.field private static final u:[I

.field private static final v:[I

.field private static final w:[I

.field private static final x:[I

.field private static final y:[[I


# instance fields
.field private final b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final e:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private final l:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

.field private final m:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

.field private final n:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

.field private final o:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

.field private final p:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

.field private final q:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

.field private final r:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

.field private final s:Lcom/google/maps/api/android/lib6/gmm6/l/bs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x8

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a:F

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/j;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/j;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->t:Ljava/lang/ThreadLocal;

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->u:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->v:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->w:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->x:[I

    const/16 v0, 0x10

    new-array v0, v0, [[I

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->y:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x10000
        0x10000
        0x10000
        0x0
        0x8000
        0x10000
        0x8000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x8000
        0x10000
        0x8000
        0x0
        0x10000
        0x10000
        0x10000
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x4000
        0x10000
        0x4000
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x4000
        0x10000
        0x4000
        0x8000
        0x4000
        0x0
        0x4000
        0x10000
        0x4000
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->e:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->g:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->h:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->i:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->l:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->m:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->n:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->o:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->p:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->q:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->r:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->s:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/l;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)I
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static a()Lcom/google/maps/api/android/lib6/gmm6/o/c/i;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->t:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;

    return-object v0
.end method

.method public static a(II[ILcom/google/maps/api/android/lib6/gmm6/o/c/a/j;)V
    .locals 11

    const v10, 0x8000

    const/16 v9, 0xa

    const/high16 v8, 0x10000

    const/4 v3, 0x1

    const/4 v1, 0x0

    add-int/lit8 v0, p0, -0x1

    mul-int/lit8 v0, v0, 0x5

    invoke-interface {p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->E_()I

    move-result v2

    add-int/2addr v0, v2

    invoke-interface {p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->d_(I)V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->y:[[I

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->y:[[I

    shl-int v5, v3, p1

    mul-int/lit8 v0, v5, 0x5

    mul-int/lit8 v0, v0, 0x2

    new-array v6, v0, [I

    div-int v0, v10, v5

    move v2, v0

    move v0, v1

    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_0

    aput v1, v6, v0

    add-int/lit8 v7, v0, 0x1

    aput v2, v6, v7

    add-int/lit8 v7, v0, 0x2

    aput v8, v6, v7

    add-int/lit8 v7, v0, 0x3

    aput v2, v6, v7

    add-int/lit8 v7, v0, 0x4

    aput v8, v6, v7

    add-int/lit8 v7, v0, 0x5

    aput v2, v6, v7

    add-int/lit8 v7, v0, 0x6

    aput v1, v6, v7

    add-int/lit8 v7, v0, 0x7

    aput v2, v6, v7

    add-int/lit8 v7, v0, 0x8

    aput v10, v6, v7

    add-int/lit8 v7, v0, 0x9

    aput v2, v6, v7

    div-int v7, v8, v5

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_0
    aput-object v6, v4, p1

    :cond_1
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->y:[[I

    aget-object v2, v0, p1

    if-eqz p2, :cond_2

    array-length v0, p2

    if-ne v0, v3, :cond_4

    :cond_2
    if-nez p2, :cond_3

    :goto_1
    if-ge v3, p0, :cond_5

    mul-int/lit8 v0, v1, 0x5

    mul-int/lit8 v0, v0, 0x2

    invoke-interface {p3, v2, v0, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a([III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    aget v1, p2, v1

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_2
    if-ge v0, p0, :cond_5

    aget v1, p2, v0

    mul-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x2

    invoke-interface {p3, v2, v1, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a([III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/l/l;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, v0, 0x2

    mul-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)I
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    :goto_1
    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FLcom/google/maps/api/android/lib6/gmm6/l/h;ILcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;ZZ)I
    .locals 22

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v10

    const/4 v2, 0x2

    if-ne v10, v2, :cond_5

    invoke-interface/range {p5 .. p5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->e:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->g:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->h:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    const/4 v10, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v4, v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move/from16 v0, p2

    invoke-static {v5, v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    if-eqz p8, :cond_1

    invoke-static {v3, v7, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_1
    if-eqz p9, :cond_2

    invoke-static {v4, v7, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_2
    invoke-static {v3, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v9, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    invoke-static {v3, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v9, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    iget v7, v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    div-int/lit8 v7, v7, 0x2

    iget v10, v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v7, v10

    iput v7, v8, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    div-int/lit8 v3, v3, 0x2

    iget v7, v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    iput v3, v8, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-static {v8, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v9, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    invoke-static {v8, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v9, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    invoke-static {v4, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v9, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    invoke-static {v4, v6, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v9, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i()F

    move-result v4

    div-float v4, v4, p2

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    const/high16 v4, 0x47800000    # 65536.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    if-eqz p8, :cond_3

    const/4 v4, 0x0

    const/high16 v5, 0x10000

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    const/high16 v4, 0x10000

    const/high16 v5, 0x10000

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    const/high16 v4, 0x10000

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    if-eqz p9, :cond_4

    const/4 v3, 0x0

    const/high16 v4, 0x10000

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    const/high16 v3, 0x10000

    const/high16 v4, 0x10000

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    :goto_2
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v2, 0x3

    move-object/from16 v0, p7

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(IIII)V

    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x3

    add-int/lit8 v5, v2, 0x4

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p7

    invoke-interface {v0, v3, v4, v5, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(IIII)V

    const/4 v2, 0x6

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    const/high16 v4, 0x10000

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    const/high16 v4, 0x10000

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    if-ge v10, v2, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->e:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->g:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->h:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->i:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-interface/range {p5 .. p5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v12, v11, v14}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v14, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v11, v5, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, v16

    invoke-static {v11, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, v16

    invoke-static {v11, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    invoke-static {v11, v5, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, v16

    invoke-static {v11, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, v16

    invoke-static {v11, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->u:[I

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a([I)V

    const/4 v8, 0x4

    if-eqz p8, :cond_7

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v6, v2, 0x2

    add-int/lit8 v7, v2, 0x3

    move-object/from16 v0, p7

    invoke-interface {v0, v2, v3, v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(IIII)V

    :goto_3
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v6, v2, 0x3

    add-int/lit8 v7, v2, 0x4

    add-int/lit8 v9, v2, 0x5

    move-object/from16 v0, p7

    invoke-interface {v0, v3, v6, v7, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(IIII)V

    add-int/lit8 v7, v2, 0x4

    mul-float v19, p2, p2

    const/4 v2, 0x1

    move v9, v2

    :goto_4
    add-int/lit8 v2, v10, -0x1

    if-ge v9, v2, :cond_b

    add-int/lit8 v2, v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1, v13}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v13, v12, v15}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v15, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v14, v15}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)J

    move-result-wide v2

    const-wide/16 v20, 0x0

    cmp-long v2, v2, v20

    if-lez v2, :cond_8

    const/4 v2, 0x1

    :goto_5
    const/4 v6, 0x1

    invoke-static/range {v16 .. v18}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static/range {v17 .. v18}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v3

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v20, v3, v20

    if-lez v20, :cond_e

    invoke-static {v14, v15}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_e

    div-float v3, v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, v18

    invoke-static {v12, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, v18

    invoke-static {v12, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    if-eqz v2, :cond_9

    move-object v3, v4

    :goto_6
    invoke-static {v12, v11, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v20

    const/high16 v21, 0x3f000000    # 0.5f

    cmpg-float v20, v20, v21

    if-gez v20, :cond_e

    invoke-static {v12, v13, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v3

    const/high16 v20, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v20

    if-gez v3, :cond_e

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    add-int/lit8 v8, v8, 0x2

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->w:[I

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a([I)V

    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v6, v7, 0x2

    add-int/lit8 v20, v7, 0x3

    move-object/from16 v0, p7

    move/from16 v1, v20

    invoke-interface {v0, v7, v3, v6, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(IIII)V

    add-int/lit8 v6, v7, 0x2

    const/4 v3, 0x0

    move v7, v3

    move v3, v6

    move v6, v8

    :goto_7
    if-eqz v7, :cond_d

    move-object/from16 v0, v16

    invoke-static {v12, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, v16

    invoke-static {v12, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v12, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, v17

    invoke-static {v12, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, v17

    invoke-static {v12, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    sget-object v7, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->x:[I

    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a([I)V

    add-int/lit8 v6, v6, 0x5

    if-eqz v2, :cond_a

    add-int/lit8 v2, v3, 0x2

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v3, 0x4

    move-object/from16 v0, p7

    invoke-interface {v0, v2, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    :goto_8
    add-int/lit8 v2, v3, 0x3

    add-int/lit8 v7, v3, 0x4

    add-int/lit8 v8, v3, 0x5

    add-int/lit8 v20, v3, 0x6

    move-object/from16 v0, p7

    move/from16 v1, v20

    invoke-interface {v0, v2, v7, v8, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(IIII)V

    add-int/lit8 v2, v3, 0x5

    move v3, v6

    :goto_9
    invoke-virtual/range {v16 .. v17}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v14, v15}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v12, v13}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v7, v2

    move v8, v3

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v6, v2, 0x2

    add-int/lit8 v7, v2, 0x2

    add-int/lit8 v9, v2, 0x2

    move-object/from16 v0, p7

    invoke-interface {v0, v3, v6, v7, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(IIII)V

    goto/16 :goto_3

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_9
    move-object v3, v5

    goto/16 :goto_6

    :cond_a
    add-int/lit8 v2, v3, 0x0

    add-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v3, 0x3

    move-object/from16 v0, p7

    invoke-interface {v0, v2, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    goto :goto_8

    :cond_b
    move-object/from16 v0, v17

    invoke-static {v13, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, v17

    invoke-static {v13, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v13, v5, v13}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, v17

    invoke-static {v13, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, v17

    invoke-static {v13, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->v:[I

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a([I)V

    add-int/lit8 v2, v8, 0x4

    if-eqz p9, :cond_c

    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v4, v7, 0x2

    add-int/lit8 v5, v7, 0x3

    move-object/from16 v0, p7

    invoke-interface {v0, v7, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(IIII)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p7

    invoke-interface {v0, v7, v7, v7, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(IIII)V

    goto/16 :goto_0

    :cond_d
    move v2, v3

    move v3, v6

    goto/16 :goto_9

    :cond_e
    move v3, v7

    move v7, v6

    move v6, v8

    goto/16 :goto_7
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FFLcom/google/maps/api/android/lib6/gmm6/l/h;IIILcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;)V
    .locals 36

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v18

    const/4 v3, 0x1

    move/from16 v0, v18

    if-gt v0, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v19, v18, -0x1

    invoke-interface/range {p8 .. p8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b()I

    move-result v7

    mul-int/lit8 v3, v18, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->e()Z

    move-result v20

    add-int v4, v7, v3

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(I)V

    if-eqz p10, :cond_2

    invoke-interface/range {p10 .. p10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->E_()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p10

    invoke-interface {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->d_(I)V

    :cond_2
    invoke-interface/range {p9 .. p9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->D_()I

    move-result v3

    mul-int/lit8 v4, v19, 0x3

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    move-object/from16 v0, p9

    invoke-interface {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->b(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->e:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->g:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->h:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->l:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->m:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->n:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->o:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->p:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->q:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-object/from16 v33, v0

    const/4 v6, -0x1

    const/4 v4, -0x1

    const/4 v9, -0x1

    const/4 v5, -0x1

    const/4 v10, -0x1

    add-float v3, p2, p3

    move/from16 v0, p6

    int-to-float v8, v0

    mul-float v8, v8, p3

    move/from16 v0, p7

    int-to-float v11, v0

    mul-float v11, v11, p2

    add-float/2addr v8, v11

    div-float v3, v8, v3

    float-to-int v0, v3

    move/from16 v34, v0

    const/4 v3, 0x0

    move v11, v3

    move v12, v10

    move v13, v5

    move v14, v9

    move v5, v7

    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v7, v11, -0x1

    add-int/lit8 v3, v11, 0x1

    if-eqz v20, :cond_16

    if-gez v7, :cond_3

    add-int/lit8 v7, v18, -0x2

    :cond_3
    move/from16 v0, v18

    if-lt v3, v0, :cond_16

    const/4 v3, 0x1

    move/from16 v35, v3

    move v3, v7

    move/from16 v7, v35

    :goto_1
    if-ltz v3, :cond_8

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->r:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move-object v9, v3

    :goto_2
    move/from16 v0, v18

    if-ge v7, v0, :cond_9

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->s:Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move-object v8, v3

    :goto_3
    const/4 v3, 0x1

    if-eqz v9, :cond_c

    if-eqz v8, :cond_c

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v7

    iget v10, v7, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    move-object/from16 v0, v29

    iget v15, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    add-float/2addr v10, v15

    iput v10, v7, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iget v10, v7, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    move-object/from16 v0, v29

    iget v15, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    add-float/2addr v10, v15

    iput v10, v7, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    move-object/from16 v0, v30

    iget v7, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-nez v7, :cond_a

    move-object/from16 v0, v30

    iget v7, v0, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-nez v7, :cond_a

    const/4 v7, 0x1

    :goto_4
    if-eqz v7, :cond_b

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->c()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move/from16 v17, v3

    :goto_5
    if-eqz v17, :cond_e

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move/from16 v0, p2

    neg-float v7, v0

    invoke-virtual {v3, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/bs;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/bs;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p8

    move-object/from16 v1, v24

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v25

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    if-eqz p10, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-interface {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-interface {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    :cond_4
    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v7, v3, 0x1

    move v8, v5

    move v9, v3

    move v10, v7

    move v7, v6

    move v6, v4

    move v4, v3

    move v3, v5

    :goto_6
    add-int/lit8 v15, v10, 0x1

    move-object/from16 v0, p8

    move-object/from16 v1, v22

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    if-eqz p10, :cond_5

    const/16 v16, 0x0

    move-object/from16 v0, p10

    move/from16 v1, v34

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    :cond_5
    if-eqz v20, :cond_15

    move/from16 v0, v19

    if-ne v11, v0, :cond_15

    const/16 v16, 0x1

    :goto_7
    if-nez v17, :cond_6

    if-nez v16, :cond_6

    move-object/from16 v0, p9

    invoke-interface {v0, v7, v10, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    move-object/from16 v0, p9

    invoke-interface {v0, v10, v6, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    :cond_6
    if-lez v11, :cond_7

    move-object/from16 v0, p9

    invoke-interface {v0, v13, v12, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    move-object/from16 v0, p9

    invoke-interface {v0, v12, v14, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    move-object/from16 v0, p9

    invoke-interface {v0, v13, v10, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    move-object/from16 v0, p9

    invoke-interface {v0, v10, v14, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    :cond_7
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    move v12, v10

    move v13, v5

    move v14, v9

    move v4, v6

    move v6, v7

    move v5, v15

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    move-object v9, v3

    goto/16 :goto_2

    :cond_9
    const/4 v3, 0x0

    move-object v8, v3

    goto/16 :goto_3

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v3, 0x0

    move/from16 v17, v3

    goto/16 :goto_5

    :cond_c
    if-eqz v9, :cond_d

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->c()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move/from16 v17, v3

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->c()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v7

    iget v10, v7, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    neg-float v10, v10

    iput v10, v7, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iget v10, v7, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    neg-float v10, v10

    iput v10, v7, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    move/from16 v17, v3

    goto/16 :goto_5

    :cond_e
    invoke-virtual/range {v30 .. v30}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    iget v3, v9, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iget v4, v8, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    mul-float/2addr v3, v4

    iget v4, v8, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a:F

    iget v6, v9, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_11

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->c()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    invoke-virtual/range {v30 .. v31}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)F

    move-result v6

    if-eqz v3, :cond_12

    move/from16 v4, p2

    :goto_9
    neg-float v7, v6

    div-float/2addr v4, v7

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a()F

    move-result v7

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a()F

    move-result v10

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v15

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v16

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    div-float/2addr v7, v15

    div-float v10, v10, v16

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v7, v10

    if-gez v10, :cond_f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v4, v6

    :cond_f
    if-eqz v3, :cond_13

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move/from16 v0, p3

    neg-float v6, v0

    invoke-virtual {v3, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/bs;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    neg-float v4, v4

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/bs;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->c()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move/from16 v0, p3

    neg-float v4, v0

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/bs;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->c()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-static {v0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/bs;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p8

    move-object/from16 v1, v24

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v25

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v26

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v27

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    if-eqz p10, :cond_10

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-interface {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-interface {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-interface {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-interface {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    :cond_10
    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v7, v4, 0x1

    move v8, v3

    move v9, v6

    move v10, v7

    move v7, v6

    move v6, v4

    move/from16 v35, v3

    move v3, v5

    move/from16 v5, v35

    goto/16 :goto_6

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_12
    move/from16 v4, p3

    goto/16 :goto_9

    :cond_13
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/bs;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move/from16 v0, p2

    neg-float v4, v0

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/bs;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->c()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move/from16 v0, p2

    neg-float v4, v0

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/bs;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/bs;)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->c()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->b()Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(F)Lcom/google/maps/api/android/lib6/gmm6/l/bs;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-static {v0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/bs;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/bs;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p8

    move-object/from16 v1, v24

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v25

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v26

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v27

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    if-eqz p10, :cond_14

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-interface {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-interface {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-interface {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-interface {v0, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(II)V

    :cond_14
    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v7, v3, 0x1

    move v8, v6

    move v9, v4

    move v10, v7

    move v7, v6

    move v6, v3

    move/from16 v35, v3

    move v3, v5

    move/from16 v5, v35

    goto/16 :goto_6

    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_7

    :cond_16
    move/from16 v35, v3

    move v3, v7

    move/from16 v7, v35

    goto/16 :goto_1
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FLcom/google/maps/api/android/lib6/gmm6/l/h;IFLcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    invoke-interface/range {p6 .. p6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b()I

    move-result v8

    mul-int/lit8 v2, v7, 0x4

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->e:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v11, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-interface/range {p6 .. p6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b()I

    move-result v4

    add-int/2addr v4, v2

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(I)V

    if-eqz p8, :cond_0

    invoke-interface/range {p8 .. p8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->E_()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->d_(I)V

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p3

    invoke-static {v5, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    const/4 v4, 0x0

    const/4 v2, 0x1

    move v14, v2

    move v2, v4

    move-object v4, v3

    move v3, v14

    :goto_0
    if-ge v3, v6, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p3

    invoke-static {v4, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v4, v5, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move/from16 v0, p2

    neg-float v12, v0

    invoke-static {v9, v12, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-interface {v0, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    invoke-static {v5, v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-interface {v0, v11, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    invoke-static {v4, v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-interface {v0, v11, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    if-eqz p8, :cond_1

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i()F

    move-result v12

    move/from16 v0, p4

    int-to-float v13, v0

    div-float/2addr v12, v13

    mul-float v12, v12, p5

    const/4 v13, 0x0

    move-object/from16 v0, p8

    invoke-interface {v0, v13, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p8

    invoke-interface {v0, v13, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    add-float/2addr v2, v12

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p8

    invoke-interface {v0, v12, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    const/4 v12, 0x0

    move-object/from16 v0, p8

    invoke-interface {v0, v12, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v14, v5

    move-object v5, v4

    move-object v4, v14

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v7, 0x2

    add-int/lit8 v3, v7, -0x1

    invoke-interface/range {p7 .. p7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->D_()I

    move-result v6

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v6

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->b(I)V

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->e:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v2, 0x0

    :goto_1
    mul-int/lit8 v10, v2, 0x4

    add-int/2addr v10, v8

    const/4 v11, 0x0

    cmpl-float v11, p2, v11

    if-lez v11, :cond_4

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v12, v10, 0x2

    move-object/from16 v0, p7

    invoke-interface {v0, v10, v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    add-int/lit8 v11, v10, 0x2

    add-int/lit8 v12, v10, 0x3

    move-object/from16 v0, p7

    invoke-interface {v0, v10, v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    :goto_2
    if-eq v2, v3, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v11, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v11, v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v4, v5, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v6, v4, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v7, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)J

    move-result-wide v12

    long-to-float v11, v12

    mul-float v11, v11, p2

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    add-int/lit8 v11, v10, 0x4

    const/4 v12, 0x0

    cmpl-float v12, p2, v12

    if-lez v12, :cond_5

    add-int/lit8 v12, v10, 0x3

    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p7

    invoke-interface {v0, v12, v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v11, v10, 0x2

    add-int/lit8 v12, v10, 0x1

    move-object/from16 v0, p7

    invoke-interface {v0, v10, v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    add-int/lit8 v11, v10, 0x3

    add-int/lit8 v12, v10, 0x2

    move-object/from16 v0, p7

    invoke-interface {v0, v10, v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    goto :goto_2

    :cond_5
    add-int/lit8 v12, v10, 0x2

    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p7

    invoke-interface {v0, v12, v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FZLcom/google/maps/api/android/lib6/gmm6/l/h;IFLcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    invoke-interface/range {p7 .. p7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b()I

    move-result v9

    if-gtz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_5

    const/4 v2, 0x5

    :goto_1
    mul-int v10, v2, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-interface/range {p7 .. p7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->b()I

    move-result v3

    add-int/2addr v3, v10

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz p9, :cond_2

    invoke-interface/range {p9 .. p9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->E_()I

    move-result v3

    add-int/2addr v3, v10

    move-object/from16 v0, p9

    invoke-interface {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->d_(I)V

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p4

    invoke-static {v5, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    const/4 v4, 0x0

    const/4 v3, 0x1

    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    :goto_2
    if-ge v4, v7, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p4

    invoke-static {v6, v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->e:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v6, v5, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move/from16 v0, p2

    invoke-static {v12, v0, v13}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v5, v13, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-interface {v0, v12, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    invoke-static {v5, v13, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-interface {v0, v12, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    invoke-static {v6, v13, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-interface {v0, v12, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    invoke-static {v6, v13, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-interface {v0, v12, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    if-eqz p3, :cond_3

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-interface {v0, v6, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    :cond_3
    if-eqz p9, :cond_4

    invoke-static {v6, v5, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i()F

    move-result v12

    move/from16 v0, p5

    int-to-float v13, v0

    div-float/2addr v12, v13

    mul-float v12, v12, p6

    const/4 v13, 0x0

    move-object/from16 v0, p9

    invoke-interface {v0, v13, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p9

    invoke-interface {v0, v13, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    add-float/2addr v3, v12

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p9

    invoke-interface {v0, v12, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    const/4 v12, 0x0

    move-object/from16 v0, p9

    invoke-interface {v0, v12, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    if-eqz p3, :cond_4

    const/high16 v12, 0x3f000000    # 0.5f

    move-object/from16 v0, p9

    invoke-interface {v0, v12, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;->a(FF)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v6

    move-object v6, v5

    move-object/from16 v5, v16

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x4

    goto/16 :goto_1

    :cond_6
    if-eqz p8, :cond_0

    add-int v3, v9, v10

    const/16 v4, 0x7fff

    if-le v3, v4, :cond_7

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " required, but we can only store 32767"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->e:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    mul-int/lit8 v11, v8, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    :goto_3
    sub-int v3, v8, v3

    if-eqz p3, :cond_9

    invoke-interface/range {p8 .. p8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->D_()I

    move-result v12

    add-int/2addr v3, v11

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v12

    move-object/from16 v0, p8

    invoke-interface {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->b(I)V

    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v8, :cond_a

    mul-int v11, v3, v2

    add-int/2addr v11, v9

    add-int/lit8 v12, v11, 0x1

    add-int/lit8 v13, v11, 0x2

    move-object/from16 v0, p8

    invoke-interface {v0, v11, v12, v13}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    add-int/lit8 v12, v11, 0x2

    add-int/lit8 v13, v11, 0x3

    move-object/from16 v0, p8

    invoke-interface {v0, v11, v12, v13}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    invoke-interface/range {p8 .. p8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->D_()I

    move-result v3

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v3, v11

    move-object/from16 v0, p8

    invoke-interface {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->b(I)V

    goto :goto_4

    :cond_a
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    add-int/lit8 v2, v8, -0x1

    if-ge v3, v2, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v2, v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v6, v5, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v4, v6, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v7, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-lez v2, :cond_b

    const/4 v2, 0x1

    :goto_7
    mul-int/lit8 v11, v3, 0x5

    add-int/2addr v11, v9

    add-int/lit8 v12, v11, 0x5

    if-eqz v2, :cond_c

    add-int/lit8 v2, v11, 0x2

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x4

    move-object/from16 v0, p8

    invoke-interface {v0, v2, v12, v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    :goto_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v11, 0x3

    add-int/lit8 v11, v11, 0x4

    move-object/from16 v0, p8

    invoke-interface {v0, v2, v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    goto :goto_8

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v8, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v6, v5, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v4, v6, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v7, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    const/4 v2, 0x1

    :goto_9
    add-int/lit8 v3, v8, -0x1

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v9

    if-eqz v2, :cond_f

    add-int/lit8 v2, v3, 0x2

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p8

    invoke-interface {v0, v2, v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto :goto_9

    :cond_f
    add-int/lit8 v2, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p8

    invoke-interface {v0, v2, v3, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;->a(III)V

    goto/16 :goto_0
.end method
