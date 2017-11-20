.class public Lcom/google/maps/api/android/lib6/gmm6/o/x;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bt;


# static fields
.field private static final N:Lcom/google/maps/api/android/lib6/gmm6/f/i;

.field private static final e:Lcom/google/maps/api/android/lib6/gmm6/n/a;

.field private static final f:Lcom/google/maps/api/android/lib6/gmm6/n/a;


# instance fields
.field private A:Z

.field private volatile B:Z

.field private final C:Ljava/util/Set;

.field private final D:Lcom/google/maps/api/android/lib6/gmm6/n/f;

.field private final E:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private F:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

.field private G:J

.field private H:J

.field private I:J

.field private J:Z

.field private final K:Z

.field private final L:Z

.field private final M:Lcom/google/maps/api/android/lib6/gmm6/f/i;

.field private O:I

.field private P:J

.field private final Q:Ljava/util/Set;

.field private final R:Lcom/google/maps/api/android/lib6/gmm6/l/au;

.field private S:Ljava/lang/ref/WeakReference;

.field final a:Ljava/util/ArrayList;

.field protected volatile b:Lcom/google/maps/api/android/lib6/gmm6/o/t;

.field protected volatile c:Z

.field protected final d:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

.field private final g:I

.field private final h:I

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

.field private j:Z

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private final p:Z

.field private final q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field private final r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

.field private final s:Ljava/util/ArrayList;

