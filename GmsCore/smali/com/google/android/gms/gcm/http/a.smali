.class public final Lcom/google/android/gms/gcm/http/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lcom/google/android/gms/gcm/http/a;


# instance fields
.field public volatile a:J

.field public volatile b:Ljava/lang/String;

.field c:Ljava/util/concurrent/ConcurrentHashMap;

.field volatile d:Z

.field public volatile e:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/http/a;->a:J

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/http/a;->b:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/http/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/gcm/http/a;
    .locals 2

    .prologue
    .line 74
    const-class v1, Lcom/google/android/gms/gcm/http/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/http/a;->f:Lcom/google/android/gms/gcm/http/a;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/google/android/gms/gcm/http/a;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/http/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/http/a;->f:Lcom/google/android/gms/gcm/http/a;

    .line 77
    :cond_0
    sget-object v0, Lcom/google/android/gms/gcm/http/a;->f:Lcom/google/android/gms/gcm/http/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 216
    if-nez p0, :cond_0

    move-object v0, v1

    .line 240
    :goto_0
    return-object v0

    .line 221
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 223
    if-nez v2, :cond_1

    move-object v0, v1

    .line 224
    goto :goto_0

    .line 227
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 233
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 234
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 237
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const-string v2, "GCM.HTTP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 240
    goto :goto_0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/gcm/http/a;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/gcm/http/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/http/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/http/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 124
    :goto_0
    return v0

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/http/a;->d:Z

    if-nez v0, :cond_1

    move v0, v2

    .line 107
    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/gcm/http/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    if-nez v0, :cond_2

    move v0, v2

    .line 114
    goto :goto_0

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/gcm/http/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/gcm/http/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/http/b;

    .line 119
    if-eqz v0, :cond_4

    iget-wide v4, v0, Lcom/google/android/gms/gcm/http/b;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    :goto_1
    if-eqz v1, :cond_4

    .line 120
    const-string v1, "GCM.HTTP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Last HTTP status code for blocked entry: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/google/android/gms/gcm/http/b;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move v1, v2

    .line 119
    goto :goto_1

    .line 123
    :cond_4
    monitor-exit v3

    move v0, v2

    .line 124
    goto :goto_0
.end method
