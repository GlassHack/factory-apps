.class public final Lcom/google/android/maps/driveabout/location/w;
.super Lcom/google/android/maps/driveabout/location/d;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/maps/driveabout/location/y;

.field private final d:Lcom/google/googlenav/e/a;

.field private e:Landroid/location/Location;

.field private f:Z

.field private g:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    const-string v0, "driveabout_orientation_filter"

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/location/d;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 86
    new-instance v0, Lcom/google/android/maps/driveabout/location/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/y;-><init>(Lcom/google/android/maps/driveabout/location/x;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/w;->c:Lcom/google/android/maps/driveabout/location/y;

    .line 87
    new-instance v0, Lcom/google/googlenav/e/a;

    invoke-direct {v0, v2}, Lcom/google/googlenav/e/a;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/w;->d:Lcom/google/googlenav/e/a;

    .line 91
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/location/w;->f:Z

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/location/w;->g:F

    .line 100
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/w;->e:Landroid/location/Location;

    .line 105
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/location/w;->g:F

    .line 108
    :cond_0
    return-void
.end method

.method public final onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 5

    .prologue
    .line 112
    new-instance v1, Lcom/google/android/maps/driveabout/location/z;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/location/z;-><init>(Lcom/google/android/maps/driveabout/location/z;)V

    .line 113
    const-string v0, "driveabout_orientation_filter"

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/z;->a(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v2

    .line 116
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/w;->f:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41f00000    # 30.0f

    .line 118
    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/w;->e:Landroid/location/Location;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/w;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/maps/driveabout/location/w;->g:F

    const v4, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/w;->e:Landroid/location/Location;

    .line 121
    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v3

    .line 120
    invoke-static {v3, v2}, Lcom/google/android/maps/driveabout/model/ae;->a(FF)F

    move-result v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/w;->c:Lcom/google/android/maps/driveabout/location/y;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/w;->e:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/location/y;->a(F)F

    move-result v0

    .line 123
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/location/w;->f:Z

    .line 129
    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/z;->a(F)V

    .line 130
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/w;->d:Lcom/google/googlenav/e/a;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->d()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/googlenav/e/a;->a(JF)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/z;->b(F)V

    .line 132
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/w;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/b;->onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V

    .line 133
    return-void

    .line 116
    :cond_0
    const/high16 v0, 0x41c80000    # 25.0f

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/w;->c:Lcom/google/android/maps/driveabout/location/y;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/location/y;->a(F)F

    move-result v0

    .line 126
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/location/w;->f:Z

    goto :goto_1
.end method
