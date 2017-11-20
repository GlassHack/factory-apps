.class public final Lcom/google/android/maps/driveabout/location/aa;
.super Lcom/google/android/maps/driveabout/location/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/location/c;


# instance fields
.field private c:D

.field private d:I

.field private e:Lcom/google/android/maps/driveabout/nav/w;

.field private f:I


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    .prologue
    .line 73
    const-string v0, "driveabout_polyline_snapping"

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/location/d;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/aa;->c:D

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/location/aa;->d:I

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/location/aa;->f:I

    .line 74
    return-void
.end method

.method private a(Landroid/location/Location;)Lcom/google/android/maps/driveabout/nav/aa;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v2

    .line 116
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v4

    .line 119
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/l;->z()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    add-float/2addr v4, v5

    .line 120
    iget-object v5, p0, Lcom/google/android/maps/driveabout/location/aa;->e:Lcom/google/android/maps/driveabout/nav/w;

    float-to-double v6, v4

    mul-double/2addr v6, v2

    const/4 v4, 0x1

    invoke-virtual {v5, v0, v6, v7, v4}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/model/ab;DZ)[Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v4

    .line 123
    const/4 v0, 0x0

    .line 124
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 125
    aget-object v0, v4, v1

    .line 126
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v5

    .line 128
    iget v7, p0, Lcom/google/android/maps/driveabout/location/aa;->d:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 129
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v5, v2

    .line 134
    array-length v3, v4

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v4, v2

    .line 137
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/maps/driveabout/location/aa;->c:D

    add-double/2addr v9, v5

    cmpl-double v7, v7, v9

    if-lez v7, :cond_2

    .line 152
    :cond_0
    :goto_1
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/aa;->c:D

    .line 153
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/maps/driveabout/location/aa;->c:D

    sub-double/2addr v3, v5

    const-wide v5, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/location/aa;->c:D

    .line 161
    :cond_1
    :goto_2
    return-object v0

    .line 143
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v7

    iget v8, p0, Lcom/google/android/maps/driveabout/location/aa;->d:I

    if-ne v7, v8, :cond_3

    .line 145
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-object v0, v1

    .line 146
    goto :goto_1

    .line 134
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 158
    :cond_4
    iput-wide v5, p0, Lcom/google/android/maps/driveabout/location/aa;->c:D

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-string v0, "driveabout_polyline_snapping"

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/google/android/maps/driveabout/location/aa;->f:I

    .line 172
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/aa;->e:Lcom/google/android/maps/driveabout/nav/w;

    .line 167
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iget v1, p0, Lcom/google/android/maps/driveabout/location/aa;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/aa;->e:Lcom/google/android/maps/driveabout/nav/w;

    if-nez v0, :cond_0

    .line 83
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/location/d;->onLocationChanged(Landroid/location/Location;)V

    .line 112
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/location/aa;->a(Landroid/location/Location;)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    .line 93
    if-eqz v0, :cond_2

    .line 94
    iget v2, p0, Lcom/google/android/maps/driveabout/location/aa;->d:I

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 96
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/location/aa;->c:D

    .line 98
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v2

    iput v2, p0, Lcom/google/android/maps/driveabout/location/aa;->d:I

    .line 101
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(D)V

    .line 102
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aa;->c()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    .line 103
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Lcom/google/android/maps/driveabout/nav/aa;)V

    .line 111
    :goto_1
    invoke-super {p0, v1}, Lcom/google/android/maps/driveabout/location/d;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/location/aa;->d:I

    .line 108
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(D)V

    goto :goto_1
.end method
