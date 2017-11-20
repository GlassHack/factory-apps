.class abstract Lcom/google/maps/api/android/lib6/gmm6/streetview/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/streetview/al;
.implements Lcom/google/maps/api/android/lib6/gmm6/streetview/bh;


# instance fields
.field protected a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

.field private b:Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

.field private c:I

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

.field private final j:Lcom/google/maps/api/android/lib6/gmm6/streetview/az;

.field private k:[Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;

.field private final l:Lcom/google/maps/api/android/lib6/gmm6/streetview/r;

.field private m:[I

.field private n:[I

.field private o:Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;

.field private p:F


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;Lcom/google/maps/api/android/lib6/gmm6/streetview/az;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->j:Lcom/google/maps/api/android/lib6/gmm6/streetview/az;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/r;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/r;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->l:Lcom/google/maps/api/android/lib6/gmm6/streetview/r;

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/streetview/au;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->j:Lcom/google/maps/api/android/lib6/gmm6/streetview/az;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Lcom/google/maps/api/android/lib6/gmm6/streetview/au;Z)Z

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;Lcom/google/maps/api/android/lib6/gmm6/streetview/l;III)V
    .locals 10

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->c:I

    int-to-float v0, p3

    int-to-float v1, p4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->d:F

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->c:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->f:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->d:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->g:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->e:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->h:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->b:I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->c:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->d:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/c/bb;->a(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->e:I

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->w:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    new-array v0, v9, [Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->k:[Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->e:I

    add-int/lit8 v0, v0, -0x1

    sub-int v2, v0, v1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->b:I

    iget v5, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->c:I

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->g:I

    iget v7, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->h:I

    move-object v3, p0

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;-><init>(IILcom/google/maps/api/android/lib6/gmm6/streetview/al;IIIII)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->k:[Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->p:F

    neg-float v0, v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->a(F)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->p:F

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/maps/api/android/lib6/c/bp;Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->o:Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;

    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/c/bp;->c()F

    move-result v2

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v3, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->d:F

    const/16 v4, 0x1701

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->d:F

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(F)F

    move-result v4

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->d:F

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x43c80000    # 400.0f

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5, v6}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    const/16 v2, 0x1700

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/c/bp;->a()[F

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    const/high16 v2, 0x43340000    # 180.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->q:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->p(F)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v4

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->r:F

    neg-float v5, v5

    const/4 v6, 0x0

    neg-float v2, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->p:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->c:I

    int-to-float v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->f:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->d:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1
    invoke-static {v3}, Lcom/google/maps/api/android/lib6/c/bb;->e(F)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->e:I

    add-int/lit8 v3, v3, -0x1

    sub-int v2, v3, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->k:[Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/c/bb;->a(II)I

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-nez v3, :cond_13

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v8, v2

    :goto_1
    const/16 v2, 0x1700

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->a()F

    move-result v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->r(F)F

    move-result v2

    move-object/from16 v0, p4

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->a:F

    neg-float v3, v3

    mul-float/2addr v3, v2

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->b:F

    mul-float/2addr v2, v5

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/16 v2, 0xb71

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v2, 0x100

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->l:Lcom/google/maps/api/android/lib6/gmm6/streetview/r;

    iget-object v2, v6, Lcom/google/maps/api/android/lib6/gmm6/streetview/r;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v2, v6, Lcom/google/maps/api/android/lib6/gmm6/streetview/r;->b:[F

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/google/maps/api/android/lib6/gmm6/streetview/r;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->b:[F

    const/4 v5, 0x0

    iget-object v6, v6, Lcom/google/maps/api/android/lib6/gmm6/streetview/r;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    iget-object v6, v6, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->a:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move v10, v8

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->k:[Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;

    aget-object v16, v2, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;->a()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->m:[I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->m:[I

    array-length v2, v2

    if-le v6, v2, :cond_3

    :cond_2
    new-array v2, v6, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->m:[I

    new-array v2, v6, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->n:[I

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->l:Lcom/google/maps/api/android/lib6/gmm6/streetview/r;

    if-eqz p4, :cond_5

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;->a(Z)[F

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->m:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->m:[I

    array-length v9, v2

    iget-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/r;->b:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v9}, Landroid/opengl/Visibility;->frustumCullSpheres([FI[FII[III)I

    move-result v12

    const/4 v9, 0x0

    const/4 v2, 0x0

    move v11, v2

    :goto_5
    if-ge v11, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->m:[I

    aget v13, v2, v11

    if-eqz p4, :cond_6

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;->a(IZ)Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->l:Lcom/google/maps/api/android/lib6/gmm6/streetview/r;

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->a:[F

    iget-object v6, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->b:[C

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->b:[C

    array-length v8, v2

    iget-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/r;->b:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Landroid/opengl/Visibility;->visibilityTest([FI[FI[CII)I

    move-result v2

    if-lez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->n:[I

    add-int/lit8 v2, v9, 0x1

    aput v13, v3, v9

    const/16 v3, 0x10

    if-gt v2, v3, :cond_11

    :goto_7
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    move v9, v2

    goto :goto_5

    :cond_4
    const/16 v2, 0xb71

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    move v15, v9

    :goto_8
    const/16 v2, 0x10

    if-le v15, v2, :cond_8

    if-lez v10, :cond_8

    add-int/lit8 v8, v10, -0x1

    move v10, v8

    goto/16 :goto_3

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->o:Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;->a:F

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

    invoke-virtual {v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/au;)V

    goto :goto_9

    :cond_a
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;->b:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;->c:I

    move/from16 v18, v0

    const/4 v2, 0x0

    move v11, v2

    :goto_a
    if-ge v11, v15, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->n:[I

    aget v2, v2, v11

    mul-int v3, v17, v18

    div-int v3, v2, v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/al;

    invoke-interface {v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/al;->a(I)I

    move-result v6

    mul-int v3, v17, v18

    rem-int/2addr v2, v3

    div-int v5, v2, v17

    rem-int v7, v2, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->n:[I

    aget v19, v2, v11

    if-eqz p4, :cond_b

    const/4 v2, 0x1

    move v8, v2

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->k:[Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;

    aget-object v20, v2, v10

    const/16 v2, 0x1702

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    move v12, v2

    move v13, v3

    move v14, v4

    move v4, v7

    move v7, v10

    :goto_c
    if-ltz v7, :cond_e

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;-><init>(Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_c

    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_d

    const/16 v2, 0xde1

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v12, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v14, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->o:Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;

    invoke-virtual {v2, v14}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;->a(F)V

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ak;->a(IZ)Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->a(Ljavax/microedition/khronos/opengles/GL10;Z)V

    const/16 v2, 0x1702

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_a

    :cond_b
    const/4 v2, 0x0

    move v8, v2

    goto :goto_b

    :cond_c
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->a:[I

    move-object/from16 v21, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v3, v21, v3

    goto :goto_d

    :cond_d
    if-nez v9, :cond_10

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/au;)V

    const/4 v2, 0x1

    :goto_f
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v13, v3

    const/high16 v9, 0x3f000000    # 0.5f

    and-int/lit8 v13, v4, 0x1

    int-to-float v13, v13

    mul-float/2addr v9, v13

    add-float/2addr v9, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v12, v3

    const/high16 v12, 0x3f000000    # 0.5f

    and-int/lit8 v13, v5, 0x1

    int-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v3, v12

    shr-int/lit8 v12, v4, 0x1

    shr-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v14

    move v13, v9

    move v14, v4

    move v9, v2

    move v4, v12

    move v12, v3

    goto/16 :goto_c

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/x;->o:Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;->a(F)V

    const/4 v2, 0x0

    goto :goto_e

    :cond_f
    const/16 v2, 0x1700

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0

    :cond_10
    move v2, v9

    goto :goto_f

    :cond_11
    move v15, v2

    goto/16 :goto_8

    :cond_12
    move v2, v9

    goto/16 :goto_7

    :cond_13
    move v8, v2

    goto/16 :goto_1
.end method
