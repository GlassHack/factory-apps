.class public final Lcom/google/android/gms/internal/vu;
.super Lcom/google/android/gms/internal/xn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/xn",
        "<",
        "Lcom/google/android/gms/internal/vu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile aSg:[Lcom/google/android/gms/internal/vu;


# instance fields
.field public aSh:Lcom/google/android/gms/internal/wh;

.field public aSi:Lcom/google/android/gms/internal/wb;

.field public aSj:Ljava/lang/String;

.field public aSk:Z

.field public aSl:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vu;->uQ()Lcom/google/android/gms/internal/vu;

    return-void
.end method

.method public static uP()[Lcom/google/android/gms/internal/vu;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/vu;->aSg:[Lcom/google/android/gms/internal/vu;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/xr;->aZd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/vu;->aSg:[Lcom/google/android/gms/internal/vu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/vu;

    sput-object v0, Lcom/google/android/gms/internal/vu;->aSg:[Lcom/google/android/gms/internal/vu;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/vu;->aSg:[Lcom/google/android/gms/internal/vu;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected c()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/xn;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSj:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/vu;->aSj:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/vu;->aSl:I

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/vu;->aSl:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->F(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vu;->aSk:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/vu;->aSk:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(IZ)I

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
    instance-of v1, p1, Lcom/google/android/gms/internal/vu;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/vu;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSj:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/vu;->aSj:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vu;->aSk:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/vu;->aSk:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/vu;->aSl:I

    iget v2, p1, Lcom/google/android/gms/internal/vu;->aSl:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vu;->a(Lcom/google/android/gms/internal/xn;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    iget-object v2, p1, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    iget-object v2, p1, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSj:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/vu;->aSj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/vu;->aSj:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vu;->aSk:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/vu;->aSl:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vu;->wl()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSj:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    const/16 v0, 0x4d5

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vu;->u(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/vu;

    move-result-object v0

    return-object v0
.end method

.method public u(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/vu;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vu;->a(Lcom/google/android/gms/internal/xl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/wh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/wb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vu;->aSj:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vX()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/vu;->aSl:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vY()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vu;->aSk:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public uQ()Lcom/google/android/gms/internal/vu;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    iput-object v1, p0, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/vu;->aSj:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/vu;->aSk:Z

    iput v2, p0, Lcom/google/android/gms/internal/vu;->aSl:I

    iput-object v1, p0, Lcom/google/android/gms/internal/vu;->aYT:Lcom/google/android/gms/internal/xp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/vu;->aZe:I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSh:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSi:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->aSj:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->aSj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->b(ILjava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/vu;->aSl:I

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/internal/vu;->aSl:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->D(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vu;->aSk:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/vu;->aSk:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->b(IZ)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/xn;->writeTo(Lcom/google/android/gms/internal/xm;)V

    return-void
.end method
