.class public final Lcom/google/android/maps/driveabout/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/m;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/maps/driveabout/model/m;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ab;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ab;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/m;-><init>(II)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/model/m;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 82
    if-nez p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    .line 86
    if-ne v1, v3, :cond_2

    .line 87
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    .line 93
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    .line 94
    new-instance v0, Lcom/google/android/maps/driveabout/model/m;

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/model/m;-><init>(II)V

    goto :goto_0

    .line 95
    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 97
    const/16 v1, 0xe

    .line 98
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    .line 104
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    .line 105
    new-instance v0, Lcom/google/android/maps/driveabout/model/m;

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/model/m;-><init>(II)V

    goto :goto_0

    .line 106
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 107
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 111
    invoke-static {v1}, Lcom/google/android/maps/driveabout/util/f;->b(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/util/f;->a(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/m;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/m;)Lcom/google/googlenav/common/io/b/a;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 49
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/l;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v1

    .line 51
    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 53
    const/4 v1, 0x2

    .line 54
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 55
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/j/b/a/b/l;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 57
    const/4 v2, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 59
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    .line 61
    return-object v1
.end method

.method public static a(Landroid/location/Location;)Lcom/google/googlenav/d/a;
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 165
    new-instance v0, Lcom/google/googlenav/d/a;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/d/a;-><init>(II)V

    return-object v0
.end method

.method public static b(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 5

    .prologue
    const/high16 v4, 0x20000000

    const/4 v3, 0x1

    .line 132
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    .line 133
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    .line 134
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    .line 136
    rsub-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, -0x7

    shl-int v0, v3, v0

    .line 137
    mul-int/2addr v1, v0

    sub-int/2addr v1, v4

    .line 138
    mul-int/2addr v0, v2

    sub-int v0, v4, v0

    .line 139
    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2, v1, v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    return-object v2
.end method

.method public static b(Lcom/google/android/maps/driveabout/model/m;)Lcom/google/googlenav/common/io/b/a;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/l;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 72
    const/4 v1, 0x2

    .line 73
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v2

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 74
    return-object v0
.end method
