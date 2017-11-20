.class final Lcom/google/common/collect/df;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/google/common/collect/df;->a:I

    return-void
.end method

.method static a(I)I
    .locals 3

    .prologue
    .line 45
    const v0, 0x1b873593

    const v1, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, p0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method static a(ID)I
    .locals 5

    .prologue
    .line 53
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 56
    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    cmpl-double v1, v1, p1

    if-lez v1, :cond_0

    .line 57
    shl-int/lit8 v0, v0, 0x1

    .line 58
    if-lez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    sget v0, Lcom/google/common/collect/df;->a:I

    goto :goto_0
.end method

.method static a(IID)Z
    .locals 4

    .prologue
    .line 64
    int-to-double v0, p0

    int-to-double v2, p1

    mul-double/2addr v2, p2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    sget v0, Lcom/google/common/collect/df;->a:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
