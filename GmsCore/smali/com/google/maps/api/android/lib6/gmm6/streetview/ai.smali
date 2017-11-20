.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private final c:Z

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Canvas;

.field private f:I

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private final l:Ljava/util/ArrayList;

.field private m:I

.field private final n:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x200

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->l:Ljava/util/ArrayList;

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a:I

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->g:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->b:I

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->h:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->c:Z

    iput-boolean p3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->n:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->m:I

    return-void
.end method

.method private a(II)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->m:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call this method now."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->m:I

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;II)I
    .locals 25

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a(II)V

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    move v10, v3

    :goto_0
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    const/4 v3, 0x1

    :goto_1
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    if-eqz v10, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    move/from16 v0, p5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    move/from16 v0, p6

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p6

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    iget v5, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v4

    iput v5, v11, Landroid/graphics/Rect;->top:I

    iget v5, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    iput v5, v11, Landroid/graphics/Rect;->bottom:I

    iget v5, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iput v5, v11, Landroid/graphics/Rect;->left:I

    iget v5, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v11, Landroid/graphics/Rect;->right:I

    :cond_1
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v4, v4

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v7, v4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v5, v4

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    :cond_2
    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a:I

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v4, v11, Landroid/graphics/Rect;->top:I

    iget v9, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v4

    iget v4, v11, Landroid/graphics/Rect;->left:I

    iget v12, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v4

    add-int v4, v5, v9

    move/from16 v0, p6

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    add-int v4, v8, v12

    move/from16 v0, p5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v9, v22, v9

    sub-int v12, v4, v12

    sub-int v5, v9, v5

    div-int/lit8 v13, v5, 0x2

    sub-int v5, v12, v8

    div-int/lit8 v12, v5, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->i:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->j:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->k:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a:I

    if-le v4, v14, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a:I

    move/from16 v19, v4

    :goto_2
    add-int v4, v9, v19

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a:I

    if-le v4, v14, :cond_9

    const/4 v9, 0x0

    add-int/2addr v5, v8

    const/4 v4, 0x0

    move/from16 v20, v5

    move/from16 v21, v9

    :goto_3
    move/from16 v0, v22

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v4, v20, v23

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->b:I

    if-le v4, v5, :cond_5

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Out of texture space."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_5
    add-int v14, v21, v19

    add-int v4, v20, v7

    add-int v15, v20, v22

    if-eqz v10, :cond_6

    add-int v5, v21, v19

    add-int v7, v20, v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->e:Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    if-eqz v3, :cond_8

    iget v3, v11, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v21

    add-int/2addr v3, v12

    int-to-float v7, v3

    iget v3, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    add-int/2addr v3, v13

    int-to-float v8, v3

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    if-eqz p4, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->e:Landroid/graphics/Canvas;

    move-object/from16 v0, p4

    invoke-virtual {v3, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->e:Landroid/graphics/Canvas;

    move-object/from16 v0, p3

    invoke-virtual {v3, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;-><init>(II)V

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->g:F

    mul-float v9, v4, v5

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->g:F

    mul-float v17, v4, v5

    move/from16 v0, v20

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->h:F

    mul-float v24, v4, v5

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->h:F

    mul-float v10, v4, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->a(IIFFFFF)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v0, v19

    int-to-float v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v3

    move/from16 v18, v10

    invoke-virtual/range {v11 .. v18}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->a(IIFFFFF)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move/from16 v0, v22

    int-to-float v7, v0

    const/4 v8, 0x0

    move/from16 v10, v24

    invoke-virtual/range {v3 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->a(IIFFFFF)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    move/from16 v0, v19

    int-to-float v6, v0

    move/from16 v0, v22

    int-to-float v7, v0

    const/4 v8, 0x0

    move/from16 v9, v17

    move/from16 v10, v24

    invoke-virtual/range {v3 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->a(IIFFFFF)V

    add-int v4, v21, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->i:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->j:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->k:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->l:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/aj;

    add-int v7, v20, v22

    move/from16 v0, v22

    neg-int v9, v0

    move-object v5, v3

    move/from16 v6, v21

    move/from16 v8, v19

    invoke-direct/range {v4 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aj;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;IIII)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    return v3

    :cond_9
    move v4, v5

    move/from16 v20, v8

    move/from16 v21, v9

    goto/16 :goto_3

    :cond_a
    move/from16 v19, v4

    goto/16 :goto_2
.end method

.method public final a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->i:I

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->j:I

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->k:I

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->b:I

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->d:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->d:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->e:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x47012f00    # 33071.0f

    const/high16 v3, 0x46180000    # 9728.0f

    const/4 v2, 0x1

    const/16 v1, 0xde1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->m:I

    new-array v0, v2, [I

    invoke-interface {p1, v2, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    aget v0, v0, v5

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->f:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->f:I

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0x2801

    invoke-interface {p1, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-interface {p1, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    invoke-interface {p1, v1, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-interface {p1, v1, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800    # 7681.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;FF)V
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/high16 v3, 0x10000

    const/4 v0, 0x3

    invoke-direct {p0, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a(II)V

    const/16 v0, 0xde1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->f:I

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0x1d00

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x303

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->n:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    move v2, p2

    move v3, v1

    move v4, p3

    move v5, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    :cond_0
    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;FFI)V
    .locals 4

    const/16 v3, 0x1700

    const/4 v0, 0x3

    invoke-direct {p0, v0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a(II)V

    invoke-static {p2}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    invoke-static {p3}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->n:Z

    if-eqz v2, :cond_0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aj;

    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aj;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->a(Ljavax/microedition/khronos/opengles/GL10;Z)V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->n:Z

    if-eqz v0, :cond_1

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_1
    return-void
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->m:I

    if-lez v0, :cond_0

    new-array v0, v3, [I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->f:I

    aput v1, v0, v2

    invoke-interface {p1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    :cond_0
    return-void
.end method

.method public final c(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0xde1

    const/4 v2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a(II)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->f:I

    invoke-interface {p1, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->d:Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->d:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->e:Landroid/graphics/Canvas;

    return-void
.end method

.method public final d(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a(II)V

    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->n:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_0
    return-void
.end method
