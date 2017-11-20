.class public final Lcom/google/android/gms/common/util/j;
.super Ljava/lang/Object;


# direct methods
.method private static br(I)Z
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dg()Z
    .locals 1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/common/util/j;->br(I)Z

    move-result v0

    return v0
.end method

.method public static dh()Z
    .locals 1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/gms/common/util/j;->br(I)Z

    move-result v0

    return v0
.end method

.method public static di()Z
    .locals 1

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/gms/common/util/j;->br(I)Z

    move-result v0

    return v0
.end method

.method public static dj()Z
    .locals 1

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/gms/common/util/j;->br(I)Z

    move-result v0

    return v0
.end method

.method public static dk()Z
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/common/util/j;->br(I)Z

    move-result v0

    return v0
.end method

.method public static dl()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/j;->dm()Z

    move-result v0

    return v0
.end method

.method public static dm()Z
    .locals 1

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/j;->br(I)Z

    move-result v0

    return v0
.end method
