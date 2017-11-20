.class public Lorg/ejml/data/Complex64F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public imaginary:D

.field public real:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/ejml/data/Complex64F;->real:D

    iput-wide p3, p0, Lorg/ejml/data/Complex64F;->imaginary:D

    return-void
.end method


# virtual methods
.method public getImaginary()D
    .locals 2

    iget-wide v0, p0, Lorg/ejml/data/Complex64F;->imaginary:D

    return-wide v0
.end method

.method public getMagnitude()D
    .locals 6

    iget-wide v0, p0, Lorg/ejml/data/Complex64F;->real:D

    iget-wide v2, p0, Lorg/ejml/data/Complex64F;->real:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/Complex64F;->imaginary:D

    iget-wide v4, p0, Lorg/ejml/data/Complex64F;->imaginary:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMagnitude2()D
    .locals 6

    iget-wide v0, p0, Lorg/ejml/data/Complex64F;->real:D

    iget-wide v2, p0, Lorg/ejml/data/Complex64F;->real:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/Complex64F;->imaginary:D

    iget-wide v4, p0, Lorg/ejml/data/Complex64F;->imaginary:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getReal()D
    .locals 2

    iget-wide v0, p0, Lorg/ejml/data/Complex64F;->real:D

    return-wide v0
.end method

.method public isReal()Z
    .locals 4

    iget-wide v0, p0, Lorg/ejml/data/Complex64F;->imaginary:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(DD)V
    .locals 0

    iput-wide p1, p0, Lorg/ejml/data/Complex64F;->real:D

    iput-wide p3, p0, Lorg/ejml/data/Complex64F;->imaginary:D

    return-void
.end method

.method public setImaginary(D)V
    .locals 0

    iput-wide p1, p0, Lorg/ejml/data/Complex64F;->imaginary:D

    return-void
.end method

.method public setReal(D)V
    .locals 0

    iput-wide p1, p0, Lorg/ejml/data/Complex64F;->real:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lorg/ejml/data/Complex64F;->imaginary:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/ejml/data/Complex64F;->real:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/ejml/data/Complex64F;->real:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/ejml/data/Complex64F;->imaginary:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
