.class public final Lcom/google/android/gms/internal/gn$a;
.super Lcom/google/android/gms/internal/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gy",
        "<",
        "Lcom/google/android/gms/internal/gn$a;",
        ">;"
    }
.end annotation


# instance fields
.field public Vm:J

.field public Vn:Lcom/google/android/gms/internal/c$j;

.field public fX:Lcom/google/android/gms/internal/c$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gy;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gn$a;->is()Lcom/google/android/gms/internal/gn$a;

    return-void
.end method

.method public static l([B)Lcom/google/android/gms/internal/gn$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/hd;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/gn$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gn$a;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/he;->mergeFrom(Lcom/google/android/gms/internal/he;[B)Lcom/google/android/gms/internal/he;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gn$a;

    return-object v0
.end method


# virtual methods
.method protected b()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/gy;->b()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/gn$a;->Vm:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gx;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->c(ILcom/google/android/gms/internal/he;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->c(ILcom/google/android/gms/internal/he;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
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
    instance-of v1, p1, Lcom/google/android/gms/internal/gn$a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/gn$a;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v1, p0, Lcom/google/android/gms/internal/gn$a;->Vm:J

    iget-wide v3, p1, Lcom/google/android/gms/internal/gn$a;->Vm:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gn$a;->a(Lcom/google/android/gms/internal/gy;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    iget-object v2, p1, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/c$f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    iget-object v2, p1, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/c$j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/gn$a;->Vm:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/gn$a;->Vm:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gn$a;->iY()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c$f;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/c$j;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public is()Lcom/google/android/gms/internal/gn$a;
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gn$a;->Vm:J

    iput-object v2, p0, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    iput-object v2, p0, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    iput-object v2, p0, Lcom/google/android/gms/internal/gn$a;->XC:Lcom/google/android/gms/internal/ha;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gn$a;->XN:I

    return-object p0
.end method

.method public l(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/gn$a;
    .locals 2
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gn$a;->a(Lcom/google/android/gms/internal/gw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iK()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gn$a;->Vm:J

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/c$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/he;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/c$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/he;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gn$a;->l(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/gn$a;

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
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/gn$a;->Vm:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/gx;->b(IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/gn$a;->fX:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->a(ILcom/google/android/gms/internal/he;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/gn$a;->Vn:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->a(ILcom/google/android/gms/internal/he;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gy;->writeTo(Lcom/google/android/gms/internal/gx;)V

    return-void
.end method
