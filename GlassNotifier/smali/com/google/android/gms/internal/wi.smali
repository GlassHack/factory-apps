.class public final Lcom/google/android/gms/internal/wi;
.super Lcom/google/android/gms/internal/xn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/xn",
        "<",
        "Lcom/google/android/gms/internal/wi;",
        ">;"
    }
.end annotation


# instance fields
.field public aTq:[[B

.field public aTr:Lcom/google/android/gms/internal/wj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wi;->vn()Lcom/google/android/gms/internal/wi;

    return-void
.end method


# virtual methods
.method public L(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/wi;
    .locals 4
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wi;->a(Lcom/google/android/gms/internal/xl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/xw;->b(Lcom/google/android/gms/internal/xl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vU()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/wj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method protected c()I
    .locals 5

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/xn;->c()I

    move-result v3

    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    array-length v4, v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/xm;->w([B)I

    move-result v4

    add-int/2addr v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, v3, v1

    mul-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0

    :cond_3
    move v0, v3

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
    instance-of v1, p1, Lcom/google/android/gms/internal/wi;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/wi;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    iget-object v2, p1, Lcom/google/android/gms/internal/wi;->aTq:[[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xr;->a([[B[[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wi;->a(Lcom/google/android/gms/internal/xn;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    iget-object v2, p1, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    invoke-static {v0}, Lcom/google/android/gms/internal/xr;->a([[B)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wi;->wl()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wj;->hashCode()I

    move-result v0

    goto :goto_0
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wi;->L(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/wi;

    move-result-object v0

    return-object v0
.end method

.method public vn()Lcom/google/android/gms/internal/wi;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/xw;->aZl:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    iput-object v1, p0, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    iput-object v1, p0, Lcom/google/android/gms/internal/wi;->aYT:Lcom/google/android/gms/internal/xp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/wi;->aZe:I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->aTq:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/xm;->a(I[B)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->aTr:Lcom/google/android/gms/internal/wj;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/xn;->writeTo(Lcom/google/android/gms/internal/xm;)V

    return-void
.end method
