.class public final Lcom/google/android/gms/internal/gu$a$a;
.super Lcom/google/android/gms/internal/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gu$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gu$a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gy",
        "<",
        "Lcom/google/android/gms/internal/gu$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile WZ:[Lcom/google/android/gms/internal/gu$a$a;


# instance fields
.field public Xa:Lcom/google/android/gms/internal/gu$a$a$a;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gy;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu$a$a;->iG()Lcom/google/android/gms/internal/gu$a$a;

    return-void
.end method

.method public static iF()[Lcom/google/android/gms/internal/gu$a$a;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/gu$a$a;->WZ:[Lcom/google/android/gms/internal/gu$a$a;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/hc;->XM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/gu$a$a;->WZ:[Lcom/google/android/gms/internal/gu$a$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/gu$a$a;

    sput-object v0, Lcom/google/android/gms/internal/gu$a$a;->WZ:[Lcom/google/android/gms/internal/gu$a$a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/gu$a$a;->WZ:[Lcom/google/android/gms/internal/gu$a$a;

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
.method protected b()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/gy;->b()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/gu$a$a;->type:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->c(ILcom/google/android/gms/internal/he;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
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
    instance-of v1, p1, Lcom/google/android/gms/internal/gu$a$a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/gu$a$a;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/internal/gu$a$a;->type:I

    iget v2, p1, Lcom/google/android/gms/internal/gu$a$a;->type:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gu$a$a;->a(Lcom/google/android/gms/internal/gy;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    iget-object v2, p1, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gu$a$a$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/gu$a$a;->type:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gu$a$a;->iY()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gu$a$a$a;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public iG()Lcom/google/android/gms/internal/gu$a$a;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gu$a$a;->type:I

    iput-object v1, p0, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    iput-object v1, p0, Lcom/google/android/gms/internal/gu$a$a;->XC:Lcom/google/android/gms/internal/ha;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gu$a$a;->XN:I

    return-object p0
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gu$a$a;->o(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/gu$a$a;

    move-result-object v0

    return-object v0
.end method

.method public o(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/gu$a$a;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gu$a$a;->a(Lcom/google/android/gms/internal/gw;I)Z

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
    iput v0, p0, Lcom/google/android/gms/internal/gu$a$a;->type:I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/gu$a$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gu$a$a$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/he;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/gu$a$a;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->h(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/gu$a$a;->Xa:Lcom/google/android/gms/internal/gu$a$a$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->a(ILcom/google/android/gms/internal/he;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gy;->writeTo(Lcom/google/android/gms/internal/gx;)V

    return-void
.end method
