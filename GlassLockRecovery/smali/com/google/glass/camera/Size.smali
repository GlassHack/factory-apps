.class public Lcom/google/glass/camera/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/glass/camera/Size;->width:I

    .line 16
    iput p2, p0, Lcom/google/glass/camera/Size;->height:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .locals 2
    .param p1, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 24
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p0, v0, v1}, Lcom/google/glass/camera/Size;-><init>(II)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/camera/Size;)V
    .locals 2
    .param p1, "size"    # Lcom/google/glass/camera/Size;

    .prologue
    .line 20
    iget v0, p1, Lcom/google/glass/camera/Size;->width:I

    iget v1, p1, Lcom/google/glass/camera/Size;->height:I

    invoke-direct {p0, v0, v1}, Lcom/google/glass/camera/Size;-><init>(II)V

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 29
    instance-of v2, p1, Lcom/google/glass/camera/Size;

    if-nez v2, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 32
    check-cast v0, Lcom/google/glass/camera/Size;

    .line 33
    .local v0, "size":Lcom/google/glass/camera/Size;
    iget v2, p0, Lcom/google/glass/camera/Size;->width:I

    iget v3, v0, Lcom/google/glass/camera/Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/glass/camera/Size;->height:I

    iget v3, v0, Lcom/google/glass/camera/Size;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/google/glass/camera/Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/google/glass/camera/Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    iget v0, p0, Lcom/google/glass/camera/Size;->width:I

    iget v1, p0, Lcom/google/glass/camera/Size;->height:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
