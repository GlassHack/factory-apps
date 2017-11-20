.class public final Lcom/google/android/gms/internal/vx;
.super Lcom/google/android/gms/internal/xn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/xn",
        "<",
        "Lcom/google/android/gms/internal/vx;",
        ">;"
    }
.end annotation


# instance fields
.field public aSF:Z

.field public aSm:Lcom/google/android/gms/internal/vs;

.field public aSn:[I

.field public aSp:Lcom/google/android/gms/internal/wj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vx;->uT()Lcom/google/android/gms/internal/vx;

    return-void
.end method


# virtual methods
.method protected c()I
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/xn;->c()I

    move-result v2

    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/xm;->ms(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int v0, v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vx;->aSF:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/vx;->aSF:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/vx;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/vx;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    if-nez v1, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vx;->aSF:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/vx;->aSF:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    iget-object v2, p1, Lcom/google/android/gms/internal/vx;->aSn:[I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xr;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vx;->a(Lcom/google/android/gms/internal/xn;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    iget-object v2, p1, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/vs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    iget-object v2, p1, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vx;->aSF:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/xr;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vx;->wl()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vs;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wj;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/xt;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/internal/xl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vx;->x(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/vx;

    move-result-object v0

    return-object v0
.end method

.method public uT()Lcom/google/android/gms/internal/vx;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vx;->aSF:Z

    sget-object v0, Lcom/google/android/gms/internal/xw;->aZf:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    iput-object v1, p0, Lcom/google/android/gms/internal/vx;->aYT:Lcom/google/android/gms/internal/xp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/vx;->aZe:I

    return-object p0
.end method

.method public writeTo(Lcom/google/android/gms/internal/xm;)V
    .locals 3
    .param p1, "output"    # Lcom/google/android/gms/internal/xm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/xm;->D(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vx;->aSF:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/vx;->aSF:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->b(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/xn;->writeTo(Lcom/google/android/gms/internal/xm;)V

    return-void
.end method

.method public x(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/vx;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vU()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vx;->a(Lcom/google/android/gms/internal/xl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/xw;->b(Lcom/google/android/gms/internal/xl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vX()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vU()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vX()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->wb()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->ml(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->getPosition()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->wg()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/xl;->mn(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    if-nez v2, :cond_6

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vX()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    array-length v2, v2

    goto :goto_4

    :cond_7
    iput-object v0, p0, Lcom/google/android/gms/internal/vx;->aSn:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/xl;->mm(I)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/wj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vx;->aSp:Lcom/google/android/gms/internal/wj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vY()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vx;->aSF:Z

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/vs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/vx;->aSm:Lcom/google/android/gms/internal/vs;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0x22 -> :sswitch_5
    .end sparse-switch
.end method
