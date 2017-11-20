.class public final Lcom/google/android/maps/driveabout/nav/q;
.super Lcom/google/android/maps/driveabout/util/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/e/t;
.implements Lcom/google/android/maps/driveabout/location/b;


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;

.field private static b:Lcom/google/android/maps/driveabout/nav/q;


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Landroid/os/Looper;

.field private e:Z

.field private final f:Lcom/google/android/maps/driveabout/nav/o;

.field private g:Landroid/location/Location;

.field private h:Lcom/google/android/maps/driveabout/e/u;

.field private i:Z

.field private j:Lcom/google/android/maps/driveabout/nav/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/nav/q;->a:Lcom/google/glass/logging/FormattingLogger;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/nav/q;->b:Lcom/google/android/maps/driveabout/nav/q;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/util/d;-><init>()V

    .line 87
    new-instance v0, Lcom/google/android/maps/driveabout/nav/v;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/nav/v;-><init>(Lcom/google/android/maps/driveabout/nav/q;Lcom/google/android/maps/driveabout/nav/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->j:Lcom/google/android/maps/driveabout/nav/v;

    .line 134
    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    .line 135
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;)V
    .locals 6

    .prologue
    .line 145
    const-string v0, "NavigationThread"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/google/android/maps/driveabout/nav/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/nav/v;-><init>(Lcom/google/android/maps/driveabout/nav/q;Lcom/google/android/maps/driveabout/nav/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->j:Lcom/google/android/maps/driveabout/nav/v;

    .line 146
    new-instance v1, Lcom/google/android/maps/driveabout/nav/ad;

    invoke-direct {v1, p2, p0}, Lcom/google/android/maps/driveabout/nav/ad;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/nav/q;)V

    .line 147
    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->ROAD_GRAPH:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bx;->c(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/store/bv;

    move-result-object v0

    .line 148
    new-instance v2, Lcom/google/android/maps/driveabout/e/u;

    invoke-direct {v2, p1, v0}, Lcom/google/android/maps/driveabout/e/u;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/store/bv;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/nav/q;->h:Lcom/google/android/maps/driveabout/e/u;

    .line 149
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->h:Lcom/google/android/maps/driveabout/e/u;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/e/u;->a(Lcom/google/android/maps/driveabout/e/t;)V

    .line 150
    new-instance v0, Lcom/google/android/maps/driveabout/nav/o;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/q;->h:Lcom/google/android/maps/driveabout/e/u;

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/nav/o;-><init>(Lcom/google/android/maps/driveabout/nav/ad;Lcom/google/android/maps/driveabout/e/u;Ljava/lang/Thread;Ljava/io/File;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/q;->e:Z

    .line 152
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/q;->start()V

    .line 156
    monitor-enter p0

    .line 157
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 159
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0

    .line 164
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/q;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/q;->g:Landroid/location/Location;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/nav/q;
    .locals 4

    .prologue
    .line 117
    const-class v1, Lcom/google/android/maps/driveabout/nav/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/maps/driveabout/nav/q;->b:Lcom/google/android/maps/driveabout/nav/q;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/google/android/maps/driveabout/nav/q;

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v2

    .line 119
    invoke-static {p0}, Lcom/google/android/maps/driveabout/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/maps/driveabout/nav/q;-><init>(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;)V

    sput-object v0, Lcom/google/android/maps/driveabout/nav/q;->b:Lcom/google/android/maps/driveabout/nav/q;

    .line 121
    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/nav/q;->b:Lcom/google/android/maps/driveabout/nav/q;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/nav/q;->j:Lcom/google/android/maps/driveabout/nav/v;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/nav/v;->a(Lcom/google/android/maps/driveabout/nav/v;Landroid/content/Context;)V

    .line 122
    sget-object v0, Lcom/google/android/maps/driveabout/nav/q;->b:Lcom/google/android/maps/driveabout/nav/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/q;->j()V

    .line 432
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/q;->g:Landroid/location/Location;

    .line 435
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/q;->i:Z

    if-nez v0, :cond_0

    .line 436
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/nav/s;

    const-string v2, "NavigationThread.IdleHandler"

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/nav/s;-><init>(Lcom/google/android/maps/driveabout/nav/q;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/q;->i:Z

    .line 450
    :cond_0
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 474
    sget-object v0, Lcom/google/android/maps/driveabout/nav/q;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "handleMessage() [msg=%s, msg.obj=%s]."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 551
    :goto_0
    return-void

    .line 479
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/q;->h()V

    goto :goto_0

    .line 483
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/q;->g()V

    goto :goto_0

    .line 487
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/q;->i()V

    goto :goto_0

    .line 492
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/google/android/maps/driveabout/nav/t;

    .line 493
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    .line 494
    invoke-static {v5}, Lcom/google/android/maps/driveabout/nav/t;->a(Lcom/google/android/maps/driveabout/nav/t;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v1

    invoke-static {v5}, Lcom/google/android/maps/driveabout/nav/t;->b(Lcom/google/android/maps/driveabout/nav/t;)[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/maps/driveabout/nav/t;->c(Lcom/google/android/maps/driveabout/nav/t;)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/maps/driveabout/nav/t;->d(Lcom/google/android/maps/driveabout/nav/t;)I

    move-result v4

    .line 495
    invoke-static {v5}, Lcom/google/android/maps/driveabout/nav/t;->e(Lcom/google/android/maps/driveabout/nav/t;)[Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v5

    .line 493
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;)V

    goto :goto_0

    .line 501
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/t;

    .line 502
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/t;->a(Lcom/google/android/maps/driveabout/nav/t;)Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/t;->f(Lcom/google/android/maps/driveabout/nav/t;)Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V

    goto :goto_0

    .line 508
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/t;

    .line 509
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/t;->b(Lcom/google/android/maps/driveabout/nav/t;)[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/t;->c(Lcom/google/android/maps/driveabout/nav/t;)I

    move-result v3

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/t;->e(Lcom/google/android/maps/driveabout/nav/t;)[Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/nav/o;->a([Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)V

    goto :goto_0

    .line 514
    :pswitch_6
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/w;

    invoke-virtual {v1, v0, v5}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/w;Z)V

    goto :goto_0

    .line 518
    :pswitch_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/a;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/a;)V

    goto :goto_0

    .line 522
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/q;->a(Landroid/location/Location;)V

    goto :goto_0

    .line 526
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/f;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    goto :goto_0

    .line 530
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/o;->f()V

    goto :goto_0

    .line 534
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/o;->h()V

    goto/16 :goto_0

    .line 538
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/o;->j()V

    goto/16 :goto_0

    .line 543
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/u;

    .line 544
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/u;->a(Lcom/google/android/maps/driveabout/nav/u;)Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/u;->b(Lcom/google/android/maps/driveabout/nav/u;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/w;I)V

    goto/16 :goto_0

    .line 548
    :pswitch_e
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/q;->h()V

    .line 549
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/o;->k()V

    goto/16 :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/q;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/q;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/q;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/q;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/q;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/nav/q;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/nav/q;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->g:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/nav/q;)Lcom/google/android/maps/driveabout/nav/o;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 396
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->d:Landroid/os/Looper;

    .line 397
    new-instance v0, Lcom/google/android/maps/driveabout/nav/r;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/nav/r;-><init>(Lcom/google/android/maps/driveabout/nav/q;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/q;->j()V

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/q;->e:Z

    .line 415
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/q;->j()V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/q;->e:Z

    .line 420
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/q;->j()V

    .line 424
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->d:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->d:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->d:Landroid/os/Looper;

    .line 428
    :cond_0
    return-void
.end method

.method private final j()V
    .locals 4

    .prologue
    .line 558
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 560
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Operation must be called on "

    sget-object v0, Lcom/google/android/maps/driveabout/nav/q;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 384
    const/16 v0, 0x13

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    sget-object v0, Lcom/google/android/maps/driveabout/nav/q;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting NavThread"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/q;->f()V

    .line 390
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 391
    sget-object v0, Lcom/google/android/maps/driveabout/nav/q;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavThread finished"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    sget-object v1, Lcom/google/android/maps/driveabout/nav/q;->a:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

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

.method public final a(IZ)V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)V
    .locals 10

    .prologue
    .line 204
    if-nez p2, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A to location must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iget-object v7, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    const/4 v9, 0x3

    new-instance v0, Lcom/google/android/maps/driveabout/nav/t;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/nav/t;-><init>(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;Lcom/google/android/maps/driveabout/nav/r;)V

    invoke-virtual {v8, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/f;)V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/n;)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/n;)V

    .line 353
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/w;I)V
    .locals 5

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    const/16 v2, 0xb

    new-instance v3, Lcom/google/android/maps/driveabout/nav/u;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lcom/google/android/maps/driveabout/nav/u;-><init>(Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/nav/r;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->j:Lcom/google/android/maps/driveabout/nav/v;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/v;->a(Lcom/google/android/maps/driveabout/nav/v;)V

    .line 130
    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/nav/n;)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->f:Lcom/google/android/maps/driveabout/nav/o;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/o;->b(Lcom/google/android/maps/driveabout/nav/n;)V

    .line 365
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->h:Lcom/google/android/maps/driveabout/e/u;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->h:Lcom/google/android/maps/driveabout/e/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/u;->b()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/q;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/nav/q;->b:Lcom/google/android/maps/driveabout/nav/q;

    .line 297
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/q;->c:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    return-void
.end method

.method public final onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 331
    return-void
.end method
