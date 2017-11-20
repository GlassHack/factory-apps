.class final Lcom/google/android/location/geofencer/service/z;
.super Lcom/google/android/location/geofencer/service/o;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/k;


# direct methods
.method public constructor <init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V
    .locals 0

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/z;->a:Lcom/google/android/location/geofencer/service/k;

    .line 1936
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/geofencer/service/o;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    .line 1937
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1998
    const-string v0, "WalkingActivityState"

    return-object v0
.end method

.method protected final d()I
    .locals 4

    .prologue
    const/16 v0, 0x12c

    .line 1970
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/z;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/i;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1991
    :cond_0
    :goto_0
    return v0

    .line 1976
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/z;->c:Lcom/google/android/location/geofencer/service/i;

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/geofencer/service/i;->c(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1977
    const/4 v0, -0x1

    goto :goto_0

    .line 1986
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/z;->c:Lcom/google/android/location/geofencer/service/i;

    const-wide v2, 0x40aa0aaaaaaaaaabL    # 3333.3333333333335

    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/geofencer/service/i;->c(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1991
    const/16 v0, 0xb4

    goto :goto_0
.end method

.method protected final e()I
    .locals 4

    .prologue
    const/16 v0, 0x708

    .line 1946
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/z;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/i;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1947
    const/16 v0, 0x3c

    .line 1954
    :cond_0
    :goto_0
    return v0

    .line 1950
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/z;->c:Lcom/google/android/location/geofencer/service/i;

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/geofencer/service/i;->c(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1954
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/z;->c:Lcom/google/android/location/geofencer/service/i;

    iget v2, v2, Lcom/google/android/location/geofencer/service/i;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected final f()I
    .locals 2

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/z;->c:Lcom/google/android/location/geofencer/service/i;

    iget v0, v0, Lcom/google/android/location/geofencer/service/i;->b:I

    .line 1962
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1963
    const/4 v0, -0x1

    .line 1965
    :cond_0
    return v0
.end method

.method protected final i()D
    .locals 2

    .prologue
    .line 1941
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    return-wide v0
.end method
