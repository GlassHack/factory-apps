.class final Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final alignment:Landroid/text/Layout$Alignment;

.field final baselinePosition:F

.field final hashCode:I

.field final textSizePx:F

.field final textViewLineSpacingExtra:F

.field final typeface:Landroid/graphics/Typeface;

.field final width:I


# direct methods
.method constructor <init>(IFLandroid/graphics/Typeface;Landroid/text/Layout$Alignment;FF)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->width:I

    .line 135
    iput p2, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textSizePx:F

    .line 136
    iput-object p3, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->typeface:Landroid/graphics/Typeface;

    .line 137
    iput-object p4, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->alignment:Landroid/text/Layout$Alignment;

    .line 138
    iput p5, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingExtra:F

    .line 139
    iput p6, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->baselinePosition:F

    .line 143
    mul-int/lit8 v0, p1, 0x1f

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 144
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p3}, Landroid/graphics/Typeface;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p4}, Landroid/text/Layout$Alignment;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 146
    mul-int/lit8 v0, v0, 0x1f

    invoke-static {p5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 147
    mul-int/lit8 v0, v0, 0x1f

    invoke-static {p6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 148
    iput v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->hashCode:I

    .line 149
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 158
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    instance-of v1, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;

    if-eqz v1, :cond_0

    .line 162
    check-cast p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;

    .line 163
    iget v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->hashCode:I

    iget v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->hashCode:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->width:I

    iget v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textSizePx:F

    iget v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textSizePx:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->typeface:Landroid/graphics/Typeface;

    iget-object v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->typeface:Landroid/graphics/Typeface;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->alignment:Landroid/text/Layout$Alignment;

    iget-object v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->alignment:Landroid/text/Layout$Alignment;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingExtra:F

    iget v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->textViewLineSpacingExtra:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->baselinePosition:F

    iget v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->baselinePosition:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$LayoutCacheKey;->hashCode:I

    return v0
.end method
