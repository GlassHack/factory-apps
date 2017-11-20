.class public final Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;
.super Lcom/google/android/gms/internal/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveExperiments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gy",
        "<",
        "Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile XX:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;


# instance fields
.field public clientAlteringExperiment:[Ljava/lang/String;

.field public gwsExperiment:[I

.field public otherExperiment:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gy;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clear()Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;
    .locals 2

    sget-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->XX:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/hc;->XM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->XX:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    sput-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->XX:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->XX:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/android/gms/internal/gw;)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;
    .locals 1
    .param p0, "input"    # Lcom/google/android/gms/internal/gw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    invoke-direct {v0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->mergeFrom(Lcom/google/android/gms/internal/gw;)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/hd;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    invoke-direct {v0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/he;->mergeFrom(Lcom/google/android/gms/internal/he;[B)Lcom/google/android/gms/internal/he;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    return-object v0
.end method


# virtual methods
.method protected b()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/gy;->b()I

    move-result v4

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/gx;->bM(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, v4, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/gx;->bM(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v3

    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v3, v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/gx;->eG(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_6
    return v0

    :cond_7
    move v0, v4

    goto :goto_1
.end method

.method public clear()Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hh;->XU:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/hh;->XU:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/hh;->XP:[I

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->XC:Lcom/google/android/gms/internal/ha;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->XN:I

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
    instance-of v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hc;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->a(Lcom/google/android/gms/internal/gy;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/hc;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/hc;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/hc;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->iY()I

    move-result v1

    add-int/2addr v0, v1

    return v0
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
    invoke-virtual {p0, p1}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->mergeFrom(Lcom/google/android/gms/internal/gw;)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/android/gms/internal/gw;)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;
    .locals 5
    .param p1, "input"    # Lcom/google/android/gms/internal/gw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iI()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->a(Lcom/google/android/gms/internal/gw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hh;->b(Lcom/google/android/gms/internal/gw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iI()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hh;->b(Lcom/google/android/gms/internal/gw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iI()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hh;->b(Lcom/google/android/gms/internal/gw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iL()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iI()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v0, v0

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iL()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iO()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gw;->ez(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->getPosition()I

    move-result v2

    move v0, v1

    :goto_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iT()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iL()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gw;->eB(I)V

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    if-nez v2, :cond_c

    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_9
    array-length v4, v0

    if-ge v2, v4, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gw;->iL()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v2, v2

    goto :goto_8

    :cond_d
    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/gw;->eA(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/android/gms/internal/gx;)V
    .locals 4
    .param p1, "output"    # Lcom/google/android/gms/internal/gx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/gx;->b(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/gx;->b(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v0, v0

    if-ge v1, v0, :cond_4

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/gx;->h(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gy;->writeTo(Lcom/google/android/gms/internal/gx;)V

    return-void
.end method
