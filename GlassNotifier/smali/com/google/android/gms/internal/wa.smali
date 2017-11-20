.class public final Lcom/google/android/gms/internal/wa;
.super Lcom/google/android/gms/internal/xn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/wa$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/xn",
        "<",
        "Lcom/google/android/gms/internal/wa;",
        ">;"
    }
.end annotation


# instance fields
.field public aSI:[Lcom/google/android/gms/internal/we;

.field public aSJ:Lcom/google/android/gms/internal/wa$a;

.field public aSq:Lcom/google/android/gms/internal/vt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wa;->uW()Lcom/google/android/gms/internal/wa;

    return-void
.end method


# virtual methods
.method public A(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/wa;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wa;->a(Lcom/google/android/gms/internal/xl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/xw;->b(Lcom/google/android/gms/internal/xl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/we;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/we;

    invoke-direct {v3}, Lcom/google/android/gms/internal/we;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vU()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/we;

    invoke-direct {v3}, Lcom/google/android/gms/internal/we;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/vt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/wa$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wa$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method protected c()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/xn;->c()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    return v1
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
    instance-of v1, p1, Lcom/google/android/gms/internal/wa;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/wa;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    iget-object v2, p1, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wa;->a(Lcom/google/android/gms/internal/xn;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    iget-object v2, p1, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/vt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    iget-object v2, p1, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wa$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    invoke-static {v2}, Lcom/google/android/gms/internal/xr;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wa;->wl()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wa$a;->hashCode()I

    move-result v1

    goto :goto_1
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wa;->A(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/wa;

    move-result-object v0

    return-object v0
.end method

.method public uW()Lcom/google/android/gms/internal/wa;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    invoke-static {}, Lcom/google/android/gms/internal/we;->vf()[Lcom/google/android/gms/internal/we;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    iput-object v1, p0, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    iput-object v1, p0, Lcom/google/android/gms/internal/wa;->aYT:Lcom/google/android/gms/internal/xp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/wa;->aZe:I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->aSI:[Lcom/google/android/gms/internal/we;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->aSq:Lcom/google/android/gms/internal/vt;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/wa;->aSJ:Lcom/google/android/gms/internal/wa$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/xn;->writeTo(Lcom/google/android/gms/internal/xm;)V

    return-void
.end method
