.class public final Lcom/google/android/gms/checkin/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/a;
    .locals 3

    .prologue
    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 50
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/k;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/google/android/gms/common/i; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    new-instance v0, Lcom/google/android/gms/common/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/a;-><init>()V

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.checkin.BIND_TO_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/common/i;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/i;-><init>(I)V

    throw v0

    .line 57
    :catch_1
    move-exception v0

    .line 60
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection failure."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/common/a;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/checkin/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/checkin/a/a;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lcom/google/android/gms/checkin/a/a;->a()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 115
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v1

    .line 120
    const-string v2, "CheckinServiceClient"

    const-string v3, "unbind failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    :try_start_2
    const-string v1, "CheckinServiceClient"

    const-string v2, "GMS remote exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote exception."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 121
    :goto_1
    throw v0

    .line 112
    :catch_2
    move-exception v0

    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted exception."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    :catch_3
    move-exception v1

    .line 120
    const-string v2, "CheckinServiceClient"

    const-string v3, "unbind failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
