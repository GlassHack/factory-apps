.class public final Lcom/google/maps/api/android/lib6/gmm6/o/b/b;
.super Lcom/google/maps/api/android/lib6/gmm6/o/f/c;


# static fields
.field private static final I:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

.field private static final h:F

.field private static i:F

.field private static final j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private static final k:F


# instance fields
.field private A:[D

.field private B:[F

.field private C:[F

.field private D:[F

.field private E:[F

.field private F:[F

.field private final G:[F

.field private final H:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private volatile J:J

.field private l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

.field private m:Z

.field private n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:I

.field private u:F

.field private v:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private w:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private y:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h:F

    const/high16 v0, 0x48800000    # 262144.0f

    const-wide v4, 0x3ff4f1a6c638d03fL    # 1.3089969389957472

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v0, v1

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->i:F

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v1, v2, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    const/high16 v2, 0x40000000    # 2.0f

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide v2, 0x3fd0c152382d7365L    # 0.2617993877991494

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k:F

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->I:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V
    .locals 4

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->u:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIF)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIFB)V

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIFB)V
    .locals 6

    const/16 v0, 0x10

    new-array v5, v0, [F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIF[F)V

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;IIF[F)V
    .locals 7

    const/4 v6, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v1, 0x0

    invoke-direct {p0, p5}, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;-><init>([F)V

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->q:F

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->B:[F

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->C:[F

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->D:[F

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->E:[F

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->F:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->G:[F

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->H:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->I:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->J:J

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->u:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m:Z

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r:F

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->I:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->J:J

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r:F

    float-to-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double v0, v4, v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->p:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->x()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    return-void
.end method

.method private A()V
    .locals 8

    const v6, 0x3dcccccd    # 0.1f

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->C:[F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r:F

    float-to-double v2, v1

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float v5, v6, v1

    neg-float v4, v5

    mul-float v2, v4, v0

    mul-float v3, v5, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->C:[F

    const/4 v1, 0x0

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    return-void
.end method

.method private B()V
    .locals 14

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->B:[F

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r()F

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->q()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->B:[F

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v1

    int-to-float v1, v1

    neg-float v7, v2

    neg-float v8, v3

    neg-float v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v11

    div-float/2addr v10, v11

    mul-float/2addr v7, v10

    mul-float/2addr v8, v10

    mul-float/2addr v9, v10

    mul-float v10, v8, v1

    mul-float v11, v9, v6

    sub-float/2addr v10, v11

    mul-float v11, v9, v5

    mul-float/2addr v1, v7

    sub-float v1, v11, v1

    mul-float/2addr v6, v7

    mul-float/2addr v5, v8

    sub-float v5, v6, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v10, v1, v5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v11

    div-float/2addr v6, v11

    mul-float/2addr v10, v6

    mul-float/2addr v1, v6

    mul-float/2addr v5, v6

    mul-float v6, v1, v9

    mul-float v11, v5, v8

    sub-float/2addr v6, v11

    mul-float v11, v5, v7

    mul-float v12, v10, v9

    sub-float/2addr v11, v12

    mul-float v12, v10, v8

    mul-float v13, v1, v7

    sub-float/2addr v12, v13

    const/4 v13, 0x0

    aput v10, v4, v13

    const/4 v10, 0x1

    aput v6, v4, v10

    const/4 v6, 0x2

    neg-float v7, v7

    aput v7, v4, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput v7, v4, v6

    const/4 v6, 0x4

    aput v1, v4, v6

    const/4 v1, 0x5

    aput v11, v4, v1

    const/4 v1, 0x6

    neg-float v6, v8

    aput v6, v4, v1

    const/4 v1, 0x7

    const/4 v6, 0x0

    aput v6, v4, v1

    const/16 v1, 0x8

    aput v5, v4, v1

    const/16 v1, 0x9

    aput v12, v4, v1

    const/16 v1, 0xa

    neg-float v5, v9

    aput v5, v4, v1

    const/16 v1, 0xb

    const/4 v5, 0x0

    aput v5, v4, v1

    const/16 v1, 0xc

    const/4 v5, 0x0

    aput v5, v4, v1

    const/16 v1, 0xd

    const/4 v5, 0x0

    aput v5, v4, v1

    const/16 v1, 0xe

    const/4 v5, 0x0

    aput v5, v4, v1

    const/16 v1, 0xf

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v1

    const/4 v1, 0x0

    neg-float v2, v2

    neg-float v3, v3

    neg-float v0, v0

    invoke-static {v4, v1, v2, v3, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method private C()V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v6, 0x10

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->B:[F

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->B()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->C:[F

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->A()V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->D:[F

    if-nez v0, :cond_2

    new-array v0, v6, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->D:[F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->D:[F

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->D:[F

    const/4 v2, 0x5

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    int-to-float v3, v3

    const/high16 v4, -0x41000000    # -0.5f

    mul-float/2addr v3, v4

    aput v3, v0, v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->D:[F

    const/16 v2, 0xa

    aput v7, v0, v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->D:[F

    const/16 v2, 0xf

    aput v7, v0, v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->D:[F

    const/16 v2, 0xc

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    aput v3, v0, v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->D:[F

    const/16 v2, 0xd

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    aput v3, v0, v2

    :cond_2
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->E:[F

    new-array v0, v6, [F

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->D:[F

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->C:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->E:[F

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->B:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->F:[F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->F:[F

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->E:[F

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    return-void
.end method

.method public static a(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    sget v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private a(FIIII)Lcom/google/maps/api/android/lib6/gmm6/l/cc;
    .locals 7

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(F)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    sub-float v1, v0, v1

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->p:F

    mul-float/2addr v2, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    int-to-float v2, p2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    sub-int/2addr v3, p5

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    sub-int/2addr v3, p4

    int-to-float v3, v3

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    sub-int/2addr v4, p5

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    int-to-float v4, p2

    int-to-float v5, p3

    add-float/2addr v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    sub-int/2addr v5, p4

    int-to-float v5, v5

    int-to-float v6, p3

    add-float/2addr v6, v1

    invoke-virtual {p0, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pos: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " farAngle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " top:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v0

    return-object v0
.end method

.method public static b(F)F
    .locals 2

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->i:F

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x48800000    # 262144.0f

    div-float v0, p0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42960000    # 75.0f

    goto :goto_0
.end method

.method private b(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->I:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->J:J

    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->A:[D

    :cond_2
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->y()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->x()V

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->e:[F

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->d:[F

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->c:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/c;->f:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    goto :goto_1
.end method

.method private b(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->w:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->y:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->z:F

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->B:[F

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->E:[F

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->F:[F

    if-eqz p1, :cond_0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->C:[F

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->D:[F

    :cond_0
    return-void
.end method

.method private x()V
    .locals 12

    const-wide v6, 0x3f91df46a2529d39L    # 0.017453292519943295

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    float-to-double v0, v0

    mul-double/2addr v0, v6

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o:F

    float-to-double v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    sub-double v2, v8, v2

    mul-double/2addr v2, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(II)V

    return-void
.end method

.method private y()V
    .locals 6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41f00000    # 30.0f

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    int-to-double v2, v2

    const/high16 v4, 0x43800000    # 256.0f

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->u:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->q:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o:F

    return-void
.end method

.method private z()[D
    .locals 10

    const-wide v6, 0x3f91df46a2529d39L    # 0.017453292519943295

    const-wide v4, 0x4076800000000000L    # 360.0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->A:[D

    if-nez v0, :cond_1

    const-wide v0, 0x4056800000000000L    # 90.0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    add-double/2addr v0, v4

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    mul-double/2addr v0, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const/4 v6, 0x3

    new-array v6, v6, [D

    iput-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->A:[D

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->A:[D

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    aput-wide v8, v6, v7

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->A:[D

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    aput-wide v0, v6, v7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->A:[D

    const/4 v1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v1

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->A:[D

    return-object v0

    :cond_2
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_0

    sub-double/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method public final a(FF)F
    .locals 3

    mul-float v0, p2, p1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->p:F

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Z)F
    .locals 8

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->z()[D

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->H:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {p1, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->H:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->H:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->H:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v1

    int-to-double v2, v1

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->H:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v1

    int-to-double v4, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->H:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v1

    int-to-double v4, v1

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->J:J

    return-wide v0
.end method

.method public final a(IIII)Lcom/google/maps/api/android/lib6/gmm6/l/cc;
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->y:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(FIIII)Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->y:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->y:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    return-object v0
.end method

.method public final a(FFFF)Lcom/google/maps/api/android/lib6/gmm6/l/cq;
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->F:[F

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->C()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v8

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v9

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    sub-int v11, v2, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v2

    sub-int v12, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->G:[F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->F:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    const/4 v13, 0x6

    aget v13, v2, v13

    mul-float/2addr v3, v13

    float-to-double v14, v3

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v14, v16

    if-ltz v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v14, v18, v14

    div-double v14, v16, v14

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v4, v4, v16

    int-to-double v0, v11

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    mul-double/2addr v4, v14

    int-to-double v0, v8

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v6, v6, v16

    int-to-double v0, v12

    move-wide/from16 v16, v0

    add-double v6, v6, v16

    mul-double/2addr v6, v14

    int-to-double v14, v9

    add-double/2addr v6, v14

    new-instance v13, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    double-to-int v3, v4

    double-to-int v4, v6

    invoke-direct {v13, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->F:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    const/4 v14, 0x6

    aget v14, v2, v14

    mul-float/2addr v3, v14

    float-to-double v14, v3

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v14, v16

    if-ltz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v14, v18, v14

    div-double v14, v16, v14

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v4, v4, v16

    int-to-double v0, v11

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    mul-double/2addr v4, v14

    int-to-double v0, v8

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v6, v6, v16

    int-to-double v0, v12

    move-wide/from16 v16, v0

    add-double v6, v6, v16

    mul-double/2addr v6, v14

    int-to-double v14, v9

    add-double/2addr v6, v14

    new-instance v14, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    double-to-int v3, v4

    double-to-int v4, v6

    invoke-direct {v14, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    const/4 v3, 0x1

    aput p4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->F:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    const/4 v15, 0x6

    aget v15, v2, v15

    mul-float/2addr v3, v15

    float-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v16, v18

    if-ltz v3, :cond_3

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v16, v20, v16

    div-double v16, v18, v16

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v4, v4, v18

    int-to-double v0, v11

    move-wide/from16 v18, v0

    add-double v4, v4, v18

    mul-double v4, v4, v16

    int-to-double v0, v8

    move-wide/from16 v18, v0

    add-double v4, v4, v18

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    int-to-double v0, v12

    move-wide/from16 v18, v0

    add-double v6, v6, v18

    mul-double v6, v6, v16

    int-to-double v0, v9

    move-wide/from16 v16, v0

    add-double v6, v6, v16

    new-instance v15, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    double-to-int v3, v4

    double-to-int v4, v6

    invoke-direct {v15, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->F:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    const/16 v16, 0x6

    aget v2, v2, v16

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v2, v16

    if-ltz v16, :cond_4

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v2, v18, v2

    div-double v2, v16, v2

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v4, v4, v16

    int-to-double v0, v11

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    mul-double/2addr v4, v2

    int-to-double v0, v8

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    int-to-double v10, v10

    mul-double/2addr v6, v10

    int-to-double v10, v12

    add-double/2addr v6, v10

    mul-double/2addr v2, v6

    int-to-double v6, v9

    add-double/2addr v2, v6

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    double-to-int v4, v4

    double-to-int v2, v2

    invoke-direct {v6, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-static {v6, v15, v13, v14}, Lcom/google/maps/api/android/lib6/gmm6/l/cq;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/cq;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public final a(IIF)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->I:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->J:J

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->u:F

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->y()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->x()V

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Z)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;[F)V
    .locals 7

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->E:[F

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->C()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    sub-int/2addr v0, v2

    const/high16 v2, 0x20000000

    if-lt v0, v2, :cond_2

    sub-int/2addr v0, v4

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v2

    int-to-float v0, v0

    aput v0, p2, v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    aput v0, p2, v6

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v4

    int-to-float v4, v4

    aput v4, p2, v0

    const/4 v0, 0x3

    int-to-float v2, v2

    aput v2, p2, v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->E:[F

    move-object v0, p2

    move-object v4, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x7

    aget v2, p2, v2

    div-float/2addr v0, v2

    aget v1, p2, v1

    mul-float/2addr v1, v0

    aput v1, p2, v3

    const/4 v1, 0x5

    aget v1, p2, v1

    mul-float/2addr v0, v1

    aput v0, p2, v6

    return-void

    :cond_2
    const/high16 v2, -0x20000000

    if-ge v0, v2, :cond_1

    add-int/2addr v0, v4

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m:Z

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->I:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->J:J

    :cond_0
    return-void
.end method

.method public final b(FF)F
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->p:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    return v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    return-object v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [F

    invoke-virtual {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;[F)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v1, v3

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, v1, v4

    return-object v1
.end method

.method public final c(FF)F
    .locals 4

    const/high16 v0, 0x41f00000    # 30.0f

    div-float v1, p1, p2

    const/high16 v2, 0x43800000    # 256.0f

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->u:F

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public final c(F)Lcom/google/maps/api/android/lib6/gmm6/l/cc;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(FIIII)Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    return-object v0
.end method

.method public final d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 12

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->F:[F

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->C()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->G:[F

    aput p1, v0, v3

    const/4 v2, 0x1

    aput p2, v0, v2

    const/4 v2, 0x2

    aput v6, v0, v2

    const/4 v2, 0x3

    aput v6, v0, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->F:[F

    move-object v4, v0

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/4 v2, 0x7

    aget v2, v0, v2

    div-float v2, v6, v2

    aget v1, v0, v1

    mul-float/2addr v1, v2

    float-to-double v4, v1

    const/4 v1, 0x5

    aget v1, v0, v1

    mul-float/2addr v1, v2

    float-to-double v6, v1

    const/4 v1, 0x6

    aget v0, v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    cmpl-double v2, v0, v10

    if-ltz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v8

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v2

    sub-double v0, v10, v0

    div-double v0, v10, v0

    int-to-double v10, v2

    mul-double/2addr v4, v10

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v9

    int-to-double v10, v9

    add-double/2addr v4, v10

    int-to-double v10, v3

    sub-double/2addr v4, v10

    mul-double/2addr v4, v0

    int-to-double v10, v3

    add-double/2addr v4, v10

    int-to-double v2, v2

    mul-double/2addr v2, v6

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v6

    int-to-double v6, v6

    add-double/2addr v2, v6

    int-to-double v6, v8

    sub-double/2addr v2, v6

    mul-double/2addr v0, v2

    int-to-double v2, v8

    add-double/2addr v2, v0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    double-to-int v1, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->u:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->u:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    return v0
.end method

.method public final h()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->u:F

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->u:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final i()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r:F

    return v0
.end method

.method public final j()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o:F

    return v0
.end method

.method public final k()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    return v0
.end method

.method public final l()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    return v0
.end method

.method public final m()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    return v0
.end method

.method public final n()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    return v0
.end method

.method public final o()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->z()[D

    move-result-object v0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o:F

    neg-float v2, v2

    float-to-double v2, v2

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o:F

    neg-float v3, v3

    float-to-double v4, v3

    const/4 v3, 0x1

    aget-wide v6, v0, v3

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o:F

    neg-float v4, v4

    float-to-double v4, v4

    const/4 v6, 0x2

    aget-wide v6, v0, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-object v0
.end method

.method public final p()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 8

    const-wide/high16 v6, 0x40f0000000000000L    # 65536.0

    const-wide v4, 0x4076800000000000L    # 360.0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v2

    if-ne v1, v2, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    neg-float v0, v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    add-double/2addr v0, v4

    :cond_1
    :goto_0
    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-direct {v2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-object v0

    :cond_3
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    sub-double/2addr v0, v4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    const/high16 v1, 0x47800000    # 65536.0f

    invoke-static {v0, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->x:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    goto :goto_1
.end method

.method public final q()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 10

    const-wide/high16 v8, 0x40f0000000000000L    # 65536.0

    const-wide/16 v6, 0x0

    const-wide v4, 0x4076800000000000L    # 360.0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->w:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    float-to-double v2, v1

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v2

    if-ne v1, v2, :cond_4

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    cmpg-double v2, v0, v6

    if-gez v2, :cond_3

    add-double/2addr v0, v4

    :cond_1
    :goto_0
    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-int v3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    invoke-direct {v2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->w:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->w:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-object v0

    :cond_3
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    sub-double/2addr v0, v4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    const/high16 v1, 0x46800000    # 16384.0f

    invoke-static {v0, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->p()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    const/high16 v1, 0x47800000    # 65536.0f

    invoke-static {v0, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->w:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    goto :goto_1
.end method

.method public final r()F
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->z:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->z:F

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->z:F

    return v0
.end method

.method public final s()F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o:F

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(FF)F

    move-result v0

    return v0
.end method

.method public final t()[F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->B:[F

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->B()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->B:[F

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(III)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()[F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->C:[F

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->A()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->C:[F

    return-object v0
.end method

.method public final v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(IIII)Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v0

    return-object v0
.end method

.method public final w()Lcom/google/maps/api/android/lib6/gmm6/l/cc;
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->p:F

    div-float/2addr v1, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    float-to-double v4, v1

    add-double/2addr v2, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v0, v1, v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    const v2, 0x42652ee1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c(F)Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v0

    goto :goto_0
.end method
