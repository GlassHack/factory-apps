.class public Lorg/ejml/alg/dense/mult/SubmatrixOps;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSubMatrix(Lorg/ejml/data/RowD1Matrix64F;Lorg/ejml/data/RowD1Matrix64F;IIIIII)V
    .locals 7

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p6, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, p7, :cond_0

    add-int v3, v2, p2

    add-int v4, v0, p3

    invoke-virtual {p0, v3, v4}, Lorg/ejml/data/RowD1Matrix64F;->get(II)D

    move-result-wide v3

    add-int v5, v2, p4

    add-int v6, v0, p5

    invoke-virtual {p1, v5, v6, v3, v4}, Lorg/ejml/data/RowD1Matrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method
