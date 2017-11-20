.class public Lcom/google/glass/maps/map/TextTextureProvider;
.super Lcom/google/glass/maps/map/TextureProvider;
.source "SourceFile"


# instance fields
.field private final generator:Lcom/google/glass/maps/map/TextGenerator;

.field private final textSize:I

.field private final textureKey:Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;

.field private final theme:Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/glass/maps/map/TextGenerator;Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;IIILcom/google/glass/maps/map/MiniMapTheme$LabelTheme;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p5, p6}, Lcom/google/glass/maps/map/TextureProvider;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;II)V

    .line 54
    iput-object p2, p0, Lcom/google/glass/maps/map/TextTextureProvider;->generator:Lcom/google/glass/maps/map/TextGenerator;

    .line 55
    iput-object p3, p0, Lcom/google/glass/maps/map/TextTextureProvider;->textureKey:Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;

    .line 56
    iput p4, p0, Lcom/google/glass/maps/map/TextTextureProvider;->textSize:I

    .line 57
    iput-object p7, p0, Lcom/google/glass/maps/map/TextTextureProvider;->theme:Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;

    .line 58
    return-void
.end method

.method public static create(Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/glass/maps/map/TextGenerator;Ljava/lang/String;Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;FFF)Lcom/google/glass/maps/map/TextTextureProvider;
    .locals 12

    .prologue
    .line 29
    iget v0, p3, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;->sizeSp:F

    mul-float v0, v0, p4

    mul-float v0, v0, p6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 30
    iget-object v0, p3, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2, v0, v3}, Lcom/google/glass/maps/map/TextGenerator;->getTextWidth(Ljava/lang/String;Landroid/graphics/Typeface;I)I

    move-result v9

    .line 31
    iget-object v0, p3, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0, v3}, Lcom/google/glass/maps/map/TextGenerator;->getTextHeight(Landroid/graphics/Typeface;I)I

    move-result v10

    .line 32
    iget v4, p3, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;->fillColor:I

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 35
    invoke-static {v4, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 36
    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    aget v4, v0, v4

    mul-float v4, v4, p5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    .line 37
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    .line 40
    :cond_0
    new-instance v0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;

    iget-object v2, p3, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;->typeface:Landroid/graphics/Typeface;

    iget v5, p3, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;->outlineColor:I

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;III)V

    .line 42
    new-instance v4, Lcom/google/glass/maps/map/TextTextureProvider;

    move-object v5, p0

    move-object v6, p1

    move-object v7, v0

    move v8, v3

    move-object v11, p3

    invoke-direct/range {v4 .. v11}, Lcom/google/glass/maps/map/TextTextureProvider;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/glass/maps/map/TextGenerator;Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;IIILcom/google/glass/maps/map/MiniMapTheme$LabelTheme;)V

    return-object v4
.end method


# virtual methods
.method public createTexture()Lcom/google/glass/maps/opengl/Texture;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/maps/map/TextTextureProvider;->generator:Lcom/google/glass/maps/map/TextGenerator;

    iget-object v1, p0, Lcom/google/glass/maps/map/TextTextureProvider;->textureAllocator:Lcom/google/glass/maps/opengl/TextureAllocator;

    iget-object v2, p0, Lcom/google/glass/maps/map/TextTextureProvider;->textureKey:Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/map/TextGenerator;->getTexture(Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)Lcom/google/glass/maps/opengl/Texture;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Texture;->addRef()V

    .line 76
    return-object v0
.end method

.method public getTextGenerator()Lcom/google/glass/maps/map/TextGenerator;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/maps/map/TextTextureProvider;->generator:Lcom/google/glass/maps/map/TextGenerator;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/glass/maps/map/TextTextureProvider;->textSize:I

    return v0
.end method

.method public getTheme()Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/maps/map/TextTextureProvider;->theme:Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;

    return-object v0
.end method
