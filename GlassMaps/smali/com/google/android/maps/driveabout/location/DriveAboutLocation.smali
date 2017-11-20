.class public Lcom/google/android/maps/driveabout/location/DriveAboutLocation;
.super Landroid/location/Location;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/google/android/maps/driveabout/model/ao;

.field private f:Lcom/google/android/maps/driveabout/model/ab;

.field private g:Lcom/google/android/maps/driveabout/nav/aa;

.field private h:D

.field private i:I

.field private j:I

.field private k:J

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 41
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:D

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i:I

    .line 47
    iput v2, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->j:I

    .line 53
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->l:Z

    .line 57
    instance-of v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a:Z

    .line 60
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b:Z

    .line 61
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c:Z

    .line 62
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->d:Z

    .line 63
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g()Lcom/google/android/maps/driveabout/model/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e:Lcom/google/android/maps/driveabout/model/ao;

    .line 64
    iget-object v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f:Lcom/google/android/maps/driveabout/model/ab;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f:Lcom/google/android/maps/driveabout/model/ab;

    .line 65
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i()Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g:Lcom/google/android/maps/driveabout/nav/aa;

    .line 66
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->k()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:D

    .line 67
    iget v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i:I

    iput v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i:I

    .line 68
    iget v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->j:I

    iput v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->j:I

    .line 69
    iget-wide v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->k:J

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->k:J

    .line 70
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->l:Z

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->l:Z

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->k:J

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 41
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:D

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i:I

    .line 47
    iput v2, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->j:I

    .line 53
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->l:Z

    .line 78
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/model/m;)F
    .locals 11

    .prologue
    const-wide v9, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 342
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 343
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v2

    .line 344
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    .line 343
    invoke-static/range {v0 .. v8}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->distanceBetween(DDDD[F)V

    .line 346
    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method

.method public final a(D)V
    .locals 0

    .prologue
    .line 293
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:D

    .line 294
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i:I

    .line 188
    return-void
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 366
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->k:J

    .line 367
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ao;Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e:Lcom/google/android/maps/driveabout/model/ao;

    .line 257
    if-nez p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f:Lcom/google/android/maps/driveabout/model/ab;

    .line 258
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/aa;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g:Lcom/google/android/maps/driveabout/nav/aa;

    .line 270
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a:Z

    .line 133
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a:Z

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 208
    iput p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->j:I

    .line 209
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b:Z

    .line 141
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c:Z

    .line 164
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->d:Z

    .line 195
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i:I

    return v0
.end method

.method public final e(Z)V
    .locals 0

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->l:Z

    .line 236
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 316
    if-ne p0, p1, :cond_0

    .line 317
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    .line 319
    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-nez v0, :cond_1

    .line 320
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->d:Z

    return v0
.end method

.method public final g()Lcom/google/android/maps/driveabout/model/ao;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e:Lcom/google/android/maps/driveabout/model/ao;

    return-object v0
.end method

.method public final h()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public final i()Lcom/google/android/maps/driveabout/nav/aa;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g:Lcom/google/android/maps/driveabout/nav/aa;

    return-object v0
.end method

.method public final j()Z
    .locals 4

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()D
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:D

    return-wide v0
.end method

.method public final l()Lcom/google/android/maps/driveabout/model/m;
    .locals 8

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 297
    new-instance v0, Lcom/google/android/maps/driveabout/model/m;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v6

    add-double/2addr v1, v4

    double-to-int v1, v1

    .line 298
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/m;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a:Z

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c:Z

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->d:Z

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->h:D

    iget v6, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i:I

    .line 311
    invoke-super {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->k:J

    iget-boolean v10, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->l:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit16 v12, v12, 0xcd

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "DriveAboutLocation[mIsGps:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", mIsRemoteGps:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsGpsAccurate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnRoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnRteCon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumSatInFix:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mFixTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsProjected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
