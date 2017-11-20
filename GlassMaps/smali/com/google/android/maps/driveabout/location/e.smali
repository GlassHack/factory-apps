.class public final Lcom/google/android/maps/driveabout/location/e;
.super Lcom/google/android/maps/driveabout/location/d;
.source "SourceFile"


# instance fields
.field private c:J

.field private d:J

.field private volatile e:Lcom/google/android/maps/driveabout/location/r;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/google/android/maps/driveabout/util/l;

.field private k:Lcom/google/android/maps/driveabout/location/t;

.field private final l:Lcom/google/googlenav/common/a;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/b;Lcom/google/android/maps/driveabout/location/t;Lcom/google/googlenav/common/a;)V
    .locals 2

    .prologue
    .line 65
    const-string v0, "driveabout_gps_fixup"

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/location/d;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/e;->c:J

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/e;->d:J

    .line 66
    iput-object p2, p0, Lcom/google/android/maps/driveabout/location/e;->k:Lcom/google/android/maps/driveabout/location/t;

    .line 67
    iput-object p3, p0, Lcom/google/android/maps/driveabout/location/e;->l:Lcom/google/googlenav/common/a;

    .line 68
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/high16 v0, 0x40800000    # 4.0f

    .line 167
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/e;->j:Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/l;->o()F

    move-result v2

    mul-float/2addr v1, v2

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 169
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/location/e;->h:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getAccuracy()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/location/e;->h:Z

    .line 140
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/location/e;->h:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    .line 143
    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/e;->j:Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/l;->n()I

    move-result v2

    int-to-float v2, v2

    .line 144
    const/high16 v3, 0x41000000    # 8.0f

    .line 145
    if-ltz v1, :cond_1

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    .line 147
    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    sub-float v1, v2, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setAccuracy(F)V

    .line 158
    :cond_1
    return-void

    .line 148
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 149
    :pswitch_1
    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0

    .line 150
    :pswitch_2
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 151
    :pswitch_3
    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    .line 152
    :pswitch_4
    const/high16 v0, 0x3e000000    # 0.125f

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/e;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/e;->g:Z

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/e;->g:Z

    if-nez v0, :cond_1

    .line 180
    invoke-virtual {p1}, Landroid/location/Location;->removeBearing()V

    .line 182
    :cond_1
    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/e;->e:Lcom/google/android/maps/driveabout/location/r;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/e;->e:Lcom/google/android/maps/driveabout/location/r;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/r;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(I)V

    .line 202
    :cond_0
    return-void
.end method

.method private c(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/e;->g:Z

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/e;->k:Lcom/google/android/maps/driveabout/location/t;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->getOrientation()F

    move-result v0

    .line 191
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 192
    invoke-virtual {p1, v0}, Landroid/location/Location;->setBearing(F)V

    .line 195
    :cond_0
    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 208
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    :goto_0
    return v1

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e()I

    move-result v2

    .line 212
    if-lt v2, v4, :cond_1

    .line 213
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/e;->f:Z

    .line 215
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/location/e;->f:Z

    if-eqz v3, :cond_2

    if-ge v2, v4, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private d(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/e;->f:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/e;->j:Lcom/google/android/maps/driveabout/util/l;

    .line 228
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/l;->m()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/e;->j:Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/l;->n()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/e;->j:Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->n()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setAccuracy(F)V

    .line 232
    :cond_0
    return-void
.end method

.method private e(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/e;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/e;->j:Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/l;->n()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/e;->j:Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->n()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setAccuracy(F)V

    .line 243
    :cond_0
    return-void
.end method

.method private static f(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getSpeed()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->removeSpeed()V

    .line 254
    :cond_0
    return-void
.end method

.method private g(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 6

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/e;->j:Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/l;->n()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/e;->l:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    .line 269
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/e;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 270
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/e;->c:J

    sub-long v2, v0, v2

    .line 271
    iget-object v4, p0, Lcom/google/android/maps/driveabout/location/e;->j:Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/l;->k()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 272
    const-wide/16 v2, 0x1388

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/location/e;->d:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/location/e;->d:J

    .line 277
    :cond_0
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/e;->c:J

    .line 280
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/location/e;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/e;->j:Lcom/google/android/maps/driveabout/util/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->n()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setAccuracy(F)V

    .line 284
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/e;->c:J

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/e;->d:J

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/e;->e:Lcom/google/android/maps/driveabout/location/r;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/e;->i:Z

    .line 94
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/r;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/e;->e:Lcom/google/android/maps/driveabout/location/r;

    .line 85
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/t;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/e;->k:Lcom/google/android/maps/driveabout/location/t;

    .line 77
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "driveabout_hmm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-static {p1}, Lcom/google/android/maps/driveabout/location/ab;->a(Landroid/location/Location;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/e;->i:Z

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/e;->j:Lcom/google/android/maps/driveabout/util/l;

    .line 109
    new-instance v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Z)V

    .line 113
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remote_gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b(Z)V

    .line 115
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/e;->b(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 116
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/e;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 117
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/e;->a(Landroid/location/Location;)V

    .line 118
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/e;->b(Landroid/location/Location;)V

    .line 119
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/e;->c(Landroid/location/Location;)V

    .line 120
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/e;->c(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/e;->d(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/e;->e(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 125
    invoke-static {v0}, Lcom/google/android/maps/driveabout/location/e;->f(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 126
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/e;->g(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 128
    invoke-super {p0, v0}, Lcom/google/android/maps/driveabout/location/d;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method
