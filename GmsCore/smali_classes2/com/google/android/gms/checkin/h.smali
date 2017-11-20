.class public final Lcom/google/android/gms/checkin/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 51
    .line 53
    :try_start_0
    const-string v0, "com.google.android.gsf"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 54
    const-string v0, "CheckinService"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    const-string v1, "CheckinTask_securityToken"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v0

    .line 58
    :goto_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 60
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    const-string v3, "security_token"

    invoke-virtual {v4, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 63
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :cond_0
    :goto_1
    return-wide v0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    :try_start_2
    const-string v3, "CheckinUtil"

    const-string v4, "Error reading backup security token file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 70
    :catch_1
    move-exception v2

    :goto_2
    const-string v2, "CheckinUtil"

    const-string v3, "Cannot read token, failed to find GoogleServicesFramework package"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    move-wide v0, v2

    goto :goto_2

    .line 67
    :catch_3
    move-exception v2

    goto :goto_1

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method
