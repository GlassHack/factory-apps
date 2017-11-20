.class final Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
.super Ljava/lang/Object;
.source "DynamicSizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/DynamicSizeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizingResult"
.end annotation


# instance fields
.field final baselineShift:F

.field final lineSpacingExtra:F

.field final numLines:I

.field final textEnd:I

.field final textSize:F

.field final typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(FLandroid/graphics/Typeface;IIFF)V
    .locals 0
    .param p1, "textSize"    # F
    .param p2, "typeface"    # Landroid/graphics/Typeface;
    .param p3, "numLines"    # I
    .param p4, "textEnd"    # I
    .param p5, "lineSpacingExtra"    # F
    .param p6, "baselineShift"    # F

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p1, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textSize:F

    .line 255
    iput-object p2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->typeface:Landroid/graphics/Typeface;

    .line 256
    iput p3, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->numLines:I

    .line 257
    iput p4, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textEnd:I

    .line 258
    iput p5, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->lineSpacingExtra:F

    .line 259
    iput p6, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->baselineShift:F

    .line 260
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 264
    iget v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textSize:F

    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->typeface:Landroid/graphics/Typeface;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->numLines:I

    iget v3, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->textEnd:I

    iget v4, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->lineSpacingExtra:F

    iget v5, p0, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;->baselineShift:F

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x9e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "SizingResult [textSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", typeface="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lineSpacingExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baselineShift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
