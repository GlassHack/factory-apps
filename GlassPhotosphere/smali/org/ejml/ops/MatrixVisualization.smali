.class public Lorg/ejml/ops/MatrixVisualization;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Lorg/ejml/data/D1Matrix64F;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x12c

    new-instance v2, Ljavax/swing/JFrame;

    invoke-direct {v2, p1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    iget v3, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    if-le v1, v3, :cond_0

    iget v1, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    mul-int/2addr v1, v0

    iget v3, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    div-int/2addr v1, v3

    :goto_0
    new-instance v3, Lorg/ejml/ops/MatrixComponent;

    invoke-direct {v3, v1, v0}, Lorg/ejml/ops/MatrixComponent;-><init>(II)V

    invoke-virtual {v3, p0}, Lorg/ejml/ops/MatrixComponent;->setMatrix(Lorg/ejml/data/D1Matrix64F;)V

    const-string v0, "Center"

    invoke-virtual {v2, v3, v0}, Ljavax/swing/JFrame;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljavax/swing/JFrame;->pack()V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljavax/swing/JFrame;->setVisible(Z)V

    return-void

    :cond_0
    iget v1, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    mul-int/2addr v1, v0

    iget v3, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    div-int/2addr v1, v3

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method
