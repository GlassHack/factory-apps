.class final Lcom/google/android/maps/driveabout/location/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/location/x;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/y;-><init>()V

    return-void
.end method


# virtual methods
.method final a(F)F
    .locals 5

    .prologue
    const v4, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x43b40000    # 360.0f

    .line 46
    iget v0, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 47
    iput p1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    .line 81
    :goto_0
    return p1

    .line 52
    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 53
    iget v0, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 54
    add-float/2addr p1, v2

    .line 61
    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    sub-float v0, p1, v0

    .line 63
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    move v0, p1

    .line 74
    :goto_2
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    .line 75
    add-float/2addr v0, v2

    .line 80
    :cond_2
    :goto_3
    iput v0, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    move p1, v0

    .line 81
    goto :goto_0

    .line 56
    :cond_3
    sub-float/2addr p1, v2

    goto :goto_1

    .line 65
    :cond_4
    iget v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_5

    .line 66
    iget v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    .line 67
    iget v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    goto :goto_2

    .line 69
    :cond_5
    iget v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    .line 70
    iget v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    goto :goto_2

    .line 76
    :cond_6
    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    .line 77
    sub-float/2addr v0, v2

    goto :goto_3
.end method
