.class public final Lcom/google/android/maps/driveabout/location/ab;
.super Lcom/google/android/maps/driveabout/location/d;
.source "SourceFile"


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/googlenav/common/a;

.field private e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

.field private f:J

.field private final g:[F

.field private h:I

.field private i:Lcom/google/android/maps/driveabout/util/l;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/b;Landroid/os/Handler;Lcom/google/googlenav/common/a;)V
    .locals 2

    .prologue
    .line 74
    const-string v0, "da_tunnel_heartbeat"

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/location/d;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/location/ab;->h:I

    .line 58
    new-instance v0, Lcom/google/android/maps/driveabout/location/ac;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/location/ac;-><init>(Lcom/google/android/maps/driveabout/location/ab;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->j:Ljava/lang/Runnable;

    .line 75
    iput-object p2, p0, Lcom/google/android/maps/driveabout/location/ab;->c:Landroid/os/Handler;

    .line 76
    iput-object p3, p0, Lcom/google/android/maps/driveabout/location/ab;->d:Lcom/google/googlenav/common/a;

    .line 77
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->g:[F

    .line 78
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->g:[F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 79
    return-void
.end method

.method private static a([F)F
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 210
    .line 211
    const/4 v1, 0x0

    .line 212
    array-length v4, p0

    move v3, v0

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_0
    if-ge v3, v4, :cond_1

    aget v5, p0, v3

    .line 213
    cmpl-float v6, v5, v2

    if-eqz v6, :cond_0

    .line 214
    add-float/2addr v0, v5

    .line 215
    add-int/lit8 v1, v1, 0x1

    .line 212
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    move v0, v2

    .line 221
    :goto_1
    return v0

    :cond_2
    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;F)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 168
    mul-float/2addr v3, p1

    .line 171
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i()Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v4

    .line 172
    if-nez v4, :cond_0

    move-object v0, v2

    .line 200
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/aa;->a()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v5

    .line 176
    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v6

    double-to-float v4, v6

    add-float/2addr v3, v4

    .line 177
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v4

    .line 178
    float-to-double v6, v3

    invoke-virtual {v5, v6, v7}, Lcom/google/android/maps/driveabout/nav/w;->a(D)I

    move-result v6

    .line 179
    if-ltz v6, :cond_1

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_2

    :cond_1
    move-object v0, v2

    .line 180
    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v4, v6}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v7

    .line 185
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v2}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    .line 186
    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v5

    double-to-float v2, v5

    sub-float v2, v3, v2

    .line 187
    invoke-virtual {v7, v4}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v3

    div-float/2addr v2, v3

    .line 188
    cmpg-float v3, v2, v0

    if-gez v3, :cond_3

    .line 193
    :goto_1
    invoke-virtual {v7, v4, v0}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;F)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 196
    new-instance v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    .line 197
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setLatitude(D)V

    .line 198
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setLongitude(D)V

    .line 199
    invoke-static {v7, v4}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    goto :goto_0

    .line 190
    :cond_3
    cmpl-float v0, v2, v1

    if-lez v0, :cond_4

    move v0, v1

    .line 191
    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private a(J)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    :cond_0
    return-void
.end method

.method public static a(Landroid/location/Location;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 120
    instance-of v1, p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    check-cast p0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g()Lcom/google/android/maps/driveabout/model/ao;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ao;->h()Z

    move-result v0

    goto :goto_0
.end method

.method private d()J
    .locals 4

    .prologue
    .line 229
    const-wide/16 v0, 0x7d0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/ab;->i:Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/l;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->i:Lcom/google/android/maps/driveabout/util/l;

    .line 91
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/ab;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/location/ab;->a(J)V

    .line 92
    return-void
.end method

.method final c()V
    .locals 7

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/location/ab;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->g:[F

    invoke-static {v0}, Lcom/google/android/maps/driveabout/location/ab;->a([F)F

    move-result v0

    .line 140
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->g:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 148
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    .line 149
    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/ab;->f:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    const v5, 0x3a83126f    # 0.001f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 150
    iget-object v4, p0, Lcom/google/android/maps/driveabout/location/ab;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-static {v4, v3}, Lcom/google/android/maps/driveabout/location/ab;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;F)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v4

    .line 151
    if-eqz v4, :cond_0

    .line 152
    iget-object v5, p0, Lcom/google/android/maps/driveabout/location/ab;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v5}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setTime(J)V

    .line 153
    invoke-virtual {v4, v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(J)V

    .line 154
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->i:Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/l;->n()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setAccuracy(F)V

    .line 155
    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setSpeed(F)V

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e(Z)V

    .line 157
    const-string v1, "TunnelProjectorLocationProvider"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x34

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Generated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", speed:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " m:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-super {p0, v4}, Lcom/google/android/maps/driveabout/location/d;->onLocationChanged(Landroid/location/Location;)V

    goto/16 :goto_0
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 97
    instance-of v0, p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    check-cast p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 101
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->i:Lcom/google/android/maps/driveabout/util/l;

    .line 109
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/ab;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/location/ab;->a(J)V

    .line 111
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/ab;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 112
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/ab;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/ab;->f:J

    .line 114
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/ab;->g:[F

    iget v2, p0, Lcom/google/android/maps/driveabout/location/ab;->h:I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getSpeed()F

    move-result v0

    :goto_1
    aput v0, v1, v2

    .line 115
    iget v0, p0, Lcom/google/android/maps/driveabout/location/ab;->h:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/maps/driveabout/location/ab;->h:I

    goto :goto_0

    .line 114
    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1
.end method
