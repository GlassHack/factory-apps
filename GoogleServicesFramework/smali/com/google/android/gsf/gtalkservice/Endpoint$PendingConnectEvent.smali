.class Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;
.super Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingConnectEvent"
.end annotation


# instance fields
.field private mBroadcastNetworkState:I

.field private mBroadcastNetworkType:I

.field private mError:I

.field private mNetworkAvailable:Z

.field private mReconnectDelta:J


# direct methods
.method constructor <init>(IILandroid/net/NetworkInfo$State;IZJ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "err"    # I
    .param p3, "netState"    # Landroid/net/NetworkInfo$State;
    .param p4, "networkType"    # I
    .param p5, "netAvailable"    # Z
    .param p6, "nextReconTime"    # J

    .prologue
    .line 1528
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;-><init>(I)V

    .line 1530
    iput p2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;->mError:I

    .line 1531
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p6, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;->mReconnectDelta:J

    .line 1532
    iput-boolean p5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;->mNetworkAvailable:Z

    .line 1534
    if-nez p3, :cond_0

    .line 1535
    sget-object p3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 1537
    :cond_0
    invoke-virtual {p3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;->mBroadcastNetworkState:I

    .line 1538
    iput p4, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;->mBroadcastNetworkType:I

    .line 1539
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 1543
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;->dump(Ljava/io/PrintWriter;)V

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;->mError:I

    invoke-static {v1}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", netAvail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;->mNetworkAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", netstateBC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;->mBroadcastNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;->mBroadcastNetworkState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1548
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;->mReconnectDelta:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", recon in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$PendingConnectEvent;->mReconnectDelta:J

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1551
    :cond_0
    return-void
.end method
