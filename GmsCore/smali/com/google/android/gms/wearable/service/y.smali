.class public final Lcom/google/android/gms/wearable/service/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Lcom/google/android/gms/wearable/node/ay;

.field private static c:Lcom/google/android/gms/wearable/node/a/a;

.field private static d:Lcom/google/android/gms/wearable/node/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/wearable/service/y;->a:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/wearable/node/ay;
    .locals 2

    .prologue
    .line 112
    const-class v0, Lcom/google/android/gms/wearable/service/y;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/service/y;->b:Lcom/google/android/gms/wearable/node/ay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    const-class v3, Lcom/google/android/gms/wearable/service/y;

    monitor-enter v3

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/wearable/service/y;->a:Z

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "WearableService"

    const-string v1, "Attempted to re-initialize wearable statics, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 45
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/google/android/gms/wearable/service/y;->a:Z

    .line 47
    new-instance v4, Lcom/google/android/gms/wearable/b/a;

    sget-object v0, Lcom/google/android/gms/wearable/a/b;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v5, "goldfish"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/wearable/b/a;-><init>(Landroid/content/Context;Z)V

    sput-object v4, Lcom/google/android/gms/wearable/b/a;->a:Lcom/google/android/gms/wearable/b/a;

    .line 50
    new-instance v0, Lcom/google/android/gms/wearable/node/al;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/node/al;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-interface {v0}, Lcom/google/android/gms/wearable/node/ax;->a()V

    .line 53
    new-instance v1, Lcom/google/android/gms/wearable/node/ak;

    invoke-direct {v1, p0}, Lcom/google/android/gms/wearable/node/ak;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-static {p0}, Lcom/google/android/gms/wearable/node/z;->a(Landroid/content/Context;)Lcom/google/android/gms/wearable/node/z;

    move-result-object v2

    .line 56
    invoke-virtual {v2, v1}, Lcom/google/android/gms/wearable/node/z;->a(Lcom/google/android/gms/wearable/node/d;)V

    .line 58
    new-instance v4, Lcom/google/android/gms/wearable/node/m;

    invoke-direct {v4}, Lcom/google/android/gms/wearable/node/m;-><init>()V

    .line 59
    sget-object v5, Lcom/google/android/gms/wearable/node/m;->a:Lcom/google/android/gms/wearable/node/m;

    if-eqz v5, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DataItemService singleton can only be set once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    move v0, v2

    .line 47
    goto :goto_1

    .line 59
    :cond_3
    :try_start_2
    sput-object v4, Lcom/google/android/gms/wearable/node/m;->a:Lcom/google/android/gms/wearable/node/m;

    .line 60
    iput-object v2, v4, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/wearable/node/m;->f:Landroid/content/ContentResolver;

    .line 62
    iput-object v0, v4, Lcom/google/android/gms/wearable/node/m;->d:Lcom/google/android/gms/wearable/node/ax;

    .line 63
    const-string v2, "wearable.data_service.settings"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/wearable/node/m;->e:Landroid/content/SharedPreferences;

    .line 65
    new-instance v2, Lcom/google/android/gms/wearable/node/ar;

    invoke-direct {v2}, Lcom/google/android/gms/wearable/node/ar;-><init>()V

    .line 66
    sput-object v2, Lcom/google/android/gms/wearable/node/ar;->a:Lcom/google/android/gms/wearable/node/ar;

    .line 69
    new-instance v5, Lcom/google/android/gms/wearable/node/ay;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/google/android/gms/wearable/node/ay;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v5, Lcom/google/android/gms/wearable/service/y;->b:Lcom/google/android/gms/wearable/node/ay;

    .line 71
    new-instance v5, Lcom/google/android/gms/wearable/node/q;

    invoke-direct {v5}, Lcom/google/android/gms/wearable/node/q;-><init>()V

    .line 72
    new-instance v6, Lcom/google/android/gms/wearable/node/g;

    invoke-direct {v6}, Lcom/google/android/gms/wearable/node/g;-><init>()V

    .line 73
    new-instance v7, Lcom/google/android/gms/wearable/node/at;

    invoke-direct {v7}, Lcom/google/android/gms/wearable/node/at;-><init>()V

    .line 75
    new-instance v8, Lcom/google/android/gms/wearable/node/aj;

    invoke-direct {v8}, Lcom/google/android/gms/wearable/node/aj;-><init>()V

    .line 76
    sget-object v9, Lcom/google/android/gms/wearable/node/aj;->a:Lcom/google/android/gms/wearable/node/aj;

    if-eqz v9, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NodeService singleton can only be set once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sput-object v8, Lcom/google/android/gms/wearable/node/aj;->a:Lcom/google/android/gms/wearable/node/aj;

    .line 77
    iput-object v0, v8, Lcom/google/android/gms/wearable/node/aj;->d:Lcom/google/android/gms/wearable/node/ax;

    .line 79
    iput-object v1, v4, Lcom/google/android/gms/wearable/node/m;->c:Lcom/google/android/gms/wearable/node/d;

    .line 81
    iput-object v4, v6, Lcom/google/android/gms/wearable/node/g;->a:Lcom/google/android/gms/wearable/node/m;

    iget-object v9, v6, Lcom/google/android/gms/wearable/node/g;->a:Lcom/google/android/gms/wearable/node/m;

    iput-object v6, v9, Lcom/google/android/gms/wearable/node/m;->g:Lcom/google/android/gms/wearable/node/g;

    .line 83
    iput-object v0, v5, Lcom/google/android/gms/wearable/node/q;->a:Lcom/google/android/gms/wearable/node/ax;

    .line 84
    iput-object v4, v5, Lcom/google/android/gms/wearable/node/q;->b:Lcom/google/android/gms/wearable/node/m;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/wearable/node/m;->a(Lcom/google/android/gms/wearable/node/j;)V

    .line 85
    const-string v9, "wearable.data_transport.settings"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, v5, Lcom/google/android/gms/wearable/node/q;->c:Landroid/content/SharedPreferences;

    .line 88
    iput-object v0, v7, Lcom/google/android/gms/wearable/node/at;->a:Lcom/google/android/gms/wearable/node/ax;

    .line 89
    iput-object v2, v7, Lcom/google/android/gms/wearable/node/at;->b:Lcom/google/android/gms/wearable/node/ar;

    .line 90
    iput-object v7, v2, Lcom/google/android/gms/wearable/node/ar;->b:Lcom/google/android/gms/wearable/node/at;

    .line 92
    sget-object v2, Lcom/google/android/gms/wearable/service/y;->b:Lcom/google/android/gms/wearable/node/ay;

    iput-object v0, v2, Lcom/google/android/gms/wearable/node/ay;->c:Lcom/google/android/gms/wearable/node/ax;

    .line 93
    sget-object v0, Lcom/google/android/gms/wearable/service/y;->b:Lcom/google/android/gms/wearable/node/ay;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/wearable/node/ay;->a(Lcom/google/android/gms/wearable/node/w;)V

    .line 94
    sget-object v0, Lcom/google/android/gms/wearable/service/y;->b:Lcom/google/android/gms/wearable/node/ay;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/wearable/node/ay;->a(Lcom/google/android/gms/wearable/node/w;)V

    .line 95
    sget-object v0, Lcom/google/android/gms/wearable/service/y;->b:Lcom/google/android/gms/wearable/node/ay;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/wearable/node/ay;->a(Lcom/google/android/gms/wearable/node/w;)V

    .line 96
    sget-object v0, Lcom/google/android/gms/wearable/service/y;->b:Lcom/google/android/gms/wearable/node/ay;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/wearable/node/ay;->a(Lcom/google/android/gms/wearable/node/w;)V

    .line 98
    new-instance v0, Lcom/google/android/gms/wearable/node/a/a;

    invoke-static {}, Lcom/google/android/gms/wearable/service/h;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/wearable/node/a/a;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/google/android/gms/wearable/service/y;->c:Lcom/google/android/gms/wearable/node/a/a;

    .line 99
    new-instance v0, Lcom/google/android/gms/wearable/node/a/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/node/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/wearable/service/y;->d:Lcom/google/android/gms/wearable/node/a/b;

    .line 100
    sget-object v0, Lcom/google/android/gms/wearable/service/y;->c:Lcom/google/android/gms/wearable/node/a/a;

    sget-object v2, Lcom/google/android/gms/wearable/service/y;->b:Lcom/google/android/gms/wearable/node/ay;

    iput-object v2, v0, Lcom/google/android/gms/wearable/node/a/a;->e:Lcom/google/android/gms/wearable/node/ay;

    .line 102
    const-string v0, "DataTransport"

    invoke-static {v0, v5}, Lcom/google/android/gms/wearable/service/WearableService;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/d/c;)V

    .line 103
    const-string v0, "DataService"

    invoke-static {v0, v4}, Lcom/google/android/gms/wearable/service/WearableService;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/d/c;)V

    .line 104
    const-string v0, "AssetTransport"

    invoke-static {v0, v6}, Lcom/google/android/gms/wearable/service/WearableService;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/d/c;)V

    .line 105
    const-string v0, "AssetStorage"

    invoke-static {v0, v1}, Lcom/google/android/gms/wearable/service/WearableService;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/d/c;)V

    .line 106
    const-string v0, "WearableTransport"

    sget-object v1, Lcom/google/android/gms/wearable/service/y;->b:Lcom/google/android/gms/wearable/node/ay;

    invoke-static {v0, v1}, Lcom/google/android/gms/wearable/service/WearableService;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/d/c;)V

    .line 107
    const-string v0, "ConnectionServiceManager"

    sget-object v1, Lcom/google/android/gms/wearable/service/y;->c:Lcom/google/android/gms/wearable/node/a/a;

    invoke-static {v0, v1}, Lcom/google/android/gms/wearable/service/WearableService;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/d/c;)V

    .line 108
    const-string v0, "ConnectionServiceHelper"

    sget-object v1, Lcom/google/android/gms/wearable/service/y;->d:Lcom/google/android/gms/wearable/node/a/b;

    invoke-static {v0, v1}, Lcom/google/android/gms/wearable/service/WearableService;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/d/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized b()Lcom/google/android/gms/wearable/node/a/b;
    .locals 2

    .prologue
    .line 116
    const-class v0, Lcom/google/android/gms/wearable/service/y;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/service/y;->d:Lcom/google/android/gms/wearable/node/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c()Lcom/google/android/gms/wearable/node/a/a;
    .locals 2

    .prologue
    .line 120
    const-class v0, Lcom/google/android/gms/wearable/service/y;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/service/y;->c:Lcom/google/android/gms/wearable/node/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
