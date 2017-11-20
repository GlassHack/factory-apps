.class public final Lcom/google/maps/api/android/lib6/gmm6/o/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/aw;


# static fields
.field private static final a:F

.field private static final b:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

.field private static c:F


# instance fields
.field private final d:Z

.field private final e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

.field private volatile f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

.field private volatile g:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

.field private volatile h:F

.field private volatile i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

.field private volatile j:Z

.field private k:Z

.field private l:Lcom/google/maps/api/android/lib6/gmm6/f/g;

.field private m:Lcom/google/maps/api/android/lib6/gmm6/o/t;

.field private n:Lcom/google/maps/api/android/lib6/gmm6/o/aq;

.field private o:Lcom/google/maps/api/android/lib6/gmm6/o/f;

.field private p:Lcom/google/maps/api/android/lib6/gmm6/o/aj;

.field private q:Z

.field private r:I

.field private s:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a:F

    const/4 v0, 0x0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    const/high16 v0, 0x41a80000    # 21.0f

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c:F

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->r:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->s:F

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->b()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->d:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a()Lcom/google/maps/api/android/lib6/gmm6/j/q;

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 6

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v2

    sub-int/2addr v0, v2

    float-to-double v2, p3

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    neg-float v3, v2

    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    neg-float v2, v2

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    int-to-float v4, v1

    mul-float/2addr v4, v2

    int-to-float v5, v0

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v0

    add-float/2addr v0, p3

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c(F)F

    move-result v4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;FF)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 6

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v0

    mul-float/2addr v0, p2

    neg-float v1, p3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v2

    const v3, 0x3c8efa35

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->p()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->q()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v2

    invoke-direct {v4, v5, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v3

    invoke-direct {v5, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-static {v4, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v5, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v3

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-static {v1, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(I)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    return-object v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;FFF)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 8

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v6, p4, v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v7, p5, v0

    invoke-static {p0, p1, v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;FF)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v1, v4, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    sget v2, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c:F

    iget v3, v4, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    add-float/2addr v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, v4, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    neg-float v1, v6

    neg-float v2, v7

    invoke-static {v0, p1, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;FF)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;I)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;II)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->p:Lcom/google/maps/api/android/lib6/gmm6/o/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->p:Lcom/google/maps/api/android/lib6/gmm6/o/aj;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/aj;->b()V

    :cond_0
    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/g;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->j:Z

    :cond_1
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->k:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/d;->b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    invoke-virtual {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->m:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->m:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/t;->a(ZZ)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(F)F
    .locals 1

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c(F)F

    move-result v0

    return v0
.end method

.method private static c(F)F
    .locals 8

    const-wide v6, 0x4076800000000000L    # 360.0

    move v0, p0

    :goto_0
    float-to-double v2, v0

    cmpl-double v1, v2, v6

    if-ltz v1, :cond_0

    float-to-double v0, v0

    sub-double/2addr v0, v6

    double-to-float v0, v0

    goto :goto_0

    :cond_0
    :goto_1
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    float-to-double v0, v0

    add-double/2addr v0, v6

    double-to-float v0, v0

    goto :goto_1

    :cond_1
    return v0
.end method

.method static synthetic e()F
    .locals 1

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c:F

    return v0
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/f;

    if-nez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/f;->d()F

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized a(FFF)F
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v1, v6, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget v2, v6, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    add-float/2addr v2, p1

    iget v3, v6, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v4, v6, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget v5, v6, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    invoke-virtual {v7, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    iget v1, v6, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    iget v0, v6, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    instance-of v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a(FFFFFF)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_1
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->h:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/d;->b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ai;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a(FFFFFF)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1
.end method

.method public final a(FFFI)F
    .locals 7

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->h:F

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/ah;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ah;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;FFFI)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    add-float/2addr v0, p1

    sget v1, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final a(FI)F
    .locals 7

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v1, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget v2, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    add-float/2addr v2, p1

    iget v3, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v4, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;I)V

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/f;

    if-nez v0, :cond_0

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c:F

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/f;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized a(F)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    instance-of v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/ak;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ak;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/ak;->a(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v0, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    add-float v3, v0, p1

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v1, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget v2, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    iget v4, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(FF)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    instance-of v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a(FFFFFF)[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/d;->b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ai;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a(FFFFFF)[F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/aj;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->p:Lcom/google/maps/api/android/lib6/gmm6/o/aj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->n:Lcom/google/maps/api/android/lib6/gmm6/o/aq;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;II)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->q:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->q:Z

    if-eqz v2, :cond_1

    const/16 p2, 0x0

    const/16 p3, 0x0

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->q:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-interface/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/d;->b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v8

    iget v2, v8, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->h:F

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a()Lcom/google/maps/api/android/lib6/gmm6/n/j;

    move-result-object v2

    iget v4, v8, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    iget v5, v3, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-boolean v5, v2, Lcom/google/maps/api/android/lib6/gmm6/n/j;->b:Z

    if-eqz v5, :cond_2

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/n/j;->c:I

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    goto :goto_0

    :cond_3
    iget v2, v8, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    iget v5, v3, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    add-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v5, 0x1e

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    shr-int/2addr v5, v2

    iget-object v2, v8, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    iget-object v6, v3, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v6

    int-to-float v2, v5

    div-float v7, v6, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->r:I

    int-to-float v2, v2

    cmpg-float v2, v7, v2

    if-gtz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_6

    if-nez p2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_9

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v2, v4

    const/high16 v4, 0x3fc00000    # 1.5f

    add-float/2addr v2, v4

    const/high16 v4, 0x442f0000    # 700.0f

    mul-float/2addr v2, v4

    float-to-int v5, v2

    :goto_2
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/af;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/o/af;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/d;IZF)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    goto/16 :goto_0

    :cond_6
    if-nez p3, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    goto/16 :goto_0

    :cond_7
    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->r:I

    int-to-float v2, v2

    sub-float v2, v7, v2

    const/high16 v4, 0x4e800000

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->r:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v2, v4

    const v4, 0x40833333    # 4.1f

    mul-float/2addr v2, v4

    const v4, 0x3fb33333    # 1.4f

    add-float/2addr v2, v4

    const/high16 v4, 0x442f0000    # 700.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/16 v4, 0x9c4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->s:F

    mul-float/2addr v2, v4

    float-to-int v5, v2

    :goto_3
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide v12, 0x40031eb851eb851fL    # 2.39

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    sget v2, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a:F

    float-to-double v14, v2

    mul-double/2addr v6, v14

    mul-double/2addr v6, v12

    const-wide v12, 0x404d5ae147ae147bL    # 58.71

    sub-double/2addr v6, v12

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v7, v6

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/af;

    const/4 v6, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/o/af;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/d;IZF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    goto/16 :goto_0

    :cond_8
    move/from16 v5, p3

    goto :goto_3

    :cond_9
    move/from16 v5, p2

    goto :goto_2
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    iput-object p1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->b:Lcom/google/maps/api/android/lib6/gmm6/o/b/f;

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->o:Lcom/google/maps/api/android/lib6/gmm6/o/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    .locals 1

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->m:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->q:Z

    return-void
.end method

.method public final declared-synchronized b(FFF)F
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    instance-of v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p3

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a(FFFFFF)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/ai;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ai;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p3

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ai;->a(FFFFFF)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)I
    .locals 14

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    instance-of v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/b/g;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/g;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/g;->a()I

    move-result v1

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/g;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/d;->b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/g;->a()I

    move-result v0

    or-int/2addr v0, v1

    move v4, v0

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->k:Z

    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->o:Lcom/google/maps/api/android/lib6/gmm6/o/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->l:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/al;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/au;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/al;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/au;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->l:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->l:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->o:Lcom/google/maps/api/android/lib6/gmm6/o/f;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/f;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->k:Z

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v4, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->n:Lcom/google/maps/api/android/lib6/gmm6/o/aq;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->n:Lcom/google/maps/api/android/lib6/gmm6/o/aq;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v6

    const/4 v0, 0x0

    const/16 v1, 0x1e

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v0, v5, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->b:I

    if-eq v7, v0, :cond_5

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    invoke-virtual {v5, v6, v6, v7, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;ILcom/google/maps/api/android/lib6/gmm6/l/cd;)V

    :cond_3
    :goto_1
    return v4

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/d;->b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/d;->b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->j:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    iget-object v0, v5, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v8, v5, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v9, v2

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v2

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v10, v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v2

    div-int/lit8 v11, v3, 0x2

    div-int/lit8 v12, v2, 0x2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-gt v13, v3, :cond_6

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-le v13, v2, :cond_9

    :cond_6
    move-object v0, v1

    :cond_7
    :goto_2
    if-eqz v0, :cond_3

    iget-object v1, v5, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz v1, :cond_8

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v1

    iget-object v2, v5, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v6, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    :cond_8
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v1

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    invoke-virtual {v5, v0, v6, v7, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;ILcom/google/maps/api/android/lib6/gmm6/l/cd;)V

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x0

    neg-int v13, v11

    if-ge v9, v13, :cond_d

    neg-int v1, v3

    move v3, v1

    :cond_a
    :goto_3
    const/4 v1, 0x0

    neg-int v9, v12

    if-ge v10, v9, :cond_e

    neg-int v1, v2

    :cond_b
    :goto_4
    if-nez v1, :cond_c

    if-eqz v3, :cond_7

    :cond_c
    int-to-float v0, v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v5, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(II)V

    iget-object v0, v5, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v8, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    goto :goto_2

    :cond_d
    if-gt v9, v11, :cond_a

    move v3, v1

    goto :goto_3

    :cond_e
    if-le v10, v12, :cond_b

    move v1, v2

    goto :goto_4
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    const/high16 v1, 0x42870000    # 67.5f

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/e;->a:F

    return-void
.end method

.method public final declared-synchronized b(FF)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    instance-of v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/d;->b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->e:Lcom/google/maps/api/android/lib6/gmm6/o/b/e;

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ag;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/e;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->i:Lcom/google/maps/api/android/lib6/gmm6/o/b/d;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/ag;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/ag;->a(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->f:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    return-object v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->h:F

    return v0
.end method

.method public final k()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->g:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    return-object v0
.end method
