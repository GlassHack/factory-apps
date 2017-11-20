.class final Lcom/google/android/location/places/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/location/o/af;

.field private d:Lcom/google/android/gms/playlog/b;

.field private e:Lcom/google/android/location/o/n;

.field private f:Lcom/google/android/gms/location/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/location/places/av;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/google/android/location/places/av;->b:Landroid/content/Context;

    .line 126
    new-instance v0, Lcom/google/android/location/o/af;

    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/o/af;-><init>(Lcom/google/android/gms/common/util/i;)V

    iput-object v0, p0, Lcom/google/android/location/places/av;->c:Lcom/google/android/location/o/af;

    .line 129
    return-void
.end method

.method private a(Lcom/google/c/f/b/n;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x3

    const/4 v8, 0x1

    .line 266
    sget-object v0, Lcom/google/android/location/x;->h:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0, p1}, Lcom/google/android/location/places/av;->b(Lcom/google/c/f/b/n;)V

    .line 345
    :goto_0
    return-void

    .line 271
    :cond_0
    const-string v0, "Places"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const-string v0, "Places"

    const-string v1, "Attempting to attach location"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_1
    sget-object v0, Lcom/google/android/location/x;->j:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 277
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/location/LocationRequest;->b(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->c(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    sget-object v0, Lcom/google/android/location/x;->k:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 289
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 290
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 292
    new-instance v6, Lcom/google/android/location/places/aw;

    invoke-direct {v6, p0, v3, v1}, Lcom/google/android/location/places/aw;-><init>(Lcom/google/android/location/places/av;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v6, p0, Lcom/google/android/location/places/av;->f:Lcom/google/android/gms/location/l;

    .line 304
    const-string v6, "playlog"

    invoke-static {v6, v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    .line 315
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "places-flp-request"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 317
    iget-object v7, p0, Lcom/google/android/location/places/av;->e:Lcom/google/android/location/o/n;

    iget-object v8, p0, Lcom/google/android/location/places/av;->f:Lcom/google/android/gms/location/l;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v7, v0, v8, v9}, Lcom/google/android/location/o/n;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V

    .line 321
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_1
    iput-object v2, p0, Lcom/google/android/location/places/av;->f:Lcom/google/android/gms/location/l;

    .line 330
    invoke-virtual {v6}, Landroid/os/HandlerThread;->quit()Z

    .line 332
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 333
    const-string v1, "Places"

    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    const-string v1, "Places"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Location: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_2
    if-eqz v0, :cond_3

    .line 338
    sget-object v1, Lcom/google/android/location/x;->i:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 339
    invoke-static {v0}, Lcom/google/android/location/o/w;->g(Landroid/location/Location;)Ljava/util/List;

    move-result-object v1

    .line 341
    :goto_2
    invoke-static {p1, v0, v1}, Lcom/google/android/location/places/au;->a(Lcom/google/c/f/b/n;Landroid/location/Location;Ljava/util/List;)V

    .line 344
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/location/places/av;->b(Lcom/google/c/f/b/n;)V

    goto/16 :goto_0

    .line 323
    :catch_0
    move-exception v0

    const-string v0, "Places"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    const-string v0, "Places"

    const-string v1, "Thread interrupted waiting for location"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_5
    move-object v1, v2

    goto :goto_2
.end method

.method private b(Lcom/google/c/f/b/n;)V
    .locals 4

    .prologue
    .line 348
    new-instance v0, Lcom/google/c/f/n;

    invoke-direct {v0}, Lcom/google/c/f/n;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/c/f/n;->a:Ljava/lang/Integer;

    iput-object p1, v0, Lcom/google/c/f/n;->b:Lcom/google/c/f/b/n;

    .line 349
    iget-object v1, p0, Lcom/google/android/location/places/av;->d:Lcom/google/android/gms/playlog/b;

    const-string v2, "Places"

    invoke-static {v0}, Lcom/google/c/f/n;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/playlog/b;->a(Ljava/lang/String;[B[Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/location/places/av;->c:Lcom/google/android/location/o/af;

    invoke-virtual {v0}, Lcom/google/android/location/o/af;->a()J

    move-result-wide v0

    sget-wide v2, Lcom/google/android/location/places/av;->a:J

    sub-long v2, v0, v2

    sget-object v0, Lcom/google/android/location/x;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/av;->c:Lcom/google/android/location/o/af;

    invoke-virtual {v0}, Lcom/google/android/location/o/af;->a()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/av;->a:J

    .line 257
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/android/location/places/av;->d:Lcom/google/android/gms/playlog/b;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/location/places/av;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/os/real/ah;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 143
    new-instance v0, Lcom/google/android/gms/playlog/b;

    iget-object v1, p0, Lcom/google/android/location/places/av;->b:Landroid/content/Context;

    const/16 v2, 0x11

    const/4 v6, 0x0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/playlog/b;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/c;Z)V

    iput-object v0, p0, Lcom/google/android/location/places/av;->d:Lcom/google/android/gms/playlog/b;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/av;->d:Lcom/google/android/gms/playlog/b;

    iget-object v0, v0, Lcom/google/android/gms/playlog/b;->a:Lcom/google/android/gms/playlog/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/i;->k()V

    .line 149
    iget-object v0, p0, Lcom/google/android/location/places/av;->e:Lcom/google/android/location/o/n;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Lcom/google/android/location/o/n;

    iget-object v1, p0, Lcom/google/android/location/places/av;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/location/o/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/places/av;->e:Lcom/google/android/location/o/n;

    .line 151
    iget-object v0, p0, Lcom/google/android/location/places/av;->e:Lcom/google/android/location/o/n;

    invoke-virtual {v0}, Lcom/google/android/location/o/n;->a()V

    .line 153
    :cond_1
    return-void
.end method

.method final a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    sget-object v0, Lcom/google/android/location/x;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    if-eqz p1, :cond_0

    .line 165
    const-string v0, "extra_places_event"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 166
    if-nez v0, :cond_2

    .line 167
    const-string v0, "Places"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "Places"

    const-string v1, "Missing intent extra extra_places_event"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    :try_start_0
    new-instance v1, Lcom/google/c/f/b/n;

    invoke-direct {v1}, Lcom/google/c/f/b/n;-><init>()V

    array-length v4, v0

    invoke-static {v1, v0, v4}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/c/f/b/n;
    :try_end_0
    .catch Lcom/google/protobuf/nano/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    iget-object v1, p0, Lcom/google/android/location/places/av;->b:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    if-nez v1, :cond_5

    .line 184
    invoke-direct {p0, v0}, Lcom/google/android/location/places/av;->b(Lcom/google/c/f/b/n;)V

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    const-string v0, "Places"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "Places"

    const-string v1, "Invalid contents of extra extra_places_event"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/av;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "network_location_opt_in"

    const/4 v5, -0x1

    invoke-static {v1, v4, v5}, Lcom/google/android/gsf/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_1

    .line 190
    :cond_5
    iget-object v1, v0, Lcom/google/c/f/b/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 217
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/location/places/av;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 218
    invoke-direct {p0, v0}, Lcom/google/android/location/places/av;->a(Lcom/google/c/f/b/n;)V

    goto :goto_0

    .line 195
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/google/android/location/places/av;->a(Lcom/google/c/f/b/n;)V

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v1, v0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    iget-object v1, v1, Lcom/google/c/f/b/p;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 207
    invoke-direct {p0}, Lcom/google/android/location/places/av;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 208
    invoke-direct {p0, v0}, Lcom/google/android/location/places/av;->a(Lcom/google/c/f/b/n;)V

    goto/16 :goto_0

    .line 202
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/google/android/location/places/av;->a(Lcom/google/c/f/b/n;)V

    goto/16 :goto_0

    .line 210
    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/location/places/av;->b(Lcom/google/c/f/b/n;)V

    goto/16 :goto_0

    .line 220
    :cond_7
    invoke-direct {p0, v0}, Lcom/google/android/location/places/av;->b(Lcom/google/c/f/b/n;)V

    goto/16 :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 199
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
    .end packed-switch
.end method

.method final b()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/location/places/av;->d:Lcom/google/android/gms/playlog/b;

    iget-object v0, v0, Lcom/google/android/gms/playlog/b;->a:Lcom/google/android/gms/playlog/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/i;->l()V

    .line 228
    iget-object v0, p0, Lcom/google/android/location/places/av;->f:Lcom/google/android/gms/location/l;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/android/location/places/av;->e:Lcom/google/android/location/o/n;

    iget-object v1, p0, Lcom/google/android/location/places/av;->f:Lcom/google/android/gms/location/l;

    invoke-virtual {v0, v1}, Lcom/google/android/location/o/n;->a(Lcom/google/android/gms/location/l;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/av;->e:Lcom/google/android/location/o/n;

    invoke-virtual {v0}, Lcom/google/android/location/o/n;->b()V

    .line 232
    return-void
.end method
