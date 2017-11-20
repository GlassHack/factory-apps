.class public final Lcom/google/android/location/fused/at;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:J

.field c:J

.field private final d:J

.field private final e:Lcom/google/android/location/fused/au;


# direct methods
.method private constructor <init>(Lcom/google/android/location/fused/au;)V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/fused/at;->d:J

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/fused/at;->a:I

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/fused/at;->c:J

    .line 113
    iput-object p1, p0, Lcom/google/android/location/fused/at;->e:Lcom/google/android/location/fused/au;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/fused/au;B)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/location/fused/at;-><init>(Lcom/google/android/location/fused/au;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x3c

    const-wide/16 v8, 0x3e8

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const-string v0, "Package: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/at;->e:Lcom/google/android/location/fused/au;

    iget-object v1, v1, Lcom/google/android/location/fused/au;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v0, ": Interval "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/at;->e:Lcom/google/android/location/fused/au;

    iget-wide v4, v1, Lcom/google/android/location/fused/au;->c:J

    div-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[s]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v0, ": Priority "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/at;->e:Lcom/google/android/location/fused/au;

    iget v1, v1, Lcom/google/android/location/fused/au;->b:I

    invoke-static {v1}, Lcom/google/android/gms/location/LocationRequest;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v0, ": Duration requested "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v0, p0, Lcom/google/android/location/fused/at;->c:J

    iget v4, p0, Lcom/google/android/location/fused/at;->a:I

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/location/fused/at;->b:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    :cond_0
    div-long/2addr v0, v8

    div-long/2addr v0, v10

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " out of the last "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/location/fused/at;->d:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    div-long/2addr v4, v10

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v0, p0, Lcom/google/android/location/fused/at;->a:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 178
    const-string v0, ": Currently active"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
