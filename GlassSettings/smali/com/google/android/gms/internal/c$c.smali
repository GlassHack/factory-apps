.class public final Lcom/google/android/gms/internal/c$c;
.super Lcom/google/android/gms/internal/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gy",
        "<",
        "Lcom/google/android/gms/internal/c$c;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile fa:[Lcom/google/android/gms/internal/c$c;


# instance fields
.field public fb:J

.field public fc:J

.field public fd:Z

.field public fe:J

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gy;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$c;->f()Lcom/google/android/gms/internal/c$c;

    return-void
.end method

.method public static e()[Lcom/google/android/gms/internal/c$c;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/c$c;->fa:[Lcom/google/android/gms/internal/c$c;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/hc;->XM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/c$c;->fa:[Lcom/google/android/gms/internal/c$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/c$c;

    sput-object v0, Lcom/google/android/gms/internal/c$c;->fa:[Lcom/google/android/gms/internal/c$c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/c$c;->fa:[Lcom/google/android/gms/internal/c$c;

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
    .locals 7

    const-wide/16 v5, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/gy;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->d(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fb:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->fb:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gx;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fc:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->fc:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gx;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$c;->fd:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$c;->fd:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fe:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->fe:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gx;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public c(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/c$c;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$c;->a(Lcom/google/android/gms/internal/gw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->key:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iK()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->fb:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iK()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->fc:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iM()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->fd:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iK()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->fe:J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
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
    instance-of v1, p1, Lcom/google/android/gms/internal/c$c;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/c$c;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->key:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/c$c;->key:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fb:J

    iget-wide v3, p1, Lcom/google/android/gms/internal/c$c;->fb:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fc:J

    iget-wide v3, p1, Lcom/google/android/gms/internal/c$c;->fc:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$c;->fd:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/c$c;->fd:Z

    if-ne v1, v2, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fe:J

    iget-wide v3, p1, Lcom/google/android/gms/internal/c$c;->fe:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$c;->a(Lcom/google/android/gms/internal/gy;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/c$c;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public f()Lcom/google/android/gms/internal/c$c;
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->key:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/c$c;->fb:J

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->fc:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->fd:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/c$c;->fe:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->XC:Lcom/google/android/gms/internal/ha;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$c;->XN:I

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    const/16 v5, 0x20

    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fb:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/c$c;->fb:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fc:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/c$c;->fc:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->fd:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fe:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/c$c;->fe:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$c;->iY()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$c;->c(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/c$c;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/gx;)V
    .locals 6
    .param p1, "output"    # Lcom/google/android/gms/internal/gx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->b(ILjava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->fb:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fb:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/gx;->b(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->fc:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fc:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/gx;->b(IJ)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->fd:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$c;->fd:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->a(IZ)V

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->fe:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->fe:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/gx;->b(IJ)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gy;->writeTo(Lcom/google/android/gms/internal/gx;)V

    return-void
.end method
