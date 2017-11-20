.class public final Lcom/google/android/gms/config/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/google/android/gms/config/a/a;

.field private static c:Ljava/lang/String;

.field private static d:I

.field private static e:Landroid/content/Intent;

.field private static final f:Ljava/nio/charset/Charset;

.field private static g:Landroid/content/ServiceConnection;

.field private static h:Landroid/content/BroadcastReceiver;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 33
    sput-object v1, Lcom/google/android/gms/config/a;->a:Landroid/content/Context;

    .line 34
    sput-object v1, Lcom/google/android/gms/config/a;->b:Lcom/google/android/gms/config/a/a;

    .line 35
    sput-object v1, Lcom/google/android/gms/config/a;->c:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/config/a;->d:I

    .line 38
    sput-object v1, Lcom/google/android/gms/config/a;->e:Landroid/content/Intent;

    .line 43
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/config/a;->f:Ljava/nio/charset/Charset;

    .line 45
    new-instance v0, Lcom/google/android/gms/config/b;

    invoke-direct {v0}, Lcom/google/android/gms/config/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/config/a;->g:Landroid/content/ServiceConnection;

    .line 64
    new-instance v0, Lcom/google/android/gms/config/c;

    invoke-direct {v0}, Lcom/google/android/gms/config/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/config/a;->h:Landroid/content/BroadcastReceiver;

    .line 509
    const-string v0, "^(1|true|t|yes|y|on)$"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/config/a;->i:Ljava/util/regex/Pattern;

    .line 511
    const-string v0, "^(0|false|f|no|n|off|)$"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/config/a;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 3

    .prologue
    const-wide/32 v0, 0xa8c0

    .line 480
    :try_start_0
    sget-object v2, Lcom/google/android/gms/config/a;->c:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/google/android/gms/config/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 484
    :goto_0
    return-wide v0

    .line 480
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v2

    goto :goto_0

    .line 482
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/config/a/a;)Lcom/google/android/gms/config/a/a;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/google/android/gms/config/a;->b:Lcom/google/android/gms/config/a/a;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 358
    sget-object v1, Lcom/google/android/gms/config/a;->g:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 359
    :try_start_0
    sget-object v0, Lcom/google/android/gms/config/a;->b:Lcom/google/android/gms/config/a/a;

    if-nez v0, :cond_1

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "no connection to config service"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 359
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 360
    :cond_1
    sget-object v0, Lcom/google/android/gms/config/a;->b:Lcom/google/android/gms/config/a/a;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/config/a/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 362
    if-nez v2, :cond_2

    const/4 v0, 0x0

    monitor-exit v1

    .line 363
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/config/a;->f:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 98
    const-class v1, Lcom/google/android/gms/config/a;

    monitor-enter v1

    .line 99
    :try_start_0
    sget v0, Lcom/google/android/gms/config/a;->d:I

    add-int/lit8 v0, v0, 0x1

    .line 100
    sput v0, Lcom/google/android/gms/config/a;->d:I

    if-ne v0, v2, :cond_1

    .line 104
    sput-object p0, Lcom/google/android/gms/config/a;->a:Landroid/content/Context;

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/config/a;->c:Ljava/lang/String;

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.config.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    sput-object v0, Lcom/google/android/gms/config/a;->e:Landroid/content/Intent;

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 112
    sget-object v2, Lcom/google/android/gms/config/a;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    sget-object v0, Lcom/google/android/gms/config/a;->e:Landroid/content/Intent;

    sget-object v2, Lcom/google/android/gms/config/a;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 130
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 123
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/config/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "ConfigClient"

    const-string v2, "connecting to Config Service with different package names"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .locals 10

    .prologue
    const-wide/16 v4, 0xbb8

    const/4 v0, 0x1

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 173
    sget-object v1, Lcom/google/android/gms/config/a;->g:Landroid/content/ServiceConnection;

    monitor-enter v1

    move-wide v2, v4

    .line 174
    :cond_0
    :try_start_0
    sget-object v8, Lcom/google/android/gms/config/a;->b:Lcom/google/android/gms/config/a/a;

    if-nez v8, :cond_2

    .line 175
    sget-object v8, Lcom/google/android/gms/config/a;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v8, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 176
    sget-object v2, Lcom/google/android/gms/config/a;->b:Lcom/google/android/gms/config/a/a;

    if-eqz v2, :cond_1

    monitor-exit v1

    .line 182
    :goto_0
    return v0

    .line 177
    :cond_1
    add-long v2, v6, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v2, v8

    .line 179
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_0

    const/4 v0, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    monitor-exit v1

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 195
    const-class v1, Lcom/google/android/gms/config/a;

    monitor-enter v1

    .line 196
    :try_start_0
    sget v0, Lcom/google/android/gms/config/a;->d:I

    if-nez v0, :cond_0

    .line 197
    const-string v0, "ConfigClient"

    const-string v2, "attempt to disconnect() when not connected"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    monitor-exit v1

    .line 206
    :goto_0
    return-void

    .line 200
    :cond_0
    sget v0, Lcom/google/android/gms/config/a;->d:I

    add-int/lit8 v0, v0, -0x1

    .line 201
    sput v0, Lcom/google/android/gms/config/a;->d:I

    if-lez v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    monitor-exit v1

    .line 203
    sget-object v0, Lcom/google/android/gms/config/a;->a:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/config/a;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    sget-object v0, Lcom/google/android/gms/config/a;->a:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/config/a;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 205
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/config/a;->b:Lcom/google/android/gms/config/a/a;

    goto :goto_0
.end method

.method static synthetic c()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/gms/config/a;->g:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/gms/config/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/gms/config/a;->e:Landroid/content/Intent;

    return-object v0
.end method
