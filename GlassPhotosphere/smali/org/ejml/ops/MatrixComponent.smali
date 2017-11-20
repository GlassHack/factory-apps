.class public Lorg/ejml/ops/MatrixComponent;
.super Ljavax/swing/JPanel;


# instance fields
.field image:Ljava/awt/image/BufferedImage;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/ops/MatrixComponent;->image:Ljava/awt/image/BufferedImage;

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p1, p2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/ejml/ops/MatrixComponent;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p1, p2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/ejml/ops/MatrixComponent;->setMinimumSize(Ljava/awt/Dimension;)V

    return-void
.end method

.method public static renderMatrix(Lorg/ejml/data/D1Matrix64F;Ljava/awt/image/BufferedImage;D)V
    .locals 12

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numCols:I

    int-to-double v0, v0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    int-to-double v4, v4

    div-double v4, v0, v4

    iget v0, p0, Lorg/ejml/data/D1Matrix64F;->numRows:I

    int-to-double v0, v0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double v6, v0, v6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    int-to-double v8, v1

    mul-double/2addr v8, v6

    double-to-int v8, v8

    int-to-double v9, v0

    mul-double/2addr v9, v4

    double-to-int v9, v9

    invoke-virtual {p0, v8, v9}, Lorg/ejml/data/D1Matrix64F;->get(II)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-nez v10, :cond_0

    const/high16 v8, -0x1000000

    invoke-virtual {p1, v0, v1, v8}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-lez v10, :cond_1

    const-wide v10, 0x406fe00000000000L    # 255.0

    div-double/2addr v8, p2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    rsub-int v8, v8, 0xff

    const/high16 v9, -0x10000

    shl-int/lit8 v10, v8, 0x8

    or-int/2addr v9, v10

    or-int/2addr v8, v9

    invoke-virtual {p1, v0, v1, v8}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    goto :goto_2

    :cond_1
    const-wide v10, 0x406fe00000000000L    # 255.0

    div-double/2addr v8, p2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/lit16 v8, v8, 0xff

    const/high16 v9, -0x1000000

    shl-int/lit8 v10, v8, 0x10

    or-int/2addr v9, v10

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v9

    or-int/lit16 v8, v8, 0xff

    invoke-virtual {p1, v0, v1, v8}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized paint(Ljava/awt/Graphics;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/ejml/ops/MatrixComponent;->image:Ljava/awt/image/BufferedImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMatrix(Lorg/ejml/data/D1Matrix64F;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/ejml/ops/CommonOps;->elementMaxAbs(Lorg/ejml/data/D1Matrix64F;)D

    move-result-wide v0

    iget-object v2, p0, Lorg/ejml/ops/MatrixComponent;->image:Ljava/awt/image/BufferedImage;

    invoke-static {p1, v2, v0, v1}, Lorg/ejml/ops/MatrixComponent;->renderMatrix(Lorg/ejml/data/D1Matrix64F;Ljava/awt/image/BufferedImage;D)V

    invoke-virtual {p0}, Lorg/ejml/ops/MatrixComponent;->repaint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
