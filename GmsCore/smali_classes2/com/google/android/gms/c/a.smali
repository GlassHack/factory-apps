.class public Lcom/google/android/gms/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field private static d:Ljava/lang/Boolean;

.field private static e:Ljava/lang/Boolean;

.field private static f:Ljava/lang/Boolean;

.field private static g:Lcom/google/android/gms/c/a;

.field private static h:Ljava/util/concurrent/Executor;

.field private static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "content://com.google.android.gsf.gservices/main"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/c/a;->a:Landroid/net/Uri;

    .line 42
    const-string v0, "content://com.google.android.gsf.gservices/main_diff"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/c/a;->b:Landroid/net/Uri;

    .line 44
    const-string v0, "content://com.google.android.gsf.gservices/override"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/c/a;->c:Landroid/net/Uri;

    .line 85
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/c/a;->g:Lcom/google/android/gms/c/a;

    .line 87
    new-instance v0, Lcom/google/android/gms/c/c;

    invoke-direct {v0}, Lcom/google/android/gms/c/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/a;->h:Ljava/util/concurrent/Executor;

    .line 89
    const/16 v0, 0x2710

    sput v0, Lcom/google/android/gms/c/a;->i:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/c/a;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/google/android/gms/c/a;->g:Lcom/google/android/gms/c/a;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/google/android/gms/c/a;->g:Lcom/google/android/gms/c/a;

    .line 114
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Lcom/google/android/gms/c/i;

    invoke-direct {v0}, Lcom/google/android/gms/c/i;-><init>()V

    goto :goto_0

    .line 99
    :cond_1
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    new-instance v0, Lcom/google/android/gms/c/h;

    invoke-direct {v0}, Lcom/google/android/gms/c/h;-><init>()V

    goto :goto_0

    .line 102
    :cond_2
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    new-instance v0, Lcom/google/android/gms/c/g;

    invoke-direct {v0}, Lcom/google/android/gms/c/g;-><init>()V

    goto :goto_0

    .line 105
    :cond_3
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    new-instance v0, Lcom/google/android/gms/c/f;

    invoke-direct {v0}, Lcom/google/android/gms/c/f;-><init>()V

    goto :goto_0

    .line 108
    :cond_4
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    new-instance v0, Lcom/google/android/gms/c/e;

    invoke-direct {v0}, Lcom/google/android/gms/c/e;-><init>()V

    goto :goto_0

    .line 111
    :cond_5
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    new-instance v0, Lcom/google/android/gms/c/d;

    invoke-direct {v0}, Lcom/google/android/gms/c/d;-><init>()V

    goto :goto_0

    .line 114
    :cond_6
    new-instance v0, Lcom/google/android/gms/c/a;

    invoke-direct {v0}, Lcom/google/android/gms/c/a;-><init>()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/pm/PackageManager;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 38
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gsf"

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CheckinService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No service "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v0, "disable"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "enable"

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "checkin_enable_gms"

    invoke-static {v2, v3, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/c/a;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 130
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "checkin_enable_gms"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_enable_gms"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 186
    const-class v2, Lcom/google/android/gms/c/a;

    monitor-enter v2

    .line 187
    :try_start_0
    const-string v3, "checkin_disable_gsf"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 188
    invoke-static {p0}, Lcom/google/android/gms/c/a;->b(Landroid/content/Context;)Z

    move-result v3

    .line 189
    sget-object v4, Lcom/google/android/gms/c/a;->e:Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/c/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v0, :cond_0

    sget-object v4, Lcom/google/android/gms/c/a;->d:Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/c/a;->d:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 193
    monitor-exit v2

    .line 257
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/c/a;->e:Ljava/lang/Boolean;

    .line 196
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/c/a;->d:Ljava/lang/Boolean;

    .line 197
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :try_start_1
    const-string v0, "com.google.android.gsf"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    new-instance v0, Lcom/google/android/gms/c/b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/c/b;-><init>(Landroid/content/pm/PackageManager;)V

    .line 256
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/c/a;->h:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/c/a;->a(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 202
    :catch_0
    move-exception v0

    const-string v0, "CheckinService"

    const-string v1, "GoogleServicesFramework does not exist, no need to disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 134
    const-class v2, Lcom/google/android/gms/c/a;

    monitor-enter v2

    .line 135
    :try_start_0
    sget-object v0, Lcom/google/android/gms/c/a;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/c/a;->f:Ljava/lang/Boolean;

    sget-object v3, Lcom/google/android/gms/c/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    monitor-exit v2

    .line 159
    :goto_0
    return v1

    .line 139
    :cond_0
    sget-object v0, Lcom/google/android/gms/c/a;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/c/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    monitor-exit v2

    .line 144
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 146
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 149
    const-string v3, "com.google.android.gsf"

    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ".checkin.CheckinService"

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const-string v0, "CheckinService"

    const-string v1, "GSF Checkin still active"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    .line 156
    :goto_1
    const-class v1, Lcom/google/android/gms/c/a;

    monitor-enter v1

    .line 157
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/c/a;->f:Ljava/lang/Boolean;

    .line 158
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v0

    .line 159
    goto :goto_0

    .line 158
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static k()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/google/android/gms/c/a;->h:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/gms/c/a;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic o()V
    .locals 2

    .prologue
    .line 38
    :try_start_0
    sget v0, Lcom/google/android/gms/c/a;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic p()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/gms/c/a;->d:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/ContentResolver;)I
    .locals 2

    .prologue
    .line 309
    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    const/4 v0, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p1, p3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 298
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const-string v0, "package_verifier_user_consent"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    const-string v0, "package_verifier_enable"

    return-object v0
.end method

.method public e(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    const-string v0, "timestamp"

    return-object v0
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string v0, "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

    return-object v0
.end method

.method public g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    const-string v0, "nowisconvenient"

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x2

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public m()J
    .locals 4

    .prologue
    .line 364
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/cache"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method
