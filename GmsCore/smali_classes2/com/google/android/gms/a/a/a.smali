.class public final Lcom/google/android/gms/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field b:Lcom/google/android/gms/common/a;

.field c:Lcom/google/android/gms/a/a/a/a;

.field d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcom/google/android/gms/a/a/a;->a:Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/a/a/a;->d:Z

    .line 77
    return-void
.end method

.method private static a(Lcom/google/android/gms/common/a;)Lcom/google/android/gms/a/a/a/a;
    .locals 2

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/a/a/a/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 226
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()Lcom/google/android/gms/a/a/b;
    .locals 4

    .prologue
    .line 106
    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->c(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/a/a/a;->b:Lcom/google/android/gms/common/a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/a/a/a;->c:Lcom/google/android/gms/a/a/a/a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-boolean v0, p0, Lcom/google/android/gms/a/a/a;->d:Z

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AdvertisingIdService is not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/a/a/b;

    iget-object v1, p0, Lcom/google/android/gms/a/a/a;->c:Lcom/google/android/gms/a/a/a/a;

    invoke-interface {v1}, Lcom/google/android/gms/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/a/a/a;->c:Lcom/google/android/gms/a/a/a/a;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/gms/a/a/a/a;->a(Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/a/a/b;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v1, "AdvertisingIdClient"

    const-string v2, "GMS remote exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/a/a/b;
    .locals 2

    .prologue
    .line 205
    new-instance v1, Lcom/google/android/gms/a/a/a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/a/a/a;-><init>(Landroid/content/Context;)V

    .line 207
    :try_start_0
    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->c(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/google/android/gms/a/a/a;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {v1}, Lcom/google/android/gms/a/a/a;->b()V

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/a/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/a/a/a;->b(Landroid/content/Context;)Lcom/google/android/gms/common/a;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/a/a/a;->b:Lcom/google/android/gms/common/a;

    iget-object v0, v1, Lcom/google/android/gms/a/a/a;->a:Landroid/content/Context;

    iget-object v0, v1, Lcom/google/android/gms/a/a/a;->b:Lcom/google/android/gms/common/a;

    invoke-static {v0}, Lcom/google/android/gms/a/a/a;->a(Lcom/google/android/gms/common/a;)Lcom/google/android/gms/a/a/a/a;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/a/a/a;->c:Lcom/google/android/gms/a/a/a/a;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/a/a/a;->d:Z

    .line 208
    invoke-direct {v1}, Lcom/google/android/gms/a/a/a;->a()Lcom/google/android/gms/a/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 210
    invoke-direct {v1}, Lcom/google/android/gms/a/a/a;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {v1}, Lcom/google/android/gms/a/a/a;->b()V

    throw v0
.end method

.method private static b(Landroid/content/Context;)Lcom/google/android/gms/common/a;
    .locals 3

    .prologue
    .line 161
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 162
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/k;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/google/android/gms/common/i; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    new-instance v0, Lcom/google/android/gms/common/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/a;-><init>()V

    .line 177
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    return-object v0

    .line 165
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/common/i;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/i;-><init>(I)V

    throw v0

    .line 170
    :catch_1
    move-exception v0

    .line 173
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 183
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->c(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/a/a/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/a/a/a;->b:Lcom/google/android/gms/common/a;

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/a/a/a;->d:Z

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/a/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/a/a/a;->b:Lcom/google/android/gms/common/a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/a/a/a;->d:Z

    .line 144
    iput-object v3, p0, Lcom/google/android/gms/a/a/a;->c:Lcom/google/android/gms/a/a/a/a;

    .line 145
    iput-object v3, p0, Lcom/google/android/gms/a/a/a;->b:Lcom/google/android/gms/common/a;

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 141
    const-string v1, "AdvertisingIdClient"

    const-string v2, "AdvertisingIdClient unbindService failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