.field private final u:[I

.field private final v:Ljava/util/ArrayList;

.field private final w:[I

.field private final x:Lcom/google/maps/api/android/lib6/gmm6/o/aa;

.field private y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

.field private z:Lcom/google/maps/api/android/lib6/gmm6/f/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/a;->a([I)Lcom/google/maps/api/android/lib6/gmm6/n/a;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->e:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/at;->a:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/x;->e:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/a;->a(Lcom/google/maps/api/android/lib6/gmm6/n/a;Lcom/google/maps/api/android/lib6/gmm6/n/a;)Lcom/google/maps/api/android/lib6/gmm6/n/a;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->f:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/f/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/f/h;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->N:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    return-void
.end method

.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/f/i;IIILcom/google/maps/api/android/lib6/gmm6/o/bu;IZZZZZZ)V
    .locals 6

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;-><init>()V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/aa;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/aa;-><init>()V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->x:Lcom/google/maps/api/android/lib6/gmm6/o/aa;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->C:Ljava/util/Set;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->D:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->E:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->G:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->H:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->I:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->c:Z

    invoke-static {}, Lcom/google/c/c/ha;->a()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->Q:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->M:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->g:I

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->h:I

    iput-object p7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->i:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    const/16 v2, 0x100

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->k:I

    iput p8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->l:I

    iput-boolean p9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->p:Z

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->m:Z

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->n:Z

    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->o:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->K:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->L:Z

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/au;-><init>()V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->R:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->R:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/au;)V

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->K:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->e()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/b;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->d:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->s:Ljava/util/ArrayList;

    new-array v2, p4, [I

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->u:[I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->v:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p6, :cond_1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->v:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->d:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p6, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->w:[I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->O:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0xfa0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->P:J

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/y;

    invoke-direct {v3, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/y;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/x;)V

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/i;)V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;)I
    .locals 4

    const/high16 v2, 0x43000000    # 128.0f

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0
.end method

.method public static a(Landroid/content/res/Resources;I)I
    .locals 3

    const v1, 0x64140

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v2

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    div-int/lit16 v2, p1, 0x100

    int-to-float v2, v2

    mul-float/2addr v2, v2

    mul-int/lit8 v0, v0, 0x18

    div-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    return v0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bh;II)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq p2, v1, :cond_1

    move v1, v0

    :goto_0
    if-ge p3, p4, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->u:[I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-interface {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I

    move-result v0

    aput v0, v2, p3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->u:[I

    aget v0, v0, p3

    or-int/2addr v0, v1

    add-int/lit8 p3, p3, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v0, v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(ILcom/google/maps/api/android/lib6/gmm6/o/bh;)I

    move-result v0

    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/x;)Lcom/google/maps/api/android/lib6/gmm6/m/c/d;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/o/ab;
    .locals 6

    const/4 v2, 0x0

    const/16 v0, 0x100

    invoke-static {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Landroid/content/res/Resources;I)I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v4, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;-><init>(IIZZ)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-direct {v1, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/c/a;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/ab;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/x;->N:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/ab;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/f/i;IILcom/google/maps/api/android/lib6/gmm6/o/bu;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/j/q;)Lcom/google/maps/api/android/lib6/gmm6/o/x;
    .locals 7

    const/16 v0, 0x100

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Landroid/content/res/Resources;I)I

    move-result v0

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v3, 0x2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;-><init>(IIZZ)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->n:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-direct {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/c/a;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/x;->N:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->g:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/df;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/f/i;IILcom/google/maps/api/android/lib6/gmm6/o/bu;Lcom/google/maps/api/android/lib6/gmm6/j/q;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/gmm6/j/s;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->f:Lcom/google/maps/api/android/lib6/gmm6/j/n;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/n;->a(Lcom/google/maps/api/android/lib6/gmm6/j/p;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->j()Lcom/google/maps/api/android/lib6/gmm6/j/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V

    return-object v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/f/i;Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;
    .locals 7

    const/4 v1, 0x0

    const/16 v0, 0x100

    invoke-static {p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Landroid/content/res/Resources;I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    invoke-direct {v0, v1, v5, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;-><init>(IIZZ)V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    const/4 v3, 0x0

    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/o/x;->e:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    invoke-direct {v1, p1, v3, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/util/Set;Lcom/google/maps/api/android/lib6/gmm6/n/a;)V

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/x;->e:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    invoke-direct {v2, p1, v1, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/m/c/a;Lcom/google/maps/api/android/lib6/gmm6/n/a;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bb;

    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->h:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/bb;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/f/i;IILcom/google/maps/api/android/lib6/gmm6/o/bu;)V

    return-object v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;
    .locals 16

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-object/from16 v0, p0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->b:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-object/from16 v0, p0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->c:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-object/from16 v0, p0

    if-ne v0, v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x100

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Landroid/content/res/Resources;I)I

    move-result v5

    mul-int/lit8 v6, v5, 0x2

    if-nez v1, :cond_1

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->j:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_4

    :cond_1
    const/4 v12, 0x1

    :goto_1
    if-nez v12, :cond_2

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->o:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-object/from16 v0, p0

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->p:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_5

    :cond_2
    const/4 v15, 0x1

    :goto_2
    if-eqz v1, :cond_6

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/x;->f:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    move-object v2, v1

    :goto_3
    if-eqz v12, :cond_7

    const/4 v1, 0x1

    :goto_4
    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    const/16 v3, 0x8

    const/4 v7, 0x0

    invoke-direct {v4, v3, v6, v1, v7}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;-><init>(IIZZ)V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/util/Set;Lcom/google/maps/api/android/lib6/gmm6/n/a;)V

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/m/c/a;Lcom/google/maps/api/android/lib6/gmm6/n/a;)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/x;

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/f/e;

    invoke-direct {v4}, Lcom/google/maps/api/android/lib6/gmm6/f/e;-><init>()V

    const/16 v7, 0x8

    sget-object v8, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    const/16 v9, 0x100

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object/from16 v2, p0

    move v13, v12

    invoke-direct/range {v1 .. v15}, Lcom/google/maps/api/android/lib6/gmm6/o/x;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/f/i;IIILcom/google/maps/api/android/lib6/gmm6/o/bu;IZZZZZZ)V

    return-object v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/n/a;->a:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    move-object v2, v1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/o/x;)Lcom/google/maps/api/android/lib6/gmm6/n/f;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->D:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    return-object v0
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/l/av;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/gmm6/o/x;
    .locals 15

    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Landroid/content/res/Resources;)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;-><init>(IIZZ)V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-direct {v2, p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/c/a;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/x;->N:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    const/4 v6, 0x4

    sget-object v7, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    const/16 v8, 0x180

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v14}, Lcom/google/maps/api/android/lib6/gmm6/o/x;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/f/i;IIILcom/google/maps/api/android/lib6/gmm6/o/bu;IZZZZZZ)V

    return-object v0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/gmm6/o/x;)V
    .locals 8

    const/4 v7, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->O:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->P:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/16 v0, 0x6e

    const-string v1, "l"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->O:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "t="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/l/av;->B:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "n="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/b/z;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->O:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->P:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final C_()Lcom/google/maps/api/android/lib6/gmm6/f/i;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->M:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    return-object v0
