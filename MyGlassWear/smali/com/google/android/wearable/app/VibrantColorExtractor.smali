.class public Lcom/google/android/wearable/app/VibrantColorExtractor;
.super Ljava/lang/Object;
.source "VibrantColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;
    }
.end annotation


# static fields
.field private static final BITMAP_BOUNDING_SIZE:I = 0x64

.field private static final BLACK_MAX_LIGHTNESS:F = 0.05f

.field private static final COMPONENT_BLUE:I = -0x1

.field private static final COMPONENT_GREEN:I = -0x2

.field private static final COMPONENT_RED:I = -0x3

.field private static final MAX_NORMAL_LUMA:F = 0.7f

.field private static final MAX_NUM_COLORS:I = 0x10

.field private static final MIN_NORMAL_LUMA:F = 0.3f

.field private static final MIN_VIBRANT_SATURATION:F = 0.35f

.field private static final TARGET_NORMAL_LUMA:F = 0.5f

.field private static final TARGET_VIBRANT_SATURATION:F = 1.0f

.field private static final UNKNOWN_COLOR:I = -0x1

.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEIGHT_LUMA:F = 6.0f

.field private static final WEIGHT_POPULATION:F = 1.0f

.field private static final WEIGHT_SATURATION:F = 3.0f

.field private static final WHITE_MIN_LIGHTNESS:F = 0.95f


# instance fields
.field private defaultColor:I

