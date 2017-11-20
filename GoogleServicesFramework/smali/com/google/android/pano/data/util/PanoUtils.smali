.class public final Lcom/google/android/pano/data/util/PanoUtils;
.super Ljava/lang/Object;
.source "PanoUtils.java"


# direct methods
.method private static isPackageInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 23
    if-nez p0, :cond_1

    .line 24
    const-string v3, "PanoUtils"

    const-string v4, "Null PackageManager in isPackageInstalled method"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    :goto_0
    return v2

    .line 27
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 33
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isPanoInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 19
    const-string v0, "com.google.android.canvas"

    invoke-static {p0, v0}, Lcom/google/android/pano/data/util/PanoUtils;->isPackageInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
