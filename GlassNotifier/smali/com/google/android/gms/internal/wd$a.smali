.class public final Lcom/google/android/gms/internal/wd$a;
.super Lcom/google/android/gms/internal/xn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/wd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/xn",
        "<",
        "Lcom/google/android/gms/internal/wd$a;",
        ">;"
    }
.end annotation


# instance fields
.field public aTa:Lcom/google/android/gms/internal/wh;

.field public aTb:Lcom/google/android/gms/internal/wh;

.field public aTc:I

.field public aTd:Lcom/google/android/gms/internal/wh;

.field public aTe:Lcom/google/android/gms/internal/wh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wd$a;->vc()Lcom/google/android/gms/internal/wd$a;

    return-void
.end method


# virtual methods
.method public F(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/wd$a;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wd$a;->a(Lcom/google/android/gms/internal/xl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/wh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/wh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/wh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/wh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vX()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/wd$a;->aTc:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method protected c()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/xn;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/wd$a;->aTc:I

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/wd$a;->aTc:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->F(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
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
    instance-of v1, p1, Lcom/google/android/gms/internal/wd$a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/wd$a;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_0

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/wd$a;->aTc:I

    iget v2, p1, Lcom/google/android/gms/internal/wd$a;->aTc:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wd$a;->a(Lcom/google/android/gms/internal/xn;)Z

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    iget-object v2, p1, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    iget-object v2, p1, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    iget-object v2, p1, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    iget-object v2, p1, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/wd$a;->aTc:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wd$a;->wl()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wh;->hashCode()I

    move-result v1

    goto :goto_3
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wd$a;->F(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/wd$a;

    move-result-object v0

    return-object v0
.end method

.method public vc()Lcom/google/android/gms/internal/wd$a;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    iput-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/wd$a;->aTc:I

    iput-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    iput-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    iput-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aYT:Lcom/google/android/gms/internal/xp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/wd$a;->aZe:I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTa:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTb:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTd:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/wd$a;->aTe:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/wd$a;->aTc:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/internal/wd$a;->aTc:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->D(II)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/xn;->writeTo(Lcom/google/android/gms/internal/xm;)V

    return-void
.end method
