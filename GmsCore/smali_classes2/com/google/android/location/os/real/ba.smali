.class final Lcom/google/android/location/os/real/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/RttManager$RttListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/az;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/az;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/location/os/real/ba;->a:Lcom/google/android/location/os/real/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAborted()V
    .locals 2

    .prologue
    .line 120
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "RttScanner"

    const-string v1, "onAborted"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public final onFailure(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 114
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "RttScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/ba;->a:Lcom/google/android/location/os/real/az;

    iget-object v0, v0, Lcom/google/android/location/os/real/az;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->z()V

    .line 116
    return-void
.end method

.method public final onSuccess([Landroid/net/wifi/RttManager$RttResult;)V
    .locals 4

    .prologue
    .line 89
    array-length v0, p1

    if-gtz v0, :cond_1

    .line 90
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "RttScanner"

    const-string v1, "Empty result in onSuccess"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/ba;->a:Lcom/google/android/location/os/real/az;

    iget-object v0, v0, Lcom/google/android/location/os/real/az;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->z()V

    .line 110
    :goto_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 95
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "RttScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSucess "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    new-instance v1, Lcom/google/android/location/f/bg;

    invoke-direct {v1}, Lcom/google/android/location/f/bg;-><init>()V

    .line 97
    iget-object v2, v0, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/location/f/bg;->a:Ljava/lang/String;

    .line 98
    iget v2, v0, Landroid/net/wifi/RttManager$RttResult;->distance_cm:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/google/android/location/f/bg;->j:J

    .line 99
    iget v2, v0, Landroid/net/wifi/RttManager$RttResult;->distance_sd_cm:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/google/android/location/f/bg;->k:J

    .line 100
    iget v2, v0, Landroid/net/wifi/RttManager$RttResult;->distance_spread_cm:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/google/android/location/f/bg;->l:J

    .line 101
    iget v2, v0, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    iput v2, v1, Lcom/google/android/location/f/bg;->d:I

    .line 102
    iget v2, v0, Landroid/net/wifi/RttManager$RttResult;->rssi_spread:I

    iput v2, v1, Lcom/google/android/location/f/bg;->e:I

    .line 103
    iget-wide v2, v0, Landroid/net/wifi/RttManager$RttResult;->rtt_ns:J

    iput-wide v2, v1, Lcom/google/android/location/f/bg;->g:J

    .line 104
    iget-wide v2, v0, Landroid/net/wifi/RttManager$RttResult;->rtt_sd_ns:J

    iput-wide v2, v1, Lcom/google/android/location/f/bg;->h:J

    .line 105
    iget-wide v2, v0, Landroid/net/wifi/RttManager$RttResult;->rtt_spread_ns:J

    iput-wide v2, v1, Lcom/google/android/location/f/bg;->i:J

    .line 106
    iget v2, v0, Landroid/net/wifi/RttManager$RttResult;->status:I

    iput v2, v1, Lcom/google/android/location/f/bg;->b:I

    .line 107
    iget-wide v2, v0, Landroid/net/wifi/RttManager$RttResult;->ts:J

    iput-wide v2, v1, Lcom/google/android/location/f/bg;->c:J

    .line 108
    iget v0, v0, Landroid/net/wifi/RttManager$RttResult;->tx_rate:I

    iput v0, v1, Lcom/google/android/location/f/bg;->f:I

    .line 109
    iget-object v0, p0, Lcom/google/android/location/os/real/ba;->a:Lcom/google/android/location/os/real/az;

    iget-object v0, v0, Lcom/google/android/location/os/real/az;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0, v1}, Lcom/google/android/location/os/at;->a(Lcom/google/android/location/f/bg;)V

    goto :goto_0
.end method
