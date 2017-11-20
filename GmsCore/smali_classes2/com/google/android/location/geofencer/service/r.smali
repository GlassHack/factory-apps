.class final Lcom/google/android/location/geofencer/service/r;
.super Lcom/google/android/location/geofencer/service/o;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/k;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V
    .locals 1

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/r;->a:Lcom/google/android/location/geofencer/service/k;

    .line 2017
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/geofencer/service/o;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    .line 2014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/service/r;->f:Z

    .line 2018
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2198
    const-string v0, "FastMovingActivityState"

    return-object v0
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 2

    .prologue
    .line 2203
    invoke-super {p0, p1}, Lcom/google/android/location/geofencer/service/o;->a(Ljava/io/PrintWriter;)V

    .line 2204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\n    Using hardware geofencing="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/location/geofencer/service/r;->e:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2205
    return-void

    .line 2204
    :pswitch_0
    const-string v0, "HARDWARE_GEOFENCE_STATE_IN_USE"

    goto :goto_0

    :pswitch_1
    const-string v0, "HARDWARE_GEOFENCE_STATE_NOT_ATTEMPTED"

    goto :goto_0

    :pswitch_2
    const-string v0, "HARDWARE_GEOFENCE_STATE_NOT_AVAILABLE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 2052
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/r;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/location/x;->K:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2055
    if-eqz p1, :cond_1

    .line 2056
    const-string v0, "GeofencerStateMachine"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2057
    const-string v0, "GeofencerStateMachine"

    const-string v2, "Geofence hardware became available."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    :cond_0
    iput v1, p0, Lcom/google/android/location/geofencer/service/r;->e:I

    .line 2060
    invoke-virtual {p0, v1}, Lcom/google/android/location/geofencer/service/r;->b(Z)V

    :goto_0
    move v0, v1

    .line 2071
    :goto_1
    return v0

    .line 2062
    :cond_1
    const-string v0, "GeofencerStateMachine"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2063
    const-string v0, "GeofencerStateMachine"

    const-string v2, "Geofence hardware became unavailable."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    :cond_2
    iput v3, p0, Lcom/google/android/location/geofencer/service/r;->e:I

    .line 2066
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/i;->l:Lcom/google/android/location/geofencer/service/b;

    invoke-interface {v0}, Lcom/google/android/location/geofencer/service/b;->a()Z

    .line 2067
    invoke-virtual {p0, v1}, Lcom/google/android/location/geofencer/service/r;->b(Z)V

    goto :goto_0

    .line 2071
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/location/geofencer/service/o;->a(Z)Z

    move-result v0

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 2022
    invoke-super {p0}, Lcom/google/android/location/geofencer/service/o;->b()V

    .line 2027
    sget-object v0, Lcom/google/android/location/x;->H:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/service/r;->f:Z

    .line 2028
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/r;->f:Z

    if-eqz v0, :cond_2

    .line 2031
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/r;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->k(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/af;->b()Z

    move-result v2

    .line 2032
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/location/geofencer/service/r;->e:I

    .line 2034
    if-nez v2, :cond_0

    const-string v0, "GeofencerStateMachine"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2035
    const-string v0, "GeofencerStateMachine"

    const-string v1, "Not using hardware geofence because GPS is disabled."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 2032
    goto :goto_0

    .line 2037
    :cond_2
    const-string v0, "GeofencerStateMachine"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2038
    const-string v0, "GeofencerStateMachine"

    const-string v1, "Hardware geofencing is disabled on this device."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final b(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x3

    .line 2094
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/r;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/location/geofencer/service/r;->e:I

    if-eq v0, v1, :cond_1

    .line 2096
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v2, v0, Lcom/google/android/location/geofencer/service/i;->l:Lcom/google/android/location/geofencer/service/b;

    .line 2097
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    iget-object v0, v0, Lcom/google/android/location/geofencer/data/h;->c:Lcom/google/android/location/geofencer/data/i;

    iget-object v3, v0, Lcom/google/android/location/geofencer/data/i;->d:Lcom/google/android/location/geofencer/data/b;

    iget-object v0, v0, Lcom/google/android/location/geofencer/data/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/16 v4, 0x32

    invoke-interface {v3, v0, v4}, Lcom/google/android/location/geofencer/data/b;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    .line 2099
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/i;->d:Lcom/google/android/location/geofencer/data/n;

    iget-object v0, v0, Lcom/google/android/location/geofencer/data/n;->c:Landroid/util/Pair;

    .line 2102
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 2103
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-interface {v2, v3, v0}, Lcom/google/android/location/geofencer/service/b;->a(Ljava/util/List;Landroid/location/Location;)Z

    move-result v0

    .line 2105
    if-nez v0, :cond_0

    const-string v2, "GeofencerStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2106
    const-string v2, "GeofencerStateMachine"

    const-string v3, "Unable to push geofences to hardware."

    invoke-static {v2, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    :cond_0
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/google/android/location/geofencer/service/r;->e:I

    .line 2123
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/location/geofencer/service/o;->b(Z)V

    .line 2124
    return-void

    :cond_2
    move v0, v1

    .line 2108
    goto :goto_0

    .line 2111
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/geofencer/service/r;->e:I

    .line 2112
    const-string v0, "GeofencerStateMachine"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2113
    const-string v0, "GeofencerStateMachine"

    const-string v1, "Not using geofence hardware because unknown location."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 2044
    invoke-super {p0}, Lcom/google/android/location/geofencer/service/o;->c()V

    .line 2045
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/r;->f:Z

    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/i;->l:Lcom/google/android/location/geofencer/service/b;

    invoke-interface {v0}, Lcom/google/android/location/geofencer/service/b;->a()Z

    .line 2048
    :cond_0
    return-void
.end method

.method protected final d()I
    .locals 6

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

    const-wide v2, 0x41024f8000000000L    # 150000.0

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/r;->i()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/geofencer/service/i;->c(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2184
    const/4 v0, -0x1

    .line 2191
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x12c

    goto :goto_0
.end method

.method protected final e()I
    .locals 6

    .prologue
    const/16 v0, 0x708

    .line 2151
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/service/r;->f:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/location/geofencer/service/r;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2153
    const/4 v0, -0x1

    .line 2166
    :cond_0
    :goto_0
    return v0

    .line 2159
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/i;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2160
    const/16 v0, 0x3c

    goto :goto_0

    .line 2163
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

    const-wide v2, 0x41024f8000000000L    # 150000.0

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/r;->i()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/location/geofencer/service/i;->c(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2166
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

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
    .line 2172
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

    iget v0, v0, Lcom/google/android/location/geofencer/service/i;->b:I

    .line 2173
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2174
    const/4 v0, -0x1

    .line 2176
    :cond_0
    return v0
.end method

.method protected final i()D
    .locals 18

    .prologue
    .line 2132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v3, v2, Lcom/google/android/location/geofencer/service/i;->d:Lcom/google/android/location/geofencer/data/n;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/geofencer/service/r;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v2}, Lcom/google/android/location/geofencer/service/k;->u(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/gms/common/util/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v4

    const-wide/32 v6, 0x57e40

    const-wide/32 v8, 0x2bf20

    const/4 v10, 0x3

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/location/geofencer/data/n;->a(JJJI)Z

    move-result v12

    .line 2137
    if-eqz v12, :cond_2

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 2139
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    .line 2140
    sget-boolean v4, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v4, :cond_1

    .line 2141
    const-string v4, "GeofencerStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Stationary detected when in vehicle, lowering speed to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    :cond_1
    return-wide v2

    .line 2137
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v6, v2, Lcom/google/android/location/geofencer/service/i;->d:Lcom/google/android/location/geofencer/data/n;

    iget-object v2, v2, Lcom/google/android/location/geofencer/service/i;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v8

    iget-object v2, v6, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    const/4 v10, 0x0

    const/4 v4, 0x0

    iget-object v2, v6, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    :goto_1
    if-ltz v5, :cond_6

    iget-object v2, v6, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/high16 v7, 0x42480000    # 50.0f

    cmpl-float v3, v3, v7

    if-gtz v3, :cond_5

    if-nez v10, :cond_3

    :goto_2
    add-int/lit8 v3, v5, -0x1

    move v5, v3

    move-object v10, v2

    goto :goto_1

    :cond_3
    iget-object v3, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0x2710

    cmp-long v3, v14, v16

    if-ltz v3, :cond_5

    move-object v11, v2

    :goto_3
    if-eqz v10, :cond_4

    if-eqz v11, :cond_4

    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v8, v2

    const-wide/32 v4, 0x249f0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v4, v2

    const-wide/32 v4, 0x249f0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v6, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iget-object v8, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lcom/google/android/location/h/d;->c(DDDD)D

    move-result-wide v4

    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v2, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v6, v2

    long-to-double v2, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v6

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double v2, v6, v2

    if-ltz v2, :cond_4

    const-wide v2, 0x40363851eb851eb8L    # 22.22

    const-wide v8, 0x402370a3d70a3d71L    # 9.72

    div-double v10, v4, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    sget-boolean v8, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v8, :cond_0

    const-string v8, "LocationHistory"

    const-string v9, "Distance moved: %.2fm, time gap: %.2fs, Estimated speed: %.2fm/s."

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v10, v11

    const/4 v4, 0x1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-wide v2, 0x40363851eb851eb8L    # 22.22

    goto/16 :goto_0

    :cond_5
    move-object v2, v10

    goto/16 :goto_2

    :cond_6
    move-object v11, v4

    goto/16 :goto_3
.end method

.method protected final j()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 2082
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/r;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/location/geofencer/service/r;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2084
    iput v2, p0, Lcom/google/android/location/geofencer/service/r;->e:I

    .line 2085
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/r;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/i;->l:Lcom/google/android/location/geofencer/service/b;

    invoke-interface {v0}, Lcom/google/android/location/geofencer/service/b;->a()Z

    .line 2086
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/r;->b(Z)V

    .line 2090
    :goto_0
    return-void

    .line 2088
    :cond_0
    iput v2, p0, Lcom/google/android/location/geofencer/service/r;->e:I

    goto :goto_0
.end method
