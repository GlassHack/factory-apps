.class public final Lcom/google/android/gms/internal/wl;
.super Lcom/google/android/gms/internal/xn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/wl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/xn",
        "<",
        "Lcom/google/android/gms/internal/wl;",
        ">;"
    }
.end annotation


# instance fields
.field public aSm:Lcom/google/android/gms/internal/vs;

.field public aTy:Lcom/google/android/gms/internal/wl$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wl;->vr()Lcom/google/android/gms/internal/wl;

    return-void
.end method


# virtual methods
.method public P(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/wl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vU()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wl;->a(Lcom/google/android/gms/internal/xl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/wl$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wl$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/vs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method protected c()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/xn;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
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
    instance-of v1, p1, Lcom/google/android/gms/internal/wl;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/wl;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wl;->a(Lcom/google/android/gms/internal/xn;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    iget-object v2, p1, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/vs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    iget-object v2, p1, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wl$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wl;->wl()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vs;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wl$a;->hashCode()I

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wl;->P(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    return-object v0
.end method

.method public vr()Lcom/google/android/gms/internal/wl;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    iput-object v0, p0, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    iput-object v0, p0, Lcom/google/android/gms/internal/wl;->aYT:Lcom/google/android/gms/internal/xp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/wl;->aZe:I

    return-object p0
.end method

.method public writeTo(Lcom/google/android/gms/internal/xm;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/gms/internal/xm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/wl;->aTy:Lcom/google/android/gms/internal/wl$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/wl;->aSm:Lcom/google/android/gms/internal/vs;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/xn;->writeTo(Lcom/google/android/gms/internal/xm;)V

    return-void
.end method