.field private final hsl:[F

.field private vibrantColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/wearable/app/VibrantColorExtractor$1;

    invoke-direct {v0}, Lcom/google/android/wearable/app/VibrantColorExtractor$1;-><init>()V

    sput-object v0, Lcom/google/android/wearable/app/VibrantColorExtractor;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "defaultColor"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v4, 0x3

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->hsl:[F

    .line 70
    const/4 v4, -0x1

    iput v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->vibrantColor:I

    .line 76
    iput p2, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->defaultColor:I

    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/wearable/app/VibrantColorExtractor;->createScaledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 79
    .local v3, "scaledDownBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v3}, Lcom/google/android/wearable/app/VibrantColorExtractor;->getPixels(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    .line 80
    .local v2, "pixels":[I
    invoke-direct {p0, v2}, Lcom/google/android/wearable/app/VibrantColorExtractor;->createHistogram([I)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 81
    .local v0, "histogram":Landroid/util/SparseIntArray;
    const/16 v4, 0x10

    invoke-direct {p0, v0, v4}, Lcom/google/android/wearable/app/VibrantColorExtractor;->reduceHistogram(Landroid/util/SparseIntArray;I)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 82
    invoke-direct {p0, v0}, Lcom/google/android/wearable/app/VibrantColorExtractor;->findMaxPopulation(Landroid/util/SparseIntArray;)I

    move-result v1

    .line 83
    .local v1, "maxPopulation":I
    invoke-direct {p0, v0, v1}, Lcom/google/android/wearable/app/VibrantColorExtractor;->getVibrantColor(Landroid/util/SparseIntArray;I)I

    move-result v4

    iput v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->vibrantColor:I

    .line 86
    if-eq v3, p1, :cond_0

    .line 87
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    :cond_0
    return-void
.end method

.method private static createComparisonValue(FFFFII)F
    .locals 4
    .param p0, "saturation"    # F
    .param p1, "targetSaturation"    # F
    .param p2, "luma"    # F
    .param p3, "targetLuma"    # F
    .param p4, "population"    # I
    .param p5, "highestPopulation"    # I

    .prologue
    .line 300
    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/wearable/app/VibrantColorExtractor;->invertDiff(FF)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 301
    invoke-static {p2, p3}, Lcom/google/android/wearable/app/VibrantColorExtractor;->invertDiff(FF)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x40c00000    # 6.0f

    aput v2, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p4

    int-to-float v3, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 300
    invoke-static {v0}, Lcom/google/android/wearable/app/VibrantColorExtractor;->weightedMean([F)F

    move-result v0

    return v0
.end method

.method private createHistogram([I)Landroid/util/SparseIntArray;
    .locals 5
    .param p1, "pixels"    # [I

    .prologue
    .line 229
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 230
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 231
    .local v2, "histogram":Landroid/util/SparseIntArray;
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 232
    .local v1, "colorsToIgnore":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 233
    aget v0, p1, v3

    .line 235
    .local v0, "color":I
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/wearable/app/VibrantColorExtractor;->shouldIgnoreColor(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 244
    :cond_1
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 246
    .end local v0    # "color":I
    :cond_2
    return-object v2
.end method

.method private createScaledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 264
    .local v0, "minDimension":I
    const/16 v2, 0x64

    if-gt v0, v2, :cond_0

    .line 270
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 269
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    int-to-float v3, v0

    div-float v1, v2, v3

    .line 270
    .local v1, "scaleRatio":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    .line 270
    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method private findMaxPopulation(Landroid/util/SparseIntArray;)I
    .locals 3
    .param p1, "histogram"    # Landroid/util/SparseIntArray;

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "maxPopulation":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 112
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return v1
.end method

.method private getPixels(Landroid/graphics/Bitmap;)[I
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 252
    .local v1, "pixels":[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 253
    return-object v1
.end method

.method private getVibrantColor(Landroid/util/SparseIntArray;I)I
    .locals 15
    .param p1, "histogram"    # Landroid/util/SparseIntArray;
    .param p2, "maxPopulation"    # I

    .prologue
    .line 122
    const/4 v7, -0x1

    .line 123
    .local v7, "closestColor":I
    const/4 v8, 0x0

    .line 125
    .local v8, "closestComparisonValue":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v10, v1, :cond_4

    .line 126
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 127
    .local v9, "color":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 128
    .local v5, "population":I
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->hsl:[F

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/wearable/app/VibrantColorExtractor;->rgbToHsl(III[F)V

    .line 130
    iget-object v1, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->hsl:[F

    invoke-direct {p0, v1}, Lcom/google/android/wearable/app/VibrantColorExtractor;->isVibrantColor([F)Z

    move-result v11

    .line 131
    .local v11, "isVibrant":Z
    const/4 v1, -0x1

    if-ne v7, v1, :cond_2

    const/4 v14, 0x1

    .line 132
    .local v14, "noColorYet":Z
    :goto_1
    iget-object v1, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->hsl:[F

    move/from16 v0, p2

    invoke-direct {p0, v8, v1, v5, v0}, Lcom/google/android/wearable/app/VibrantColorExtractor;->isMoreVibrant(F[FII)Z

    move-result v13

    .line 133
    .local v13, "moreVibrant":Z
    if-eqz v11, :cond_3

    if-nez v14, :cond_0

    if-eqz v13, :cond_3

    :cond_0
    const/4 v12, 0x1

    .line 135
    .local v12, "keepColor":Z
    :goto_2
    if-eqz v12, :cond_1

    .line 136
    move v7, v9

    .line 137
    iget-object v1, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->hsl:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->hsl:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    move/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/wearable/app/VibrantColorExtractor;->createComparisonValue(FFFFII)F

    move-result v8

    .line 125
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 131
    .end local v12    # "keepColor":Z
    .end local v13    # "moreVibrant":Z
    .end local v14    # "noColorYet":Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 133
    .restart local v13    # "moreVibrant":Z
    .restart local v14    # "noColorYet":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 144
    .end local v5    # "population":I
    .end local v9    # "color":I
    .end local v11    # "isVibrant":Z
    .end local v13    # "moreVibrant":Z
    .end local v14    # "noColorYet":Z
    :cond_4
    return v7
.end method

.method private hasVibrantColor()Z
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->vibrantColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static invertDiff(FF)F
    .locals 2
    .param p0, "value"    # F
    .param p1, "targetValue"    # F

    .prologue
    .line 314
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private static isBlack([F)Z
    .locals 2
    .param p0, "hslColor"    # [F

    .prologue
    .line 285
    const/4 v0, 0x2

    aget v0, p0, v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMoreVibrant(F[FII)Z
    .locals 8
    .param p1, "currentComparisonValue"    # F
    .param p2, "hsl"    # [F
    .param p3, "population"    # I
    .param p4, "maxPopulation"    # I

    .prologue
    const/4 v7, 0x1

    .line 150
    aget v0, p2, v7

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    aget v2, p2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/wearable/app/VibrantColorExtractor;->createComparisonValue(FFFFII)F

    move-result v6

    .line 154
    .local v6, "comparisonValue":F
    cmpl-float v0, v6, p1

    if-lez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNearRedILine([F)Z
    .locals 4
    .param p0, "hslColor"    # [F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    aget v2, p0, v1

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, p0, v1

    const/high16 v3, 0x42140000    # 37.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    aget v2, p0, v0

    const v3, 0x3f51eb85    # 0.82f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isVibrantColor([F)Z
    .locals 4
    .param p1, "hsl"    # [F

    .prologue
    const/4 v2, 0x1

    .line 162
    aget v1, p1, v2

    .line 163
    .local v1, "sat":F
    const/4 v3, 0x2

    aget v0, p1, v3

    .line 164
    .local v0, "luma":F
    const v3, 0x3eb33333    # 0.35f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    const v3, 0x3e99999a    # 0.3f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    const v3, 0x3f333333    # 0.7f

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isWhite([F)Z
    .locals 2
    .param p0, "hslColor"    # [F

    .prologue
    .line 290
    const/4 v0, 0x2

    aget v0, p0, v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reduceHistogram(Landroid/util/SparseIntArray;I)Landroid/util/SparseIntArray;
    .locals 11
    .param p1, "histogram"    # Landroid/util/SparseIntArray;
    .param p2, "maxNumColors"    # I

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 198
    .end local p1    # "histogram":Landroid/util/SparseIntArray;
    :goto_0
    return-object p1

    .line 175
    .restart local p1    # "histogram":Landroid/util/SparseIntArray;
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 176
    .local v3, "colors":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 177
    invoke-virtual {p1, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    aput v0, v3, v7

    .line 176
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 179
    :cond_1
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 183
    new-instance v8, Ljava/util/PriorityQueue;

    sget-object v0, Lcom/google/android/wearable/app/VibrantColorExtractor;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v8, p2, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 186
    .local v8, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;>;"
    new-instance v0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;

    const/4 v4, 0x0

    array-length v1, v3

    add-int/lit8 v5, v1, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;-><init>(Lcom/google/android/wearable/app/VibrantColorExtractor;Landroid/util/SparseIntArray;[III)V

    invoke-virtual {v8, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 190
    invoke-direct {p0, v8, p2}, Lcom/google/android/wearable/app/VibrantColorExtractor;->splitBoxes(Ljava/util/PriorityQueue;I)V

    .line 193
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 194
    .local v9, "reducedHistogram":Landroid/util/SparseIntArray;
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;

    .line 195
    .local v10, "vbox":Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;
    invoke-virtual {v10}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->getAverageColor()Landroid/util/Pair;

    move-result-object v6

    .line 196
    .local v6, "colorPopulation":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .end local v6    # "colorPopulation":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "vbox":Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;
    :cond_2
    move-object p1, v9

    .line 198
    goto :goto_0
.end method

.method private static rgbToHsl(III[F)V
    .locals 12
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "hsl"    # [F

    .prologue
    .line 334
    int-to-float v9, p0

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v7, v9, v10

    .line 335
    .local v7, "rf":F
    int-to-float v9, p1

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v2, v9, v10

    .line 336
    .local v2, "gf":F
    int-to-float v9, p2

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v0, v9, v10

    .line 338
    .local v0, "bf":F
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 339
    .local v5, "max":F
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 340
    .local v6, "min":F
    sub-float v1, v5, v6

    .line 343
    .local v1, "deltaMaxMin":F
    add-float v9, v5, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float v4, v9, v10

    .line 345
    .local v4, "l":F
    cmpl-float v9, v5, v6

    if-nez v9, :cond_0

    .line 347
    const/4 v8, 0x0

    .local v8, "s":F
    move v3, v8

    .line 360
    .local v3, "h":F
    :goto_0
    const/4 v9, 0x0

    const/high16 v10, 0x42700000    # 60.0f

    mul-float/2addr v10, v3

    const/high16 v11, 0x43b40000    # 360.0f

    rem-float/2addr v10, v11

    aput v10, p3, v9

    .line 361
    const/4 v9, 0x1

    aput v8, p3, v9

    .line 362
    const/4 v9, 0x2

    aput v4, p3, v9

    .line 363
    return-void

    .line 349
    .end local v3    # "h":F
    .end local v8    # "s":F
    :cond_0
    cmpl-float v9, v5, v7

    if-nez v9, :cond_1

    .line 350
    sub-float v9, v2, v0

    div-float/2addr v9, v1

    const/high16 v10, 0x40c00000    # 6.0f

    rem-float v3, v9, v10

    .line 357
    .restart local v3    # "h":F
    :goto_1
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    div-float v8, v1, v9

    .restart local v8    # "s":F
    goto :goto_0

    .line 351
    .end local v3    # "h":F
    .end local v8    # "s":F
    :cond_1
    cmpl-float v9, v5, v2

    if-nez v9, :cond_2

    .line 352
    sub-float v9, v0, v7

    div-float/2addr v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    add-float v3, v9, v10

    .restart local v3    # "h":F
    goto :goto_1

    .line 354
    .end local v3    # "h":F
    :cond_2
    sub-float v9, v7, v2

    div-float/2addr v9, v1

    const/high16 v10, 0x40800000    # 4.0f

    add-float v3, v9, v10

    .restart local v3    # "h":F
    goto :goto_1
.end method

.method private shouldIgnoreColor(I)Z
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 275
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->hsl:[F

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/wearable/app/VibrantColorExtractor;->rgbToHsl(III[F)V

    .line 276
    iget-object v0, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->hsl:[F

    invoke-static {v0}, Lcom/google/android/wearable/app/VibrantColorExtractor;->shouldIgnoreColor([F)Z

    move-result v0

    return v0
.end method

.method private static shouldIgnoreColor([F)Z
    .locals 1
    .param p0, "hslColor"    # [F

    .prologue
    .line 280
    invoke-static {p0}, Lcom/google/android/wearable/app/VibrantColorExtractor;->isWhite([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/wearable/app/VibrantColorExtractor;->isBlack([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/wearable/app/VibrantColorExtractor;->isNearRedILine([F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private splitBoxes(Ljava/util/PriorityQueue;I)V
    .locals 2
    .param p2, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-ge v1, p2, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;

    .line 212
    .local v0, "vbox":Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;->splitBox()Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .end local v0    # "vbox":Lcom/google/android/wearable/app/VibrantColorExtractor$Vbox;
    :cond_0
    return-void
.end method

.method private static varargs weightedMean([F)F
    .locals 6
    .param p0, "values"    # [F

    .prologue
    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "sum":F
    const/4 v2, 0x0

    .line 321
    .local v2, "sumWeight":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 322
    aget v3, p0, v0

    .line 323
    .local v3, "value":F
    add-int/lit8 v5, v0, 0x1

    aget v4, p0, v5

    .line 325
    .local v4, "weight":F
    mul-float v5, v3, v4

    add-float/2addr v1, v5

    .line 326
    add-float/2addr v2, v4

    .line 321
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 329
    .end local v3    # "value":F
    .end local v4    # "weight":F
    :cond_0
    div-float v5, v1, v2

    return v5
.end method


# virtual methods
.method public getVibrantColor()I
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/wearable/app/VibrantColorExtractor;->hasVibrantColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget v0, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->vibrantColor:I

    .line 99
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/wearable/app/VibrantColorExtractor;->defaultColor:I

    goto :goto_0
.end method
