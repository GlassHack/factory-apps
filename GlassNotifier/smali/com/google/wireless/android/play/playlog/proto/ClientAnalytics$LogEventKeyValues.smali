.class public final Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;
.super Lcom/google/android/gms/internal/xn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogEventKeyValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/xn",
        "<",
        "Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile aZs:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xn;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->clear()Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;
    .locals 2

    sget-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->aZs:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/xr;->aZd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->aZs:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    sput-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->aZs:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->aZs:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/android/gms/internal/xl;)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;
    .locals 1
    .param p0, "input"    # Lcom/google/android/gms/internal/xl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    invoke-direct {v0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->mergeFrom(Lcom/google/android/gms/internal/xl;)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/xs;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    invoke-direct {v0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/xt;->mergeFrom(Lcom/google/android/gms/internal/xt;[B)Lcom/google/android/gms/internal/xt;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    return-object v0
.end method


# virtual methods
.method protected c()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/xn;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public clear()Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->aYT:Lcom/google/android/gms/internal/xp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->aZe:I

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
    instance-of v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->a(Lcom/google/android/gms/internal/xn;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->wl()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/xt;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/internal/xl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->mergeFrom(Lcom/google/android/gms/internal/xl;)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/android/gms/internal/xl;)Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;
    .locals 1
    .param p1, "input"    # Lcom/google/android/gms/internal/xl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vU()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->a(Lcom/google/android/gms/internal/xl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
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
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->b(ILjava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/xn;->writeTo(Lcom/google/android/gms/internal/xm;)V

    return-void
.end method
