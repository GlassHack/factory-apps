.class public final Lcom/google/android/location/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/LinkedList;

.field b:J

.field c:Z

.field d:Z

.field e:Z

.field f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/y;->a:Ljava/util/LinkedList;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/y;->b:J

    .line 51
    iput-boolean v2, p0, Lcom/google/android/location/y;->c:Z

    .line 52
    iput-boolean v2, p0, Lcom/google/android/location/y;->d:Z

    .line 53
    iput-boolean v2, p0, Lcom/google/android/location/y;->e:Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/y;->f:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 97
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "GlsFailureTracker"

    const-string v1, "Leaving back-off mode."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/y;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/y;->c:Z

    .line 100
    return-void
.end method

.method public final a(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    iget-boolean v2, p0, Lcom/google/android/location/y;->d:Z

    if-eqz v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/location/y;->e:Z

    if-eqz v2, :cond_2

    .line 135
    iget-wide v2, p0, Lcom/google/android/location/y;->b:J

    sub-long v2, p1, v2

    .line 142
    iget-boolean v4, p0, Lcom/google/android/location/y;->c:Z

    if-eqz v4, :cond_0

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 144
    :cond_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "GlsFailureTracker"

    const-string v2, "Not on any network."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    .line 145
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GlsFailureTracker [currentOnCellNetwork="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/location/y;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentOnWifiNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/y;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentWifiNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/y;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inBackOffMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/y;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastGlsFailureMillisSinceBoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/y;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", glsFailureTimestamps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/y;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
