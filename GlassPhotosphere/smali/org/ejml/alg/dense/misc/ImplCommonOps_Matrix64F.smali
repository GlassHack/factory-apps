.class public Lorg/ejml/alg/dense/misc/ImplCommonOps_Matrix64F;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Lorg/ejml/data/Matrix64F;IILorg/ejml/data/Matrix64F;IIII)V
    .locals 7

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p6, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, p7, :cond_0

    add-int v3, v2, p1

    add-int v4, v0, p2

    invoke-virtual {p0, v3, v4}, Lorg/ejml/data/Matrix64F;->get(II)D

    move-result-wide v3

    add-int v5, p4, v2

    add-int v6, p5, v0

    invoke-virtual {p3, v5, v6, v3, v4}, Lorg/ejml/data/Matrix64F;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method
