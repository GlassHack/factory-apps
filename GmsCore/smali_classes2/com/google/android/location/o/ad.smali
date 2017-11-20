.class public final Lcom/google/android/location/o/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/PendingIntent;Landroid/content/pm/PackageManager;)I
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const/4 v0, 0x2

    .line 54
    :goto_0
    return v0

    .line 49
    :cond_0
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 27
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_0

    .line 29
    const/4 v0, 0x2

    .line 34
    :goto_0
    return v0

    .line 30
    :cond_0
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 32
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
