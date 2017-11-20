.class Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "DeferredImageDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/deferredcontent/DeferredImageDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CenteringBitmapDrawable"
.end annotation


# instance fields
.field private crop:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "crop"    # Z

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 200
    iput-boolean p3, p0, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;->crop:Z

    .line 201
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    .line 205
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 207
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 208
    .local v1, "bitmapWidth":I
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 209
    .local v0, "bitmapHeight":I
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 210
    .local v3, "drawingWidth":I
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 212
    .local v2, "drawingHeight":I
    const/4 v4, 0x0

    .line 213
    .local v4, "dx":F
    const/4 v5, 0x0

    .line 215
    .local v5, "dy":F
    iget-boolean v8, p0, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;->crop:Z

    if-eqz v8, :cond_1

    .line 218
    mul-int v8, v1, v2

    mul-int v9, v3, v0

    if-le v8, v9, :cond_0

    .line 219
    int-to-float v8, v2

    int-to-float v9, v0

    div-float v7, v8, v9

    .line 220
    .local v7, "scale":F
    int-to-float v8, v3

    int-to-float v9, v1

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    mul-float v4, v8, v10

    .line 225
    :goto_0
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 231
    .end local v7    # "scale":F
    :goto_1
    add-float v8, v4, v10

    float-to-int v8, v8

    int-to-float v8, v8

    add-float v9, v5, v10

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 232
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {p1, v8, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 233
    return-void

    .line 222
    :cond_0
    int-to-float v8, v3

    int-to-float v9, v1

    div-float v7, v8, v9

    .line 223
    .restart local v7    # "scale":F
    int-to-float v8, v2

    int-to-float v9, v0

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    mul-float v5, v8, v10

    goto :goto_0

    .line 227
    .end local v7    # "scale":F
    :cond_1
    sub-int v8, v3, v1

    int-to-float v8, v8

    mul-float v4, v8, v10

    .line 228
    sub-int v8, v2, v0

    int-to-float v8, v8

    mul-float v5, v8, v10

    goto :goto_1
.end method
