.class public final Lcom/google/android/gms/panorama/g/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final a:D


# instance fields
.field private final A:[F

.field private final B:[F

.field private final C:[F

.field private final D:[F

.field private final E:[F

.field private final F:[F

.field private final G:[F

.field private final H:Lcom/google/android/gms/panorama/b/c;

.field private final I:Lcom/google/android/gms/panorama/b/c;

.field private final J:Lcom/google/android/gms/panorama/b/b;

.field private final K:[I

.field private L:Lcom/google/android/gms/panorama/d/c;

.field private M:Z

.field private N:Lcom/google/android/gms/panorama/f/a;

.field private O:Lcom/google/android/gms/panorama/g/f;

.field private P:Lcom/google/android/gms/panorama/f/a;

.field private Q:Z

.field private R:F

.field private final S:Landroid/graphics/RectF;

.field private final T:Landroid/content/Context;

.field private b:Lcom/google/android/gms/panorama/d/a;

.field private c:Z

.field private d:Lcom/google/android/gms/panorama/g/e;

.field private e:Z

.field private f:I

.field private g:I

.field private final h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private final p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:Lcom/google/android/gms/panorama/c/j;

.field private x:Lcom/google/android/gms/panorama/c/p;

.field private y:Lcom/google/android/gms/panorama/c/l;

.field private z:Lcom/google/android/gms/panorama/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/panorama/g/i;->a:D

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/panorama/g/f;Lcom/google/android/gms/panorama/g/e;Landroid/content/Context;I)V
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x10

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v6, p0, Lcom/google/android/gms/panorama/g/i;->c:Z

    .line 61
    iput-boolean v6, p0, Lcom/google/android/gms/panorama/g/i;->e:Z

    .line 69
    const/high16 v0, 0x42960000    # 75.0f

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->i:F

    .line 70
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->i:F

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->j:F

    .line 71
    iput v1, p0, Lcom/google/android/gms/panorama/g/i;->k:F

    .line 72
    iput v1, p0, Lcom/google/android/gms/panorama/g/i;->l:F

    .line 73
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->i:F

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->m:F

    .line 76
    iput v1, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    .line 77
    iput v1, p0, Lcom/google/android/gms/panorama/g/i;->o:F

    .line 78
    iput v1, p0, Lcom/google/android/gms/panorama/g/i;->p:F

    .line 79
    iput v1, p0, Lcom/google/android/gms/panorama/g/i;->q:F

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->r:F

    .line 81
    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->s:F

    .line 82
    iput v1, p0, Lcom/google/android/gms/panorama/g/i;->t:F

    .line 83
    iput v1, p0, Lcom/google/android/gms/panorama/g/i;->u:F

    .line 91
    iput v1, p0, Lcom/google/android/gms/panorama/g/i;->v:F

    .line 102
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->A:[F

    .line 103
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->B:[F

    .line 104
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->C:[F

    .line 105
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->D:[F

    .line 106
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->E:[F

    .line 109
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->F:[F

    .line 110
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->G:[F

    .line 111
    new-instance v0, Lcom/google/android/gms/panorama/b/c;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/b/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->H:Lcom/google/android/gms/panorama/b/c;

    .line 112
    new-instance v0, Lcom/google/android/gms/panorama/b/c;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/b/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->I:Lcom/google/android/gms/panorama/b/c;

    .line 113
    new-instance v0, Lcom/google/android/gms/panorama/b/b;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->J:Lcom/google/android/gms/panorama/b/b;

    .line 114
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->K:[I

    .line 117
    iput-object v3, p0, Lcom/google/android/gms/panorama/g/i;->L:Lcom/google/android/gms/panorama/d/c;

    .line 119
    iput-boolean v6, p0, Lcom/google/android/gms/panorama/g/i;->M:Z

    .line 120
    iput-object v3, p0, Lcom/google/android/gms/panorama/g/i;->N:Lcom/google/android/gms/panorama/f/a;

    .line 121
    iput-object v3, p0, Lcom/google/android/gms/panorama/g/i;->O:Lcom/google/android/gms/panorama/g/f;

    .line 122
    iput-object v3, p0, Lcom/google/android/gms/panorama/g/i;->P:Lcom/google/android/gms/panorama/f/a;

    .line 124
    iput-boolean v6, p0, Lcom/google/android/gms/panorama/g/i;->Q:Z

    .line 133
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->R:F

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->S:Landroid/graphics/RectF;

    .line 161
    iput-object p3, p0, Lcom/google/android/gms/panorama/g/i;->T:Landroid/content/Context;

    .line 162
    const v0, 0x7f020175

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->h:I

    .line 163
    iput-object p1, p0, Lcom/google/android/gms/panorama/g/i;->O:Lcom/google/android/gms/panorama/g/f;

    .line 165
    if-eqz p2, :cond_1

    .line 166
    iput-object p2, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->y:Lcom/google/android/gms/panorama/c/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->y:Lcom/google/android/gms/panorama/c/l;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/c/l;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    iget v0, v0, Lcom/google/android/gms/panorama/g/e;->b:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->S:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    iget v2, v2, Lcom/google/android/gms/panorama/g/e;->f:F

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->S:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/i;->S:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    iget v0, v0, Lcom/google/android/gms/panorama/g/e;->c:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->S:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v3, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    iget v3, v3, Lcom/google/android/gms/panorama/g/e;->e:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->S:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/i;->S:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v0, v2, v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->k()V

    new-instance v0, Lcom/google/android/gms/panorama/c/l;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    iget-object v1, v1, Lcom/google/android/gms/panorama/g/e;->a:Lcom/google/android/gms/panorama/g/n;

    invoke-direct {v0, v1}, Lcom/google/android/gms/panorama/c/l;-><init>(Lcom/google/android/gms/panorama/g/n;)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->y:Lcom/google/android/gms/panorama/c/l;

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->y:Lcom/google/android/gms/panorama/c/l;

    new-instance v1, Lcom/google/android/gms/panorama/g/j;

    invoke-direct {v1, p0}, Lcom/google/android/gms/panorama/g/j;-><init>(Lcom/google/android/gms/panorama/g/i;)V

    iput-object v1, v0, Lcom/google/android/gms/panorama/c/l;->f:Lcom/google/android/gms/panorama/f/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->Q:Z

    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->f:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->g:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->O:Lcom/google/android/gms/panorama/g/f;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/g/f;->requestRender()V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->E:[F

    invoke-static {v0, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 169
    return-void
.end method

.method private static a(FFF)F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 836
    float-to-double v0, p1

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 838
    float-to-double v2, p2

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    .line 839
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 840
    double-to-float v0, v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/panorama/g/i;)Lcom/google/android/gms/panorama/g/f;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->O:Lcom/google/android/gms/panorama/g/f;

    return-object v0
.end method

.method private a(FF[F)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 246
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->g:I

    int-to-float v0, v0

    sub-float v1, v0, p2

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->K:[I

    aput v4, v0, v4

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->K:[I

    const/4 v2, 0x1

    aput v4, v0, v2

    .line 250
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->K:[I

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/panorama/g/i;->f:I

    aput v3, v0, v2

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->K:[I

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/gms/panorama/g/i;->g:I

    aput v3, v0, v2

    .line 252
    const/high16 v2, -0x40800000    # -1.0f

    iget-object v3, p0, Lcom/google/android/gms/panorama/g/i;->B:[F

    iget-object v5, p0, Lcom/google/android/gms/panorama/g/i;->A:[F

    iget-object v7, p0, Lcom/google/android/gms/panorama/g/i;->K:[I

    move v0, p1

    move v6, v4

    move v8, v4

    move-object v9, p3

    move v10, v4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLU;->gluUnProject(FFF[FI[FI[II[FI)I

    .line 254
    return-void
.end method

.method private c(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x42b40000    # 90.0f

    .line 401
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 402
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 403
    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->m:F

    .line 405
    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->f:I

    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->g:I

    if-le v1, v2, :cond_0

    .line 407
    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->k:F

    .line 408
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->k:F

    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->g:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/panorama/g/i;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->l:F

    .line 410
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->k:F

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->j:F

    .line 420
    :goto_0
    const v0, 0x3eb33333    # 0.35f

    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->k:F

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->s:F

    .line 428
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->m:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    sget-wide v2, Lcom/google/android/gms/panorama/g/i;->a:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->v:F

    .line 431
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->k()V

    .line 432
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->g()V

    .line 438
    return-void

    .line 413
    :cond_0
    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->l:F

    .line 414
    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->f:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/panorama/g/i;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->k:F

    .line 416
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->l:F

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->j:F

    goto :goto_0
.end method

.method private declared-synchronized g()V
    .locals 11

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/16 v10, 0x10

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 506
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->g:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->l:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v0, v0, v9

    if-gtz v0, :cond_1

    .line 546
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 511
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 514
    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->l:F

    float-to-double v2, v1

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float v5, v1, v6

    mul-float v3, v5, v0

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->A:[F

    const/4 v1, 0x0

    neg-float v2, v3

    neg-float v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x43480000    # 200.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 519
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->B:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 522
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->q:F

    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->q:F

    sub-float v1, v9, v1

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->q:F

    .line 526
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->M:Z

    if-eqz v0, :cond_5

    .line 527
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->b:Lcom/google/android/gms/panorama/d/a;

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->b:Lcom/google/android/gms/panorama/d/a;

    iget v0, v0, Lcom/google/android/gms/panorama/d/a;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->L:Lcom/google/android/gms/panorama/d/c;

    iget v1, v1, Lcom/google/android/gms/panorama/d/c;->m:F

    sub-float v2, v0, v1

    .line 531
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->B:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 533
    :cond_2
    iget-object v9, p0, Lcom/google/android/gms/panorama/g/i;->L:Lcom/google/android/gms/panorama/d/c;

    iget-object v0, v9, Lcom/google/android/gms/panorama/d/c;->k:Lcom/google/android/gms/panorama/d/b;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/d/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/google/android/gms/panorama/d/c;->k:Lcom/google/android/gms/panorama/d/b;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/d/b;->c()[D

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/panorama/d/c;->p:[D

    :cond_3
    const/16 v0, 0x10

    new-array v0, v0, [F

    move v1, v8

    :goto_1
    if-ge v1, v10, :cond_4

    iget-object v2, v9, Lcom/google/android/gms/panorama/d/c;->p:[D

    aget-wide v2, v2, v1

    double-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/16 v1, 0x10

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    iget v3, v9, Lcom/google/android/gms/panorama/d/c;->m:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v2, v9, Lcom/google/android/gms/panorama/d/c;->l:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v1

    move-object v6, v0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, v9, Lcom/google/android/gms/panorama/d/c;->l:[F

    .line 534
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/i;->E:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 535
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->D:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/panorama/g/i;->B:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 536
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->D:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->D:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/i;->B:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/panorama/g/i;->D:[F

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->C:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/i;->A:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/panorama/g/i;->D:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 541
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->B:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->q:F

    neg-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 542
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->B:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->o:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 543
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->B:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 544
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->C:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/i;->A:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/panorama/g/i;->B:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 714
    iput-boolean v5, p0, Lcom/google/android/gms/panorama/g/i;->Q:Z

    .line 717
    new-instance v0, Lcom/google/android/gms/panorama/e/a;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/e/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->z:Lcom/google/android/gms/panorama/e/a;

    .line 720
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    iget-object v0, v0, Lcom/google/android/gms/panorama/g/e;->a:Lcom/google/android/gms/panorama/g/n;

    invoke-static {}, Lcom/google/android/gms/panorama/g/i;->i()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/panorama/g/n;->a(I)V

    .line 722
    new-instance v0, Lcom/google/android/gms/panorama/c/j;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->y:Lcom/google/android/gms/panorama/c/l;

    invoke-direct {v0, v1}, Lcom/google/android/gms/panorama/c/j;-><init>(Lcom/google/android/gms/panorama/c/l;)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/i;->w:Lcom/google/android/gms/panorama/c/j;

    .line 723
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->w:Lcom/google/android/gms/panorama/c/j;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/c/j;->a(Lcom/google/android/gms/panorama/g/e;)V

    .line 724
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->w:Lcom/google/android/gms/panorama/c/j;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->z:Lcom/google/android/gms/panorama/e/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/c/j;->a(Lcom/google/android/gms/panorama/c/k;)V

    .line 727
    sget-object v0, Lcom/google/android/gms/panorama/a;->f:[F

    aget v0, v0, v5

    sget-object v1, Lcom/google/android/gms/panorama/a;->f:[F

    aget v1, v1, v6

    sget-object v2, Lcom/google/android/gms/panorama/a;->f:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lcom/google/android/gms/panorama/a;->f:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 732
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 733
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 734
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->T:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->h:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 736
    new-instance v1, Lcom/google/android/gms/panorama/c/p;

    invoke-direct {v1, v0}, Lcom/google/android/gms/panorama/c/p;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/google/android/gms/panorama/g/i;->x:Lcom/google/android/gms/panorama/c/p;

    .line 737
    iput-boolean v6, p0, Lcom/google/android/gms/panorama/g/i;->c:Z

    .line 739
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->P:Lcom/google/android/gms/panorama/f/a;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->P:Lcom/google/android/gms/panorama/f/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/panorama/f/a;->a(Ljava/lang/Object;)V

    .line 742
    :cond_0
    return-void
.end method

.method private static i()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 750
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 751
    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 752
    aget v0, v0, v2

    return v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->N:Lcom/google/android/gms/panorama/f/a;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->N:Lcom/google/android/gms/panorama/f/a;

    iget-boolean v1, p0, Lcom/google/android/gms/panorama/g/i;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/panorama/f/a;->a(Ljava/lang/Object;)V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->O:Lcom/google/android/gms/panorama/g/f;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/g/f;->requestRender()V

    .line 760
    return-void
.end method

.method private k()V
    .locals 7

    .prologue
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 769
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->w:Lcom/google/android/gms/panorama/c/j;

    if-nez v0, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    iget-object v0, v0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v0, v0, Lcom/google/android/gms/panorama/f/e;->o:F

    .line 774
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    iget-object v1, v1, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v1, v1, Lcom/google/android/gms/panorama/f/e;->n:F

    .line 776
    const/high16 v2, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/google/android/gms/panorama/g/i;->j:F

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/panorama/g/i;->R:F

    .line 780
    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->o:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/gms/panorama/g/i;->o:F

    .line 784
    iget-object v2, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    iget v2, v2, Lcom/google/android/gms/panorama/g/e;->b:F

    float-to-double v2, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v2, v2, v4

    if-gez v2, :cond_0

    .line 788
    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->k:F

    div-float/2addr v2, v6

    .line 790
    iget v3, p0, Lcom/google/android/gms/panorama/g/i;->l:F

    div-float/2addr v3, v6

    .line 794
    iget-object v4, p0, Lcom/google/android/gms/panorama/g/i;->S:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/google/android/gms/panorama/g/i;->R:F

    sub-float/2addr v4, v5

    add-float/2addr v4, v2

    .line 796
    iget v5, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    add-float/2addr v4, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    .line 799
    iget-object v4, p0, Lcom/google/android/gms/panorama/g/i;->S:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/google/android/gms/panorama/g/i;->R:F

    add-float/2addr v4, v5

    sub-float v2, v4, v2

    .line 801
    iget v4, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    add-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    .line 804
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->S:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->R:F

    sub-float/2addr v1, v2

    add-float/2addr v1, v3

    .line 806
    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->o:F

    neg-float v2, v2

    add-float/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    neg-float v1, v1

    iput v1, p0, Lcom/google/android/gms/panorama/g/i;->o:F

    .line 809
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->S:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->R:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v3

    .line 811
    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->o:F

    neg-float v2, v2

    add-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->o:F

    .line 813
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->g()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 176
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->u:F

    .line 177
    const/high16 v0, -0x3e100000    # -30.0f

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    .line 178
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->k()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->r:F

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->e:Z

    .line 181
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->j()V

    .line 182
    return-void
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->i:F

    div-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/panorama/g/i;->c(F)V

    .line 447
    return-void
.end method

.method public final a(FF)V
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->M:Z

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 195
    :cond_0
    iput p1, p0, Lcom/google/android/gms/panorama/g/i;->o:F

    .line 196
    iput p2, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    .line 198
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->k()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->e:Z

    .line 200
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->g()V

    .line 201
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->j()V

    goto :goto_0
.end method

.method public final a(FFLcom/google/android/gms/panorama/b/b;)V
    .locals 6

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->G:[F

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/panorama/g/i;->a(FF[F)V

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->G:[F

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->I:Lcom/google/android/gms/panorama/b/c;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/panorama/b/c;->a(FFF)V

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->I:Lcom/google/android/gms/panorama/b/c;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/b/c;->a()F

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->I:Lcom/google/android/gms/panorama/b/c;

    iget v0, v0, Lcom/google/android/gms/panorama/b/c;->b:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v1, v0

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->I:Lcom/google/android/gms/panorama/b/c;

    iget v0, v0, Lcom/google/android/gms/panorama/b/c;->a:F

    float-to-double v2, v0

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->I:Lcom/google/android/gms/panorama/b/c;

    iget v0, v0, Lcom/google/android/gms/panorama/b/c;->c:F

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    float-to-double v2, v0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v2, v4

    double-to-float v0, v2

    :cond_0
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p3, Lcom/google/android/gms/panorama/b/b;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p3, Lcom/google/android/gms/panorama/b/b;->b:F

    .line 267
    return-void
.end method

.method public final a(Lcom/google/android/gms/panorama/d/a;Lcom/google/android/gms/panorama/d/c;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/android/gms/panorama/g/i;->b:Lcom/google/android/gms/panorama/d/a;

    .line 335
    iput-object p2, p0, Lcom/google/android/gms/panorama/g/i;->L:Lcom/google/android/gms/panorama/d/c;

    .line 336
    return-void
.end method

.method public final a(Lcom/google/android/gms/panorama/f/a;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/gms/panorama/g/i;->N:Lcom/google/android/gms/panorama/f/a;

    .line 357
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/google/android/gms/panorama/g/i;->M:Z

    .line 345
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->M:Z

    if-nez v0, :cond_0

    .line 347
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->g:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->f:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/i;->J:Lcom/google/android/gms/panorama/b/b;

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/panorama/g/i;->a(FFLcom/google/android/gms/panorama/b/b;)V

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->J:Lcom/google/android/gms/panorama/b/b;

    iget v0, v0, Lcom/google/android/gms/panorama/b/b;->a:F

    neg-float v0, v0

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->o:F

    const/high16 v0, 0x43340000    # 180.0f

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->J:Lcom/google/android/gms/panorama/b/b;

    iget v1, v1, Lcom/google/android/gms/panorama/b/b;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->k()V

    .line 349
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->o:F

    .line 220
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->k()V

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->e:Z

    .line 222
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->g()V

    .line 223
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->j()V

    .line 224
    return-void
.end method

.method public final b(F)V
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->i:F

    div-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/panorama/g/i;->c(F)V

    .line 456
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->j:F

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->i:F

    .line 457
    return-void
.end method

.method public final b(Lcom/google/android/gms/panorama/f/a;)V
    .locals 1

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/android/gms/panorama/g/i;->P:Lcom/google/android/gms/panorama/f/a;

    .line 364
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->c:Z

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/panorama/f/a;->a(Ljava/lang/Object;)V

    .line 367
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->e:Z

    .line 322
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->j()V

    .line 323
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    return v0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->o:F

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->y:Lcom/google/android/gms/panorama/c/l;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/c/l;->a()V

    .line 468
    return-void
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 591
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->Q:Z

    if-eqz v0, :cond_0

    .line 593
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->h()V
    :try_end_0
    .catch Lcom/google/android/gms/panorama/c/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    iget-object v0, v0, Lcom/google/android/gms/panorama/g/e;->a:Lcom/google/android/gms/panorama/g/n;

    invoke-static {}, Lcom/google/android/gms/panorama/g/i;->i()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/panorama/g/n;->a(I)V

    .line 598
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->w:Lcom/google/android/gms/panorama/c/j;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/c/j;->a(Lcom/google/android/gms/panorama/g/e;)V

    .line 601
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->c:Z

    if-nez v0, :cond_2

    .line 642
    :cond_1
    :goto_1
    return-void

    .line 594
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/c/i;->printStackTrace()V

    goto :goto_0

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->O:Lcom/google/android/gms/panorama/g/f;

    if-eqz v0, :cond_3

    .line 606
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->O:Lcom/google/android/gms/panorama/g/f;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/g/f;->a()V

    .line 609
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->e:Z

    if-eqz v0, :cond_7

    .line 610
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->s:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    .line 611
    iput v3, p0, Lcom/google/android/gms/panorama/g/i;->t:F

    .line 614
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->u:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 615
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->u:F

    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->s:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->u:F

    .line 619
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->u:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 620
    iput-boolean v4, p0, Lcom/google/android/gms/panorama/g/i;->e:Z

    iput v3, p0, Lcom/google/android/gms/panorama/g/i;->t:F

    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->j()V

    .line 623
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->g()V

    .line 624
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->k()V

    .line 625
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->O:Lcom/google/android/gms/panorama/g/f;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/g/f;->requestRender()V

    .line 635
    :cond_5
    :goto_2
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->r:F

    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->r:F

    sub-float v1, v3, v1

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->r:F

    .line 639
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->c:Z

    if-eqz v0, :cond_1

    .line 640
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->M:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->g()V

    :cond_6
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->f:I

    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->g:I

    invoke-static {v4, v4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v0, 0x100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->x:Lcom/google/android/gms/panorama/c/p;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->C:[F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/c/p;->b([F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->z:Lcom/google/android/gms/panorama/e/a;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/e/a;->a()V

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->z:Lcom/google/android/gms/panorama/e/a;

    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->r:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/e/a;->a(F)V

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->H:Lcom/google/android/gms/panorama/b/c;

    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->f:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->g:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/gms/panorama/g/i;->F:[F

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/gms/panorama/g/i;->a(FF[F)V

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->F:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/i;->F:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/gms/panorama/g/i;->F:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/panorama/b/c;->a(FFF)V

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/b/c;->a()F

    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->w:Lcom/google/android/gms/panorama/c/j;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/i;->C:[F

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/i;->H:Lcom/google/android/gms/panorama/b/c;

    iget v3, p0, Lcom/google/android/gms/panorama/g/i;->v:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/panorama/c/j;->a([FLcom/google/android/gms/panorama/b/c;F)V
    :try_end_1
    .catch Lcom/google/android/gms/panorama/c/i; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/c/i;->printStackTrace()V

    goto/16 :goto_1

    .line 626
    :cond_7
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->t:F

    const v1, 0x3951b717    # 2.0E-4f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 627
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    iget v1, p0, Lcom/google/android/gms/panorama/g/i;->s:F

    iget v2, p0, Lcom/google/android/gms/panorama/g/i;->t:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->n:F

    .line 628
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->t:F

    const v1, 0x3f6b851f    # 0.92f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/panorama/g/i;->t:F

    .line 629
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->g()V

    .line 630
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->k()V

    .line 631
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->O:Lcom/google/android/gms/panorama/g/f;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/g/f;->requestRender()V

    goto/16 :goto_2
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .prologue
    .line 685
    iput p2, p0, Lcom/google/android/gms/panorama/g/i;->f:I

    .line 686
    iput p3, p0, Lcom/google/android/gms/panorama/g/i;->g:I

    .line 688
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/i;->d:Lcom/google/android/gms/panorama/g/e;

    if-nez v0, :cond_0

    .line 689
    const-string v0, "PanoramaViewRenderer"

    const-string v1, "Image file not set. Cannot initialize rendering."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/g/i;->c:Z

    if-nez v0, :cond_1

    .line 696
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/panorama/g/i;->h()V
    :try_end_0
    .catch Lcom/google/android/gms/panorama/c/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/android/gms/panorama/g/i;->m:F

    invoke-direct {p0, v0}, Lcom/google/android/gms/panorama/g/i;->c(F)V

    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/c/i;->printStackTrace()V

    goto :goto_1
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .prologue
    .line 706
    return-void
.end method
