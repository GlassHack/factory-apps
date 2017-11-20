.class public final Lcom/google/android/gms/internal/we;
.super Lcom/google/android/gms/internal/xn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/xn",
        "<",
        "Lcom/google/android/gms/internal/we;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile aTg:[Lcom/google/android/gms/internal/we;


# instance fields
.field public aTh:I

.field public aTi:I

.field public aTj:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/we;->vg()Lcom/google/android/gms/internal/we;

    return-void
.end method

.method public static vf()[Lcom/google/android/gms/internal/we;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/we;->aTg:[Lcom/google/android/gms/internal/we;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/xr;->aZd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/we;->aTg:[Lcom/google/android/gms/internal/we;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/we;

    sput-object v0, Lcom/google/android/gms/internal/we;->aTg:[Lcom/google/android/gms/internal/we;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/we;->aTg:[Lcom/google/android/gms/internal/we;

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
.method public H(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/we;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/we;->a(Lcom/google/android/gms/internal/xl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vX()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/we;->aTh:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vX()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/we;->aTi:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vX()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/android/gms/internal/we;->aTj:I

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
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected c()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/xn;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/we;->aTh:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/we;->aTh:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->F(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/we;->aTi:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/we;->aTi:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->F(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/we;->aTj:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/we;->aTj:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->F(II)I

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
    instance-of v1, p1, Lcom/google/android/gms/internal/we;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/we;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/internal/we;->aTh:I

    iget v2, p1, Lcom/google/android/gms/internal/we;->aTh:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/we;->aTi:I

    iget v2, p1, Lcom/google/android/gms/internal/we;->aTi:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/we;->aTj:I

    iget v2, p1, Lcom/google/android/gms/internal/we;->aTj:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/we;->a(Lcom/google/android/gms/internal/xn;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/we;->aTh:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/we;->aTi:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/we;->aTj:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/we;->wl()I

    move-result v1

    add-int/2addr v0, v1

    return v0
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/we;->H(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/we;

    move-result-object v0

    return-object v0
.end method

.method public vg()Lcom/google/android/gms/internal/we;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/we;->aTh:I

    iput v0, p0, Lcom/google/android/gms/internal/we;->aTi:I

    iput v0, p0, Lcom/google/android/gms/internal/we;->aTj:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/we;->aYT:Lcom/google/android/gms/internal/xp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/we;->aZe:I

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
    iget v0, p0, Lcom/google/android/gms/internal/we;->aTh:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/we;->aTh:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->D(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/we;->aTi:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/we;->aTi:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->D(II)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/we;->aTj:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/we;->aTj:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->D(II)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/xn;->writeTo(Lcom/google/android/gms/internal/xm;)V

    return-void
.end method
