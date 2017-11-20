.class public final Lcom/google/android/gms/internal/c$a;
.super Lcom/google/android/gms/internal/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gy",
        "<",
        "Lcom/google/android/gms/internal/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public eT:I

.field public eU:I

.field public level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gy;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$a;->a()Lcom/google/android/gms/internal/c$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/c$a;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    iput v1, p0, Lcom/google/android/gms/internal/c$a;->eT:I

    iput v1, p0, Lcom/google/android/gms/internal/c$a;->eU:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->XC:Lcom/google/android/gms/internal/ha;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->XN:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iI()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/internal/gw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iL()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iL()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->eT:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iL()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->eU:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected b()I
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/android/gms/internal/gy;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->level:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->level:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/gx;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eT:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eT:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eU:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eU:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
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
    instance-of v1, p1, Lcom/google/android/gms/internal/c$a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/c$a;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->level:I

    iget v2, p1, Lcom/google/android/gms/internal/c$a;->level:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eT:I

    iget v2, p1, Lcom/google/android/gms/internal/c$a;->eT:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eU:I

    iget v2, p1, Lcom/google/android/gms/internal/c$a;->eU:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/internal/gy;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eT:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eU:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$a;->iY()I

    move-result v1

    add-int/2addr v0, v1

    return v0
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/c$a;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/gx;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/gms/internal/gx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/gx;->h(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->eT:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eT:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->h(II)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->eU:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eU:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->h(II)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gy;->writeTo(Lcom/google/android/gms/internal/gx;)V

    return-void
.end method
