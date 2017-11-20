.class final Lcom/google/android/location/geofencer/service/y;
.super Lcom/google/android/location/geofencer/service/o;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/k;


# direct methods
.method public constructor <init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V
    .locals 0

    .prologue
    .line 1700
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/y;->a:Lcom/google/android/location/geofencer/service/k;

    .line 1701
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/geofencer/service/o;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    .line 1702
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1762
    const-string v0, "UnknownActivityState"

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 1755
    const/16 v0, 0xb4

    return v0
.end method

.method protected final e()I
    .locals 9

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/y;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1715
    const/16 v0, 0x3c

    .line 1737
    :goto_0
    return v0

    .line 1725
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/y;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v1, v0, Lcom/google/android/location/geofencer/service/i;->d:Lcom/google/android/location/geofencer/data/n;

    iget-object v0, p0, Lcom/google/android/location/geofencer/service/y;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->u(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/gms/common/util/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    const-wide/32 v6, 0xafc80

    const/4 v8, 0x6

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/location/geofencer/data/n;->a(JJJI)Z

    move-result v0

    .line 1730
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1731
    const-string v1, "GeofencerStateMachine"

    const-string v2, "Might be stationary according to location history, doubling min location update interval."

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    :cond_1
    if-eqz v0, :cond_2

    const-wide/16 v0, 0x78

    .line 1737
    :goto_1
    const/16 v2, 0x708

    iget-object v3, p0, Lcom/google/android/location/geofencer/service/y;->c:Lcom/google/android/location/geofencer/service/i;

    iget v3, v3, Lcom/google/android/location/geofencer/service/i;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 1735
    :cond_2
    const-wide/16 v0, 0x3c

    goto :goto_1
.end method

.method protected final f()I
    .locals 2

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/y;->c:Lcom/google/android/location/geofencer/service/i;

    iget v0, v0, Lcom/google/android/location/geofencer/service/i;->b:I

    .line 1746
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1747
    const/4 v0, -0x1

    .line 1749
    :cond_0
    return v0
.end method

.method protected final i()D
    .locals 2

    .prologue
    .line 1708
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    return-wide v0
.end method
