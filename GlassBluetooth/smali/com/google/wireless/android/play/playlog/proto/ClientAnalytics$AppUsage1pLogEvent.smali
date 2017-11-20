.class public final Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;
.super Lcom/google/android/gms/internal/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppUsage1pLogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gy",
        "<",
        "Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile XY:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;


# instance fields
.field public androidPackageName:Ljava/lang/String;

.field public appType:I

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gy;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->clear()Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;
    .locals 2

    sget-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->XY:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/hc;->XM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->XY:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    sput-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->XY:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->XY:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/android/gms/internal/gw;)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/android/gms/internal/gw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    invoke-direct {v0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->mergeFrom(Lcom/google/android/gms/internal/gw;)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/hd;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    invoke-direct {v0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/he;->mergeFrom(Lcom/google/android/gms/internal/he;[B)Lcom/google/android/gms/internal/he;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    return-object v0
.end method


# virtual methods
.method protected b()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/gy;->b()I

    move-result v0

    iget v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->appType:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->appType:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->androidPackageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->androidPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->d(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->version:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gx;->d(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public clear()Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->appType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->androidPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->version:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->XC:Lcom/google/android/gms/internal/ha;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->XN:I

    return-object p0
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
    instance-of v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->appType:I

    iget v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->appType:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->androidPackageName:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->androidPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->version:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->version:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->a(Lcom/google/android/gms/internal/gy;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->androidPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->androidPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->version:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->appType:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->androidPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->version:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->iY()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->androidPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/he;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/internal/gw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->mergeFrom(Lcom/google/android/gms/internal/gw;)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/android/gms/internal/gw;)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;
    .locals 1
    .param p1, "input"    # Lcom/google/android/gms/internal/gw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iI()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->a(Lcom/google/android/gms/internal/gw;I)Z

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
    iput v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->appType:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->androidPackageName:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->version:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
    iget v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->appType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->appType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->h(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->androidPackageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->androidPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->b(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->version:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gx;->b(ILjava/lang/String;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gy;->writeTo(Lcom/google/android/gms/internal/gx;)V

    return-void
.end method
