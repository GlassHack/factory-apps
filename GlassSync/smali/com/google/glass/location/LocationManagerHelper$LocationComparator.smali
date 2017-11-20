.class public Lcom/google/glass/location/LocationManagerHelper$LocationComparator;
.super Ljava/lang/Object;
.source "LocationManagerHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/LocationManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private final freshnessThreshold:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "freshnessThreshold"    # J

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-wide p1, p0, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;->freshnessThreshold:J

    .line 385
    return-void
.end method

.method private isBetterThan(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8
    .param p1, "a"    # Landroid/location/Location;
    .param p2, "b"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 403
    if-nez p1, :cond_1

    move v0, v1

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 406
    :cond_1
    if-eqz p2, :cond_0

    .line 413
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;->freshnessThreshold:J

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 416
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;->freshnessThreshold:J

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v0, v1

    .line 417
    goto :goto_0

    .line 422
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-nez v2, :cond_3

    .line 423
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 428
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 429
    goto :goto_0

    .line 431
    :cond_4
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public compare(Landroid/location/Location;Landroid/location/Location;)I
    .locals 1
    .param p1, "a"    # Landroid/location/Location;
    .param p2, "b"    # Landroid/location/Location;

    .prologue
    .line 389
    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;->isBetterThan(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 380
    check-cast p1, Landroid/location/Location;

    check-cast p2, Landroid/location/Location;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;->compare(Landroid/location/Location;Landroid/location/Location;)I

    move-result v0

    return v0
.end method
