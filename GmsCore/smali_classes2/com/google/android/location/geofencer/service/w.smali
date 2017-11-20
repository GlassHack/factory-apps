.class final Lcom/google/android/location/geofencer/service/w;
.super Lcom/google/android/location/geofencer/service/o;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/k;

.field private e:Ljava/util/Calendar;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V
    .locals 1

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/w;->a:Lcom/google/android/location/geofencer/service/k;

    .line 1784
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/geofencer/service/o;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    .line 1778
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/w;->e:Ljava/util/Calendar;

    .line 1781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/service/w;->f:Z

    .line 1785
    return-void
.end method

.method private k()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1824
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/w;->e:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/google/android/location/geofencer/service/w;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v3}, Lcom/google/android/location/geofencer/service/k;->u(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/gms/common/util/i;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/google/android/location/geofencer/service/w;->e:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v3, 0x7

    if-lt v0, v3, :cond_0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/location/geofencer/service/w;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v3, v3, Lcom/google/android/location/geofencer/service/i;->f:Lcom/google/android/location/i/a;

    iget-object v3, v3, Lcom/google/android/location/i/a;->h:Lcom/google/android/location/i/d;

    invoke-virtual {v3}, Lcom/google/android/location/i/d;->d()Z

    move-result v4

    iget-object v3, p0, Lcom/google/android/location/geofencer/service/w;->c:Lcom/google/android/location/geofencer/service/i;

    sget-boolean v5, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v5, :cond_1

    const-string v5, "GeofencerStateInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "hasRecentUserInteraction="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/google/android/location/geofencer/service/i;->k:Lcom/google/android/location/i/c;

    iget-wide v8, v7, Lcom/google/android/location/i/c;->b:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v5, v3, Lcom/google/android/location/geofencer/service/i;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v5}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v6

    iget-object v3, v3, Lcom/google/android/location/geofencer/service/i;->k:Lcom/google/android/location/i/c;

    iget-wide v8, v3, Lcom/google/android/location/i/c;->b:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x36ee80

    cmp-long v3, v6, v8

    if-gtz v3, :cond_5

    move v3, v2

    :goto_1
    if-nez v3, :cond_6

    move v3, v2

    :goto_2
    sget-boolean v5, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v5, :cond_2

    const-string v5, "GeofencerStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sleepTime="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " stillForALongTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " noActivityForALongTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    move v0, v2

    .line 1825
    :goto_3
    iget-boolean v3, p0, Lcom/google/android/location/geofencer/service/w;->f:Z

    if-eq v3, v0, :cond_8

    .line 1826
    iput-boolean v0, p0, Lcom/google/android/location/geofencer/service/w;->f:Z

    .line 1827
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_3

    .line 1828
    const-string v0, "GeofencerStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mightUpdateInDeepStill: mInDeepStill="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/google/android/location/geofencer/service/w;->f:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    :cond_3
    :goto_4
    return v2

    :cond_4
    move v0, v1

    .line 1824
    goto/16 :goto_0

    :cond_5
    move v3, v1

    goto :goto_1

    :cond_6
    move v3, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v2, v1

    .line 1832
    goto :goto_4
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1925
    const-string v0, "StillActivityState"

    return-object v0
.end method

.method protected final a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1807
    invoke-super {p0, p1}, Lcom/google/android/location/geofencer/service/o;->a(Landroid/content/Intent;)Z

    .line 1808
    invoke-direct {p0}, Lcom/google/android/location/geofencer/service/w;->k()Z

    move-result v1

    .line 1809
    if-eqz v1, :cond_0

    .line 1810
    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/w;->b(Z)V

    .line 1811
    const/4 v0, 0x1

    .line 1813
    :cond_0
    return v0
.end method

.method protected final a(Landroid/util/Pair;)Z
    .locals 1

    .prologue
    .line 1801
    invoke-direct {p0}, Lcom/google/android/location/geofencer/service/w;->k()Z

    .line 1802
    invoke-super {p0, p1}, Lcom/google/android/location/geofencer/service/o;->a(Landroid/util/Pair;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1789
    invoke-super {p0}, Lcom/google/android/location/geofencer/service/o;->b()V

    .line 1790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/service/w;->f:Z

    .line 1791
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 1795
    invoke-super {p0}, Lcom/google/android/location/geofencer/service/o;->c()V

    .line 1796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/service/w;->f:Z

    .line 1797
    return-void
.end method

.method protected final d()I
    .locals 4

    .prologue
    const/16 v0, 0x12c

    .line 1877
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/w;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/i;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1897
    :cond_0
    :goto_0
    return v0

    .line 1883
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/w;->c:Lcom/google/android/location/geofencer/service/i;

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/geofencer/service/i;->c(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1884
    const/4 v0, -0x1

    goto :goto_0

    .line 1888
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/w;->c:Lcom/google/android/location/geofencer/service/i;

    const-wide v2, 0x4072c00000000000L    # 300.0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/geofencer/service/i;->c(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1894
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/service/w;->f:Z

    if-nez v1, :cond_0

    .line 1897
    const/16 v0, 0xb4

    goto :goto_0
.end method

.method protected final e()I
    .locals 4

    .prologue
    const/16 v0, 0x384

    .line 1843
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/w;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/i;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1844
    const/16 v0, 0x3c

    .line 1862
    :cond_0
    :goto_0
    return v0

    .line 1848
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/w;->c:Lcom/google/android/location/geofencer/service/i;

    const-wide v2, 0x40aa0aaaaaaaaaabL    # 3333.3333333333335

    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/geofencer/service/i;->c(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1850
    const/16 v0, 0x708

    goto :goto_0

    .line 1854
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/w;->c:Lcom/google/android/location/geofencer/service/i;

    const-wide v2, 0x4072c00000000000L    # 300.0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/geofencer/service/i;->c(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1859
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/service/w;->f:Z

    if-nez v1, :cond_0

    .line 1862
    const/16 v0, 0x168

    goto :goto_0
.end method

.method protected final f()I
    .locals 2

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/w;->c:Lcom/google/android/location/geofencer/service/i;

    iget v0, v0, Lcom/google/android/location/geofencer/service/i;->b:I

    .line 1869
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1870
    const/4 v0, -0x1

    .line 1872
    :cond_0
    return v0
.end method

.method protected final i()D
    .locals 2

    .prologue
    .line 1838
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    return-wide v0
.end method
