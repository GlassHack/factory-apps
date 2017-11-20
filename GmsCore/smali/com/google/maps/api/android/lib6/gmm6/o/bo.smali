.class public final Lcom/google/maps/api/android/lib6/gmm6/o/bo;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bt;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

.field private final b:[F

.field private c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private e:Landroid/view/View;

.field private f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

.field private g:Landroid/graphics/Bitmap;

.field private h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

.field private i:Lcom/google/maps/api/android/lib6/gmm6/o/bp;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field private final o:I

.field private final p:Lcom/google/maps/api/android/lib6/gmm6/b/e;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->q:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bu;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bu;Landroid/content/res/Resources;)V
    .locals 9

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->b:[F

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/b/e;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x2710

    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/b/g;->c:Lcom/google/maps/api/android/lib6/gmm6/b/g;

    const/high16 v7, 0x10000

    const v8, 0x8000

    invoke-direct/range {v1 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/b/e;-><init>(JJLcom/google/maps/api/android/lib6/gmm6/b/g;II)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->p:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    if-nez p2, :cond_0

    const v0, 0xffff00

    :goto_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->o:I

    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/maps/w;->b:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;IILcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 18

    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(FF)F

    move-result v2

    move/from16 v0, p2

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(FF)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v12

    float-to-double v14, v2

    mul-double/2addr v14, v4

    mul-double/2addr v14, v10

    float-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v8

    add-double v14, v14, v16

    double-to-int v13, v14

    add-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v13

    float-to-double v14, v2

    mul-double/2addr v4, v14

    mul-double/2addr v4, v8

    float-to-double v8, v3

    mul-double/2addr v8, v10

    sub-double/2addr v4, v8

    double-to-int v3, v4

    add-int/2addr v3, v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v4

    float-to-double v8, v2

    mul-double/2addr v6, v8

    double-to-int v2, v6

    add-int/2addr v2, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(III)V

    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;)V
    .locals 3

    invoke-virtual {p3, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-virtual {p4, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method private e(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->h()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    aget v3, v2, v1

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->l:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->l:I

    add-int/2addr v4, v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_3

    int-to-float v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    aget v2, v2, v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->m:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_5

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private h()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ba;->b:Z

    :cond_2
    return-void
.end method

.method private k()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, -0x2

    const/high16 v2, -0x80000000

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->j:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->k:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->l:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->m:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->l:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->m:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->l:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(II)I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->m:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->l:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->m:I

    sub-int/2addr v1, v4

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    return-object v2
.end method


# virtual methods
.method protected final B_()Z
    .locals 2

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->B_()Z

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->i:Lcom/google/maps/api/android/lib6/gmm6/o/bp;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->i:Lcom/google/maps/api/android/lib6/gmm6/o/bp;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bp;->b(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/ax;Lcom/google/maps/api/android/lib6/gmm6/o/ba;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->p:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->start()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    iget-object v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/ba;->a:Landroid/view/View;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->h()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->c()V

    :cond_3
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->b()V

    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/ba;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->h()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/bp;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->i:Lcom/google/maps/api/android/lib6/gmm6/o/bp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    :cond_0
    monitor-exit p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->h()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->g()Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a()Lcom/google/maps/api/android/lib6/gmm6/j/q;

    move-result-object v4

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/j/k;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_3
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v4

    if-nez v0, :cond_4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v3, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->h()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    aget v6, v3, v6

    sub-int/2addr v6, v4

    const/4 v7, 0x0

    aget v7, v3, v7

    add-int/2addr v4, v7

    const/4 v7, 0x1

    aget v7, v3, v7

    sub-int/2addr v7, v5

    const/4 v8, 0x1

    aget v3, v3, v8

    add-int/2addr v3, v5

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v8

    if-ltz v4, :cond_6

    if-ge v6, v5, :cond_6

    if-ltz v3, :cond_6

    if-ge v7, v8, :cond_6

    :goto_1
    if-nez v1, :cond_7

    monitor-exit p0

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->e()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->b:[F

    invoke-virtual {p2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;[F)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->b:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->b:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d(FF)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_9

    const-string v0, "UI"

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Null point for ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->b:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->b:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "); camera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/b/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit p0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x1e01

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v2, :cond_a

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-direct {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b(Landroid/graphics/Bitmap;)V

    :cond_a
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->n:F

    invoke-static {p1, p2, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    invoke-static {v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->o()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    neg-float v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ba;->b:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->o:I

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;)V

    :goto_2
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    goto/16 :goto_0

    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->i()Z

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(FFLcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->B_()Z

    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->d()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->B_()Z

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 2

    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->n:F

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->j:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->k:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->j:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->k:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->h()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->g:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a_(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->p:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->start()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/ba;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->i:Lcom/google/maps/api/android/lib6/gmm6/o/bp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->i:Lcom/google/maps/api/android/lib6/gmm6/o/bp;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    :cond_0
    const/4 v0, 0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->c:Lcom/google/maps/api/android/lib6/gmm6/o/ax;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->e(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->y_()V

    const/4 v0, 0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method

.method public final declared-synchronized y_()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->f:Lcom/google/maps/api/android/lib6/gmm6/o/ba;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ba;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
