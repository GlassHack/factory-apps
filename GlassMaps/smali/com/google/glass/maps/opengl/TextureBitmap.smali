.class public Lcom/google/glass/maps/opengl/TextureBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private height:I

.field private width:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/glass/maps/opengl/TextureBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 58
    iput p2, p0, Lcom/google/glass/maps/opengl/TextureBitmap;->width:I

    .line 59
    iput p3, p0, Lcom/google/glass/maps/opengl/TextureBitmap;->height:I

    .line 60
    return-void
.end method

.method public static createOptimizedBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/google/glass/maps/opengl/TextureBitmap;
    .locals 2

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/google/glass/maps/opengl/Texture;->hasPowerOf2Edges(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    :goto_0
    new-instance v1, Lcom/google/glass/maps/opengl/TextureBitmap;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/glass/maps/opengl/TextureBitmap;-><init>(Landroid/graphics/Bitmap;II)V

    return-object v1

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/google/glass/maps/opengl/Texture;->getNextPowerOf2(I)I

    move-result v0

    .line 25
    invoke-static {p1}, Lcom/google/glass/maps/opengl/Texture;->getNextPowerOf2(I)I

    move-result v1

    .line 26
    invoke-static {v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createOptimizedBitmap(Landroid/content/Context;I)Lcom/google/glass/maps/opengl/TextureBitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Lcom/google/glass/maps/opengl/Texture;->loadBitmapUnscaled(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/google/glass/maps/opengl/Texture;->hasPowerOf2Edges(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/google/glass/maps/opengl/TextureBitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/opengl/TextureBitmap;-><init>(Landroid/graphics/Bitmap;II)V

    .line 48
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/google/glass/maps/opengl/Texture;->getNextPowerOf2(I)I

    move-result v0

    .line 43
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Lcom/google/glass/maps/opengl/Texture;->getNextPowerOf2(I)I

    move-result v2

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 45
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 47
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 48
    new-instance v0, Lcom/google/glass/maps/opengl/TextureBitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/glass/maps/opengl/TextureBitmap;-><init>(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/maps/opengl/TextureBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/glass/maps/opengl/TextureBitmap;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/glass/maps/opengl/TextureBitmap;->width:I

    return v0
.end method
