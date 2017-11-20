.class final Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
.super Ljava/lang/Object;
.source "DynamicSizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/DynamicSizeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizingCacheKey"
.end annotation


# instance fields
.field final hashCode:I

.field final height:I

.field final isForcedToSmallestSize:Z

.field final text:Ljava/lang/String;

.field final width:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;IIZ)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "isForcedToSmallestSize"    # Z

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->text:Ljava/lang/String;

    .line 200
    iput p2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->width:I

    .line 201
    iput p3, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->height:I

    .line 202
    iput-boolean p4, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->isForcedToSmallestSize:Z

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 205
    .local v0, "h":I
    mul-int/lit8 v1, v0, 0x1f

    xor-int v0, v1, p2

    .line 206
    mul-int/lit8 v1, v0, 0x1f

    xor-int v0, v1, p3

    .line 207
    mul-int/lit8 v2, v0, 0x1f

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    :goto_0
    xor-int v0, v2, v1

    .line 208
    iput v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->hashCode:I

    .line 209
    return-void

    .line 207
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 218
    if-nez p1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    instance-of v2, p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;

    .line 223
    .local v0, "ck":Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;
    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->hashCode:I

    iget v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->hashCode:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->text:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->text:Ljava/lang/String;

    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->width:I

    iget v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->height:I

    iget v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->height:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->isForcedToSmallestSize:Z

    iget-boolean v3, v0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->isForcedToSmallestSize:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingCacheKey;->hashCode:I

    return v0
.end method
