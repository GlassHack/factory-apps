.class public final Lcom/google/android/gms/internal/gu;
.super Lcom/google/android/gms/internal/gy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gy",
        "<",
        "Lcom/google/android/gms/internal/gu;",
        ">;"
    }
.end annotation


# instance fields
.field public WW:[Lcom/google/android/gms/internal/gu$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gy;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu;->iC()Lcom/google/android/gms/internal/gu;

    return-void
.end method

.method public static n([B)Lcom/google/android/gms/internal/gu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/hd;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/gu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gu;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/he;->mergeFrom(Lcom/google/android/gms/internal/he;[B)Lcom/google/android/gms/internal/he;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gu;

    return-object v0
.end method


# virtual methods
.method protected b()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/gy;->b()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/gx;->c(ILcom/google/android/gms/internal/he;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
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
    instance-of v1, p1, Lcom/google/android/gms/internal/gu;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/gu;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    iget-object v2, p1, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gu;->a(Lcom/google/android/gms/internal/gy;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu;->iY()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public iC()Lcom/google/android/gms/internal/gu;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/gu$a;->iD()[Lcom/google/android/gms/internal/gu$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gu;->XC:Lcom/google/android/gms/internal/ha;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gu;->XN:I

    return-object p0
.end method

.method public m(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/gu;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iI()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gu;->a(Lcom/google/android/gms/internal/gw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hh;->b(Lcom/google/android/gms/internal/gw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/gu$a;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/gu$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/gu$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/he;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iI()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/gu$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/gu$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/he;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/he;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/internal/gw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gu;->m(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/gu;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/gx;)V
    .locals 3
    .param p1, "output"    # Lcom/google/android/gms/internal/gx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/gu;->WW:[Lcom/google/android/gms/internal/gu$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/gx;->a(ILcom/google/android/gms/internal/he;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gy;->writeTo(Lcom/google/android/gms/internal/gx;)V

    return-void
.end method
