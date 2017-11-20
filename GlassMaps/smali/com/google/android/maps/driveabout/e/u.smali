.class public final Lcom/google/android/maps/driveabout/e/u;
.super Lcom/google/android/maps/driveabout/util/d;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Looper;

.field private final c:Lcom/google/android/maps/driveabout/e/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/store/bv;)V
    .locals 1

    .prologue
    .line 51
    const-string v0, "RouteFinderThread"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/google/android/maps/driveabout/e/r;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/maps/driveabout/e/r;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/store/bv;Ljava/lang/Thread;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/u;->c:Lcom/google/android/maps/driveabout/e/r;

    .line 55
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/u;->start()V

    .line 59
    monitor-enter p0

    .line 60
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/u;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 62
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0

    .line 67
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 151
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/u;->e()V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/e/w;

    .line 158
    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/u;->c:Lcom/google/android/maps/driveabout/e/r;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/w;->a(Lcom/google/android/maps/driveabout/e/w;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/w;->b(Lcom/google/android/maps/driveabout/e/w;)Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/e/r;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/e/u;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/e/u;->a(Landroid/os/Message;)V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 116
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/u;->b:Landroid/os/Looper;

    .line 117
    new-instance v0, Lcom/google/android/maps/driveabout/e/v;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/e/v;-><init>(Lcom/google/android/maps/driveabout/e/u;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/u;->a:Landroid/os/Handler;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/u;->f()V

    .line 133
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/u;->b:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/u;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/u;->b:Landroid/os/Looper;

    .line 137
    :cond_0
    return-void
.end method

.method private final f()V
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on RouteFinderThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 104
    const/16 v0, 0x13

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    const-string v0, "RouteFinderThread"

    const-string v1, "Starting RouteFinderThread"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/u;->d()V

    .line 110
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 111
    const-string v0, "RouteFinderThread"

    const-string v1, "RouteFinderThread finished"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string v1, "RouteFinderThread"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/t;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/u;->c:Lcom/google/android/maps/driveabout/e/r;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/e/r;->a(Lcom/google/android/maps/driveabout/e/t;)V

    .line 99
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 6

    .prologue
    .line 71
    const-string v0, "RouteFinderThread"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Trying to find offline route from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/u;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/maps/driveabout/e/w;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lcom/google/android/maps/driveabout/e/w;-><init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/e/v;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/u;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/u;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/u;->c:Lcom/google/android/maps/driveabout/e/r;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/r;->a()V

    .line 92
    return-void
.end method
