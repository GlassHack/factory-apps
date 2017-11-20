.class final Lcom/google/c/c/it;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/google/c/c/it;->a:I

    return-void
.end method

.method static a(I)I
    .locals 3

    const v0, 0x1b873593

    const v1, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, p0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method static b(I)I
    .locals 6

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    int-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/google/c/c/it;->a:I

    goto :goto_0
.end method
