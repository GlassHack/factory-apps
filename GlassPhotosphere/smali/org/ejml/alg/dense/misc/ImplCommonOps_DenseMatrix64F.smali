.class public Lorg/ejml/alg/dense/misc/ImplCommonOps_DenseMatrix64F;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Lorg/ejml/data/DenseMatrix64F;IILorg/ejml/data/DenseMatrix64F;IIII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p6, :cond_0

    add-int v1, v0, p1

    invoke-virtual {p0, v1, p2}, Lorg/ejml/data/DenseMatrix64F;->getIndex(II)I

    move-result v1

    add-int v2, v0, p4

    invoke-virtual {p3, v2, p5}, Lorg/ejml/data/DenseMatrix64F;->getIndex(II)I

    move-result v2

    iget-object v3, p0, Lorg/ejml/data/DenseMatrix64F;->data:[D

    iget-object v4, p3, Lorg/ejml/data/DenseMatrix64F;->data:[D

    invoke-static {v3, v1, v4, v2, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
