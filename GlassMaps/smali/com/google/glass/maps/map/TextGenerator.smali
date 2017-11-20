.class public Lcom/google/glass/maps/map/TextGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final OUTLINE_RATIO:F = 0.15f

.field private static final TEXTURE_CACHE_SIZE:I = 0x40


# instance fields
.field private final cache:Landroid/util/LruCache;

.field private final mainPaint:Landroid/graphics/Paint;

.field private final outlinePaint:Landroid/graphics/Paint;

.field private final textPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->textPath:Landroid/graphics/Path;

    .line 82
    new-instance v0, Lcom/google/glass/maps/map/TextGenerator$1;

    const/16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/map/TextGenerator$1;-><init>(Lcom/google/glass/maps/map/TextGenerator;I)V

    iput-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->cache:Landroid/util/LruCache;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->outlinePaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->outlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->outlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 100
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 105
    return-void
.end method

.method public getAdvanceToCharacters(Ljava/lang/String;Landroid/graphics/Typeface;I)[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [F

    .line 180
    array-length v0, v4

    if-nez v0, :cond_0

    move-object v0, v4

    .line 200
    :goto_0
    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 185
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    int-to-float v2, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 186
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 189
    int-to-float v0, p3

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 190
    int-to-float v0, v5

    move v2, v0

    move v0, v1

    .line 191
    :goto_1
    array-length v3, v4

    if-ge v0, v3, :cond_1

    .line 193
    aget v3, v4, v0

    add-float/2addr v3, v2

    .line 194
    aput v2, v4, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    .line 198
    :cond_1
    aget v0, v4, v1

    int-to-float v2, v5

    sub-float/2addr v0, v2

    aput v0, v4, v1

    .line 199
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget v1, v4, v0

    int-to-float v2, v5

    add-float/2addr v1, v2

    aput v1, v4, v0

    move-object v0, v4

    .line 200
    goto :goto_0
.end method

.method public getTextHeight(Landroid/graphics/Typeface;I)I
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 118
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 119
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 120
    int-to-float v1, p2

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 121
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getTextWidth(Ljava/lang/String;Landroid/graphics/Typeface;I)I
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 110
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    int-to-float v0, p3

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getTexture(Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)Lcom/google/glass/maps/opengl/Texture;
    .locals 11

    .prologue
    const/high16 v10, -0x1000000

    .line 131
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/opengl/Texture;

    .line 132
    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->access$000(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 135
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->access$100(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 136
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 138
    invoke-static {p2}, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->access$100(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 139
    iget-object v1, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->access$200(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v2, v7, 0x2

    add-int v8, v1, v2

    .line 140
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v5, v1, v7

    .line 141
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, v5

    add-int v9, v0, v7

    .line 142
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->access$200(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->access$200(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v4, v7

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/glass/maps/map/TextGenerator;->textPath:Landroid/graphics/Path;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 146
    invoke-static {v8}, Lcom/google/glass/maps/opengl/Texture;->getNextPowerOf2(I)I

    move-result v0

    invoke-static {v9}, Lcom/google/glass/maps/opengl/Texture;->getNextPowerOf2(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 145
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 148
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    invoke-static {p2}, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->access$300(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)I

    move-result v2

    and-int/2addr v2, v10

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/google/glass/maps/map/TextGenerator;->outlinePaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->access$300(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v2, p0, Lcom/google/glass/maps/map/TextGenerator;->outlinePaint:Landroid/graphics/Paint;

    mul-int/lit8 v3, v7, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    iget-object v2, p0, Lcom/google/glass/maps/map/TextGenerator;->textPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/google/glass/maps/map/TextGenerator;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 158
    :cond_0
    invoke-static {p2}, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->access$400(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)I

    move-result v2

    and-int/2addr v2, v10

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->access$400(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v2, p0, Lcom/google/glass/maps/map/TextGenerator;->textPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/google/glass/maps/map/TextGenerator;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 164
    :cond_1
    new-instance v0, Lcom/google/glass/maps/opengl/Texture;

    invoke-direct {v0, p1}, Lcom/google/glass/maps/opengl/Texture;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;)V

    .line 165
    invoke-virtual {v0, v1, v8, v9}, Lcom/google/glass/maps/opengl/Texture;->load(Landroid/graphics/Bitmap;II)V

    .line 166
    iget-object v1, p0, Lcom/google/glass/maps/map/TextGenerator;->cache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_2
    return-object v0
.end method