.end method

.method public final F_()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->B:Z

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    if-nez v0, :cond_0

    const/high16 v0, 0x41a80000    # 21.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/l/cc;Lcom/google/maps/api/android/lib6/gmm6/o/g;Ljava/util/Set;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->d:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    invoke-interface {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)V

    invoke-interface {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Lcom/google/maps/api/android/lib6/gmm6/o/g;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2
    instance-of v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/at;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/at;

    invoke-virtual {v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/at;->a(Ljava/util/Set;)Z

    goto :goto_0

    :cond_3
    return v1
.end method

.method protected a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/Set;
    .locals 1

    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->A:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/google/maps/api/android/lib6/gmm6/f/g;)V
    .locals 2

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->H:J

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->B:Z

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bh;Ljava/util/HashSet;Ljava/util/HashSet;[I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bh;II)I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-interface {v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Ljava/util/Collection;)V

    invoke-interface {v0, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b(Ljava/util/Collection;)V

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->g()I

    move-result v0

    if-le v0, v1, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    array-length v0, p5

    if-lez v0, :cond_1

    aput v1, p5, v3

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->F:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    return-void
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->S:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->b:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->B:Z

    return-void
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 23

    move-object/from16 v0, p3

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    move-object/from16 v16, v0

    new-instance v17, Lcom/google/maps/api/android/lib6/gmm6/o/bi;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bi;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    invoke-virtual/range {v16 .. v16}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->B:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->i()Lcom/google/g/a/d;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->B:Z

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->B:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->A:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A()V

    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->s:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-interface {v3, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v3, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B()V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->J:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Ljava/util/List;)V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->n:Z

    if-eqz v3, :cond_e

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq v15, v3, :cond_9

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne v15, v3, :cond_e

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->w:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    move v5, v3

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->I()I

    move-result v3

    if-lez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->e()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->L:Z

    if-eqz v3, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->J()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    move v14, v3

    :goto_4
    if-nez v14, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->I()I

    move-result v3

    if-lez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/l/av;->x:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/l/av;->w:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_b
    const/4 v3, 0x1

    move v13, v3

    :goto_5
    if-nez v14, :cond_c

    if-eqz v13, :cond_d

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->d()Z

    move-result v18

    if-eqz v13, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    const/16 v7, 0x1e01

    const/16 v9, 0x1e01

    const/16 v10, 0x1e01

    invoke-interface {v3, v7, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    const/16 v7, 0x7f

    invoke-interface {v3, v7}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v7, v3

    :goto_6
    if-ltz v7, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v9

    const/16 v10, 0x200

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v11

    const/16 v12, 0x7f

    invoke-interface {v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v9

    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v9, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    invoke-interface {v3}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    add-int/lit8 v3, v7, -0x1

    move v7, v3

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_3

    :cond_f
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_4

    :cond_10
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_5

    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    const/16 v7, 0x1e00

    const/16 v9, 0x1e00

    const/16 v10, 0x1e00

    invoke-interface {v3, v7, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    :cond_12
    move v9, v4

    :goto_7
    if-ltz v9, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->w:[I

    aget v3, v3, v9

    if-lez v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->w:[I

    aget v3, v3, v9

    sub-int v7, v8, v3

    if-eqz v5, :cond_14

    move v4, v7

    :goto_8
    if-ge v4, v8, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->e()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v10

    const/16 v11, 0xe

    if-lt v10, v11, :cond_13

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v12

    shr-int/2addr v11, v12

    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->g()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    int-to-float v11, v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3, v11}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-static {v15}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bh;)[I

    move-result-object v3

    const/4 v11, 0x0

    aget v11, v3, v11

    const/4 v12, 0x1

    aget v12, v3, v12

    const/16 v19, 0x2

    aget v19, v3, v19

    const/16 v20, 0x3

    aget v3, v3, v20

    move/from16 v0, v19

    invoke-interface {v10, v11, v12, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    const/4 v3, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-interface {v10, v3, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_13
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_8

    :cond_14
    if-eqz v14, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    const/16 v4, 0x1e01

    const/16 v10, 0x1e01

    const/16 v11, 0x1e01

    invoke-interface {v3, v4, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    const/16 v4, 0x7f

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    move v4, v7

    :goto_9
    if-ge v4, v8, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v10

    const/16 v11, 0x200

    add-int/lit8 v12, v4, 0x1

    const/16 v19, 0x7f

    move/from16 v0, v19

    invoke-interface {v10, v11, v12, v0}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v10

    invoke-interface {v10}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    invoke-interface {v3}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_9

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    const/16 v4, 0x1e00

    const/16 v10, 0x1e00

    const/16 v11, 0x1e00

    invoke-interface {v3, v4, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bh;II)I

    move-result v4

    const/4 v3, 0x0

    move v11, v3

    move v12, v4

    :goto_a
    if-eqz v12, :cond_1f

    and-int/lit8 v3, v12, 0x1

    if-eqz v3, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A()V

    move-object/from16 v0, v17

    iput v11, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-interface {v3, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    const/4 v3, 0x1

    shl-int v19, v3, v11

    move v10, v7

    :goto_b
    if-ge v10, v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->j()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v20

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-object/from16 v21, v0

    sget-object v22, Lcom/google/maps/api/android/lib6/gmm6/l/av;->n:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_17

    if-eqz v20, :cond_17

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/l/al;->d:Lcom/google/maps/api/android/lib6/gmm6/l/al;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/al;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;

    move-result-object v4

    check-cast v4, Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    if-nez v4, :cond_1c

    const/4 v4, 0x0

    :goto_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a(Lcom/google/maps/api/android/lib6/a/a/a;)Lcom/google/maps/api/android/lib6/gmm6/o/k;

    move-result-object v4

    if-eqz v4, :cond_25

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->u:[I

    move-object/from16 v20, v0

    aget v20, v20, v10

    and-int v20, v20, v19

    if-eqz v20, :cond_25

    if-eqz v14, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v6

    const/16 v20, 0x202

    add-int/lit8 v21, v10, 0x1

    const/16 v22, 0x7f

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v6, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    :cond_18
    if-eqz v13, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v6

    const/16 v20, 0x202

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v21

    const/16 v22, 0x7f

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v6, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->f()V

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A()V

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v6

    if-eqz v4, :cond_1a

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-interface {v4, v0, v1, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/k;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_1a
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-interface {v3, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    if-eqz v4, :cond_1b

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/k;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    :cond_1b
    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B()V

    :goto_d
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move v6, v3

    goto/16 :goto_b

    :cond_1c
    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->b()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v4

    goto/16 :goto_c

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B()V

    :cond_1e
    add-int/lit8 v3, v11, 0x1

    ushr-int/lit8 v4, v12, 0x1

    move v11, v3

    move v12, v4

    goto/16 :goto_a

    :cond_1f
    if-eqz v18, :cond_20

    if-nez v6, :cond_21

    :cond_20
    move v3, v7

    :goto_e
    add-int/lit8 v4, v9, -0x1

    move v9, v4

    move v8, v3

    goto/16 :goto_7

    :cond_21
    if-nez v14, :cond_22

    if-eqz v13, :cond_23

    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->x()V

    :cond_23
    invoke-virtual/range {v16 .. v16}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->J:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b(Ljava/util/List;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->J:Z

    goto/16 :goto_0

    :cond_24
    move v3, v8

    goto :goto_e

    :cond_25
    move v3, v6

    goto :goto_d
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    .locals 5

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->S:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->b:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->M:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->l:I

    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->p:Z

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->R:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/f/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;IZLcom/google/maps/api/android/lib6/gmm6/l/au;)Lcom/google/maps/api/android/lib6/gmm6/f/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/f/g;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->M:Lcom/google/maps/api/android/lib6/gmm6/f/i;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->p:Z

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->R:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/f/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;ZLcom/google/maps/api/android/lib6/gmm6/l/au;)Lcom/google/maps/api/android/lib6/gmm6/f/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->z:Lcom/google/maps/api/android/lib6/gmm6/f/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->z:Lcom/google/maps/api/android/lib6/gmm6/f/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    instance-of v0, v0, Lcom/google/maps/api/android/lib6/gmm6/f/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/f/f;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->z:Lcom/google/maps/api/android/lib6/gmm6/f/f;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad out-of-bounds coord generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/z;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->C:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/Set;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->d:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->B:Z

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->R:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->J:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->E:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->x:Lcom/google/maps/api/android/lib6/gmm6/o/aa;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/aa;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->x:Lcom/google/maps/api/android/lib6/gmm6/o/aa;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->k:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v7, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->Q:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->w:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->g()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->A:Z

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->F:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->F:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    if-eqz v0, :cond_7

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    invoke-interface {v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->A:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/f/g;Lcom/google/maps/api/android/lib6/gmm6/l/h;Ljava/util/List;Ljava/util/Set;Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b()I

    move-result v4

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a()Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c()V

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v6

    :goto_1
    if-gt v2, v8, :cond_c

    if-ne v2, v8, :cond_a

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v10, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v11, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->S:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->Q:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Z)V

    :cond_3
    iget-object v11, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->w:[I

    aget v12, v11, v2

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v2

    iget-object v11, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v12, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->g:I

    if-eq v11, v12, :cond_b

    :cond_4
    if-eqz v10, :cond_5

    invoke-interface {v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->e()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_5
    if-eqz v1, :cond_6

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    iget-object v11, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->E:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-interface {v10, v0, v11}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v2, :cond_2

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->e()V

    goto :goto_0

    :cond_8
    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->G:J

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->H:J

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->I:J

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->R:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/au;->b()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->B:Z

    if-nez v1, :cond_9

    if-eqz v0, :cond_1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/Set;

    move-result-object v4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-boolean v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->A:Z

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/f/g;Lcom/google/maps/api/android/lib6/gmm6/l/h;Ljava/util/List;Ljava/util/Set;Z)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->G:J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->y:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->H:J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->R:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/au;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->I:J

    goto/16 :goto_0

    :cond_a
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move-object v1, v0

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->g:I

    if-eq v0, v3, :cond_c

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_c

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v3, v1

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d()V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->w:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->c:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->j:Z

    if-eqz v0, :cond_f

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->s:Ljava/util/ArrayList;

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;

    shl-int v2, v7, v2

    invoke-direct {v5, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->z:Lcom/google/maps/api/android/lib6/gmm6/f/f;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/f;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->s:Ljava/util/ArrayList;

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;

    shl-int v2, v7, v2

    invoke-direct {v5, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->A:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->B:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b()I

    move-result v0

    sub-int/2addr v0, v4

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->B:Z

    if-nez v1, :cond_10

    if-nez v0, :cond_10

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->C:Ljava/util/Set;

    monitor-enter v1

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->C:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/z;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/z;->a()Z

    goto :goto_7

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->Q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Z)V

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->Q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->j:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->K:Z

    return v0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->i:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->c:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->L:Z

    return v0
.end method

.method public final h()Lcom/google/maps/api/android/lib6/gmm6/l/av;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    return-object v0
.end method

.method protected i()Lcom/google/maps/api/android/lib6/gmm6/o/j;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/j;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "tileType"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->q:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "isBase"

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->L:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Z)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "maxTilesPerView"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;I)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "maxTilesToFetch"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;I)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "drawOrder"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->i:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "fetchMissingAncestorTiles"

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->m:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Z)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "allowMultiZoom"

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->p:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Z)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "prefetchAncestors"

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->o:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Z)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "tileSize"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;I)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "allowMultiZoom"

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->p:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Z)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "isContributingLabels"

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->K:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Z)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "maxTileSize"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->l:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;I)Lcom/google/c/a/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/cf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
