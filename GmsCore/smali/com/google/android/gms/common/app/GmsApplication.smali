.class public final Lcom/google/android/gms/common/app/GmsApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static a:I

.field private static volatile b:Lcom/google/android/gms/common/app/GmsApplication;


# instance fields
.field private c:Lcom/android/d/s;

.field private d:Lcom/android/d/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/app/GmsApplication;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 68
    const-class v1, Lcom/google/android/gms/common/app/GmsApplication;

    monitor-enter v1

    .line 69
    :try_start_0
    sput-object p0, Lcom/google/android/gms/common/app/GmsApplication;->b:Lcom/google/android/gms/common/app/GmsApplication;

    .line 70
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 155
    :cond_0
    sget v0, Lcom/google/android/gms/common/app/GmsApplication;->a:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "GMS Core PID not set yet! You must be calling this before onCreate..."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/b;->a(ZLjava/lang/Object;)V

    .line 157
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sget v3, Lcom/google/android/gms/common/app/GmsApplication;->a:I

    if-ne v0, v3, :cond_2

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Current process ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is not the GMS Core main process ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/google/android/gms/common/app/GmsApplication;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/b;->a(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 155
    goto :goto_1

    :cond_2
    move v1, v2

    .line 157
    goto :goto_2
.end method

.method public static b()Lcom/google/android/gms/common/app/GmsApplication;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/android/gms/common/app/GmsApplication;->b:Lcom/google/android/gms/common/app/GmsApplication;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Z)Lcom/android/d/s;
    .locals 5

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/app/GmsApplication;->d:Lcom/android/d/s;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/common/app/GmsApplication;->d:Lcom/android/d/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :goto_0
    monitor-exit p0

    return-object v0

    .line 198
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/d/a/a;

    new-instance v1, Lcom/google/android/gms/auth/be/a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/auth/be/a;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Lcom/android/d/a/a;-><init>(Lcom/android/d/a/j;)V

    .line 199
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/gms/common/app/GmsApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "volleyApiary"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    new-instance v2, Lcom/android/d/s;

    new-instance v3, Lcom/android/d/a/d;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/d/a/d;-><init>(Ljava/io/File;B)V

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v1}, Lcom/android/d/s;-><init>(Lcom/android/d/b;Lcom/android/d/j;B)V

    iput-object v2, p0, Lcom/google/android/gms/common/app/GmsApplication;->d:Lcom/android/d/s;

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/common/app/GmsApplication;->d:Lcom/android/d/s;

    invoke-virtual {v0}, Lcom/android/d/s;->a()V

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/common/app/GmsApplication;->d:Lcom/android/d/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 77
    invoke-static {p1}, Lcom/google/android/gms/common/app/b;->a(Landroid/content/Context;)V

    .line 80
    invoke-static {p0}, Lcom/google/android/gms/common/util/h;->a(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public final declared-synchronized c()Lcom/android/d/s;
    .locals 6

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 178
    sget-object v0, Lcom/google/android/gms/common/a/a;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x5d4044

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 180
    const-string v0, "GmsApplication"

    const-string v2, "Using Auth Proxy for data requests."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/app/GmsApplication;->a(Z)Lcom/android/d/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 191
    :goto_0
    monitor-exit p0

    return-object v0

    .line 183
    :cond_0
    :try_start_1
    const-string v0, "GmsApplication"

    const-string v2, "Using standard stack for data requests."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/common/app/GmsApplication;->c:Lcom/android/d/s;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/google/android/gms/common/app/GmsApplication;->c:Lcom/android/d/s;

    goto :goto_0

    .line 187
    :cond_1
    new-instance v0, Lcom/android/d/a/a;

    new-instance v2, Lcom/google/android/gms/common/server/m;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/common/server/m;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v2}, Lcom/android/d/a/a;-><init>(Lcom/android/d/a/j;)V

    .line 188
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/gms/common/app/GmsApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "volley"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    new-instance v2, Lcom/android/d/s;

    new-instance v3, Lcom/android/d/a/d;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/d/a/d;-><init>(Ljava/io/File;B)V

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v1}, Lcom/android/d/s;-><init>(Lcom/android/d/b;Lcom/android/d/j;B)V

    iput-object v2, p0, Lcom/google/android/gms/common/app/GmsApplication;->c:Lcom/android/d/s;

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/common/app/GmsApplication;->c:Lcom/android/d/s;

    invoke-virtual {v0}, Lcom/android/d/s;->a()V

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/common/app/GmsApplication;->c:Lcom/android/d/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onCreate()V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 86
    invoke-static {p0}, Lcom/google/android/gsf/e;->a(Landroid/content/Context;)V

    .line 92
    invoke-static {p0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 93
    sput-object p0, Lcom/google/android/gms/common/a/k;->a:Landroid/content/Context;

    .line 97
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/security/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/security/ProviderInstallerImpl;->insertProviderGated(Landroid/content/Context;Lcom/google/android/gms/common/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.INITIALIZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/common/app/GmsApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/app/GmsApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/google/android/gms/common/app/GmsApplication;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/common/app/GmsApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 113
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/app/GmsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 115
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 116
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    sput v0, Lcom/google/android/gms/common/app/GmsApplication;->a:I

    .line 122
    :cond_1
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "GmsApplication"

    const-string v2, "Unable to install secure provider, due to exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
