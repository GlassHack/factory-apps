.class final Lcom/google/android/maps/driveabout/location/p;
.super Lcom/google/android/maps/driveabout/location/d;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/google/android/maps/driveabout/location/m;

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/location/m;Lcom/google/android/maps/driveabout/location/b;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 522
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/p;->c:Lcom/google/android/maps/driveabout/location/m;

    .line 523
    const-string v0, "driveabout_base_location"

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/location/d;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 527
    invoke-static {p1}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {p1}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/t;

    move-result-object v0

    const-string v2, "gps"

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/location/t;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    :cond_0
    invoke-static {p1}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v2, "remote_gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    invoke-static {p1}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/t;

    move-result-object v0

    const-string v2, "remote_gps"

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/location/t;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/p;->d:Z

    .line 533
    iput v1, p0, Lcom/google/android/maps/driveabout/location/p;->e:I

    .line 534
    return-void

    .line 530
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/p;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/location/p;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/p;->c:Lcom/google/android/maps/driveabout/location/m;

    .line 542
    invoke-static {v0}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/p;->c:Lcom/google/android/maps/driveabout/location/m;

    .line 543
    invoke-static {v0}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/t;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/t;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/p;->c:Lcom/google/android/maps/driveabout/location/m;

    .line 544
    invoke-static {v0}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "remote_gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/p;->c:Lcom/google/android/maps/driveabout/location/m;

    .line 545
    invoke-static {v0}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/t;

    move-result-object v0

    const-string v1, "remote_gps"

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/t;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/p;->d:Z

    .line 546
    return-void

    .line 545
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 555
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 556
    const-string v2, "network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 558
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/p;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    const-string v2, "driveabout_gps_fixup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 565
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/location/p;->d:Z

    .line 566
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/location/p;->e:I

    .line 569
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/p;->f:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/maps/driveabout/location/m;->b()F

    move-result v0

    .line 571
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 572
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_5

    move v0, v1

    .line 573
    :goto_2
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/location/p;->f:Z

    if-nez v2, :cond_0

    .line 580
    :cond_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/p;->f:Z

    .line 583
    new-instance v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/p;->g:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 584
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/p;->g:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Z)V

    .line 585
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/p;->g:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/location/p;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c(Z)V

    .line 586
    iget-object p1, p0, Lcom/google/android/maps/driveabout/location/p;->g:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 588
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/location/d;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 570
    :cond_4
    invoke-static {}, Lcom/google/android/maps/driveabout/location/m;->a()F

    move-result v0

    goto :goto_1

    .line 572
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 597
    invoke-static {}, Lcom/google/android/maps/driveabout/location/m;->f()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "onProviderDisabled: %s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    invoke-static {p1}, Lcom/google/glass/location/LocationHelper;->isGpsProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/location/p;->d:Z

    .line 600
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/location/p;->f:Z

    .line 602
    :cond_0
    return-void

    .line 597
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 609
    invoke-static {}, Lcom/google/android/maps/driveabout/location/m;->f()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "onProviderEnabled: %s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    invoke-static {p1}, Lcom/google/glass/location/LocationHelper;->isGpsProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/location/p;->d:Z

    .line 613
    :cond_0
    return-void

    .line 609
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 622
    invoke-static {}, Lcom/google/android/maps/driveabout/location/m;->f()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "onStatusChanged: provider=%s, status=%s "

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    if-ne p2, v5, :cond_1

    const-string v0, "available"

    :goto_0
    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    invoke-static {p1}, Lcom/google/glass/location/LocationHelper;->isGpsProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iput p2, p0, Lcom/google/android/maps/driveabout/location/p;->e:I

    .line 626
    if-eq p2, v5, :cond_0

    .line 637
    iput-boolean v6, p0, Lcom/google/android/maps/driveabout/location/p;->f:Z

    .line 640
    :cond_0
    return-void

    .line 622
    :cond_1
    const-string v0, "temporarily_unavailable"

    goto :goto_0
.end method
