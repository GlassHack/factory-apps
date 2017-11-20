.class public final Lcom/google/android/gms/wearable/node/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/d/c;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/content/Context;

.field public c:Lcom/google/android/gms/wearable/node/ax;

.field final d:Ljava/util/ArrayList;

.field final e:Ljava/util/HashMap;

.field f:Ljava/util/LinkedList;

.field private final g:Lcom/google/android/gms/wearable/node/bd;

.field private final h:Ljava/lang/Object;

.field private i:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ay;->d:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ay;->h:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ay;->e:Ljava/util/HashMap;

    .line 146
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/ay;->f:Ljava/util/LinkedList;

    .line 139
    iput-object p2, p0, Lcom/google/android/gms/wearable/node/ay;->a:Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/ay;->b:Landroid/content/Context;

    .line 141
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WearableTransport.WriteWatchdogHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 143
    new-instance v1, Lcom/google/android/gms/wearable/node/bd;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/wearable/node/bd;-><init>(Lcom/google/android/gms/wearable/node/ay;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/node/ay;->g:Lcom/google/android/gms/wearable/node/bd;

    .line 144
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/google/android/gms/wearable/node/bb;)Lcom/google/android/gms/wearable/c/i;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x3

    const/4 v2, 0x1

    .line 240
    new-instance v4, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v4}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    .line 241
    new-instance v0, Lcom/google/android/gms/wearable/c/i;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/i;-><init>()V

    iput-object v0, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    .line 242
    iget-object v0, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iget-object v5, p0, Lcom/google/android/gms/wearable/node/ay;->c:Lcom/google/android/gms/wearable/node/ax;

    invoke-interface {v5}, Lcom/google/android/gms/wearable/node/ax;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    .line 243
    iget-object v0, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iget-object v5, p0, Lcom/google/android/gms/wearable/node/ay;->c:Lcom/google/android/gms/wearable/node/ax;

    invoke-interface {v5}, Lcom/google/android/gms/wearable/node/ax;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    .line 244
    iget-object v5, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    sget-object v0, Lcom/google/android/gms/common/util/e;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/android/gms/wearable/c/i;->c:J

    .line 245
    iget-object v0, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iput v2, v0, Lcom/google/android/gms/wearable/c/i;->d:I

    .line 246
    iget-object v0, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iput v3, v0, Lcom/google/android/gms/wearable/c/i;->e:I

    .line 249
    iget-object v0, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iput v8, v0, Lcom/google/android/gms/wearable/c/i;->f:I

    .line 250
    invoke-static {v4}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/c/m;)Lcom/google/android/gms/wearable/c/n;

    move-result-object v0

    .line 253
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/wearable/node/be;->a()Lcom/google/android/gms/wearable/node/bf;

    move-result-object v4

    .line 254
    invoke-static {v4, p2, v0, p3}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/node/bf;Ljava/io/OutputStream;Lcom/google/android/gms/wearable/c/n;Lcom/google/android/gms/wearable/node/bb;)I

    .line 255
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/c/n;->b()Lcom/google/android/gms/wearable/c/n;

    .line 256
    invoke-static {v4, p1, v0, p3}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/node/bf;Ljava/io/InputStream;Lcom/google/android/gms/wearable/c/n;Lcom/google/android/gms/wearable/node/bb;)I

    .line 257
    invoke-static {v0}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/c/n;)Lcom/google/android/gms/wearable/c/m;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 265
    iget-object v0, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    if-nez v0, :cond_1

    .line 267
    const-string v0, "wearable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error, peer didn\'t start with a connect message, found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/android/gms/wearable/node/ay;->a(Lcom/google/android/gms/wearable/c/m;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {v8}, Lcom/google/android/gms/wearable/node/ay;->a(I)V

    move-object v0, v1

    .line 293
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v0

    const-string v0, "wearable"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "wearable"

    const-string v2, "error while connecting to peer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    invoke-static {v8}, Lcom/google/android/gms/wearable/node/ay;->a(I)V

    move-object v0, v1

    .line 263
    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iget v0, v0, Lcom/google/android/gms/wearable/c/i;->d:I

    iget-object v1, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iget v1, v1, Lcom/google/android/gms/wearable/c/i;->e:I

    if-lez v0, :cond_3

    if-lt v2, v1, :cond_2

    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    .line 276
    const-string v0, "wearable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: wire protocol version mismatch - our version: 1, our minimum supported version: 0; peer version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iget v2, v2, Lcom/google/android/gms/wearable/c/i;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", peer minimum supported version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iget v2, v2, Lcom/google/android/gms/wearable/c/i;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {v8}, Lcom/google/android/gms/wearable/node/ay;->a(I)V

    .line 282
    new-instance v0, Lcom/google/android/gms/wearable/node/bh;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/node/bh;-><init>()V

    throw v0

    :cond_2
    move v0, v3

    .line 274
    goto :goto_1

    :cond_3
    if-ltz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1

    .line 285
    :cond_5
    const-string v0, "wearable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Peer handshake connect succeeded, peer version: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iget v3, v3, Lcom/google/android/gms/wearable/c/i;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {}, Lcom/google/android/gms/wearable/service/h;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iget-wide v6, v1, Lcom/google/android/gms/wearable/c/i;->c:J

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "peer_android_id"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    invoke-static {v2}, Lcom/google/android/gms/wearable/node/ay;->a(I)V

    .line 293
    iget-object v0, v4, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    goto/16 :goto_0
.end method

.method public static a(Lcom/google/android/gms/wearable/c/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    if-eqz v0, :cond_0

    const-string v0, "ChannelControl"

    .line 444
    :goto_0
    return-object v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    if-eqz v0, :cond_1

    const-string v0, "ChannelData"

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    if-eqz v0, :cond_2

    const-string v0, "ChannelCloseResponse"

    goto :goto_0

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    if-eqz v0, :cond_3

    const-string v0, "SetAsset"

    goto :goto_0

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    if-eqz v0, :cond_4

    const-string v0, "AckAsset"

    goto :goto_0

    .line 437
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    if-eqz v0, :cond_5

    const-string v0, "FetchAsset"

    goto :goto_0

    .line 438
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    if-eqz v0, :cond_6

    const-string v0, "Connect"

    goto :goto_0

    .line 439
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    if-eqz v0, :cond_7

    const-string v0, "SyncStart"

    goto :goto_0

    .line 440
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    if-eqz v0, :cond_8

    const-string v0, "SetDataItem"

    goto :goto_0

    .line 441
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    if-eqz v0, :cond_9

    const-string v0, "RpcRequest"

    goto :goto_0

    .line 442
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    if-eqz v0, :cond_a

    const-string v0, "FilePiece"

    goto :goto_0

    .line 443
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    if-eqz v0, :cond_b

    const-string v0, "Heartbeat"

    goto :goto_0

    .line 444
    :cond_b
    const-string v0, "UnknownType"

    goto :goto_0
.end method

.method private static a(I)V
    .locals 2

    .prologue
    .line 297
    new-instance v0, Lcom/google/c/f/e;

    invoke-direct {v0}, Lcom/google/c/f/e;-><init>()V

    .line 298
    new-instance v1, Lcom/google/c/f/d;

    invoke-direct {v1}, Lcom/google/c/f/d;-><init>()V

    iput-object v1, v0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    .line 299
    iget-object v1, v0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    iput p0, v1, Lcom/google/c/f/d;->a:I

    .line 300
    sget-object v1, Lcom/google/android/gms/wearable/b/a;->a:Lcom/google/android/gms/wearable/b/a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/wearable/b/a;->a(Lcom/google/c/f/e;)V

    .line 301
    return-void
.end method

.method private a(Lcom/google/android/gms/wearable/node/y;)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ay;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/w;

    .line 328
    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/node/w;->a(Lcom/google/android/gms/wearable/node/x;)V

    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ay;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/w;

    .line 334
    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/node/w;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/ConnectionConfiguration;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 753
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/ay;->e:Ljava/util/HashMap;

    monitor-enter v2

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ay;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 755
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 756
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/ba;

    .line 757
    iget-object v4, v0, Lcom/google/android/gms/wearable/node/ba;->a:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    if-eqz v4, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/ba;->a:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    :goto_0
    return-object v1

    .line 761
    :cond_1
    monitor-exit v2

    .line 762
    const/4 v1, 0x0

    goto :goto_0

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/d/d;ZZ)V
    .locals 3

    .prologue
    .line 396
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 397
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/ay;->e:Ljava/util/HashMap;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ay;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/ba;

    .line 399
    iget-object v0, v0, Lcom/google/android/gms/wearable/node/ba;->b:Lcom/google/android/gms/wearable/node/y;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/wearable/node/y;->a(Lcom/google/android/gms/wearable/d/d;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->println()V

    .line 404
    const-string v0, "connection stats"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->a()V

    .line 406
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/ay;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 407
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ay;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/bb;

    .line 408
    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/node/bb;->a(Lcom/google/android/gms/wearable/d/d;)V

    .line 406
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 410
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 412
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/d/d;->b()V

    .line 413
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/node/w;)V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ay;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public final a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 19

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/wearable/node/ay;->h:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/wearable/node/ay;->i:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/wearable/node/ay;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Lcom/google/android/gms/wearable/node/av;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/node/av;-><init>()V

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/wearable/node/ay;->i:Ljava/util/concurrent/ExecutorService;

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    new-instance v8, Lcom/google/android/gms/wearable/node/bb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/wearable/node/ay;->g:Lcom/google/android/gms/wearable/node/bd;

    invoke-direct {v8, v3}, Lcom/google/android/gms/wearable/node/bb;-><init>(Landroid/os/Handler;)V

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, v8, Lcom/google/android/gms/wearable/node/bb;->a:Ljava/lang/Thread;

    .line 165
    const/4 v10, 0x0

    .line 166
    const/4 v13, 0x0

    .line 167
    const/4 v14, 0x0

    .line 169
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/ay;->e:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 170
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/wearable/node/ay;->f:Ljava/util/LinkedList;

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8}, Lcom/google/android/gms/wearable/node/ay;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/google/android/gms/wearable/node/bb;)Lcom/google/android/gms/wearable/c/i;

    move-result-object v7

    .line 173
    if-nez v7, :cond_3

    .line 174
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    const-string v3, "wearable"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    const-string v3, "wearable"

    const-string v4, "network processing loop is finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    invoke-virtual {v8}, Lcom/google/android/gms/wearable/node/bb;->a()V

    .line 232
    :goto_0
    return-void

    .line 161
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 176
    :cond_3
    :try_start_3
    const-string v3, "wearable"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    const-string v3, "wearable"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "connected to node "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v7, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    new-instance v3, Lcom/google/android/gms/wearable/node/y;

    const-string v4, "wearable"

    const-string v5, "WearableTransport"

    const/16 v9, 0x3000

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/wearable/node/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/google/android/gms/wearable/c/i;Lcom/google/android/gms/wearable/node/bb;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/wearable/node/ay;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/google/android/gms/wearable/node/az;

    iget-object v6, v7, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v3}, Lcom/google/android/gms/wearable/node/az;-><init>(Lcom/google/android/gms/wearable/node/ay;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v13

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/wearable/node/ay;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/google/android/gms/wearable/node/az;

    iget-object v6, v7, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    new-instance v9, Lcom/google/android/gms/wearable/node/bc;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1, v7, v8}, Lcom/google/android/gms/wearable/node/bc;-><init>(Lcom/google/android/gms/wearable/node/ay;Ljava/io/InputStream;Lcom/google/android/gms/wearable/c/i;Lcom/google/android/gms/wearable/node/bb;)V

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v9}, Lcom/google/android/gms/wearable/node/az;-><init>(Lcom/google/android/gms/wearable/node/ay;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v14

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/wearable/node/ay;->e:Ljava/util/HashMap;

    iget-object v5, v7, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    new-instance v9, Lcom/google/android/gms/wearable/node/ba;

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object v12, v3

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/wearable/node/ba;-><init>(Lcom/google/android/gms/wearable/node/ay;Lcom/google/android/gms/wearable/ConnectionConfiguration;Lcom/google/android/gms/wearable/node/y;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/wearable/node/ay;->a(Lcom/google/android/gms/wearable/node/y;)V

    .line 188
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 190
    :try_start_5
    const-string v4, "wearable"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 191
    const-string v4, "wearable"

    const-string v5, "blocking until network processing loop finishes..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 198
    :cond_5
    :try_start_6
    invoke-interface {v13}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 206
    :cond_6
    :goto_1
    :try_start_7
    invoke-interface {v14}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 217
    :cond_7
    :goto_2
    const-string v4, "wearable"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 218
    const-string v4, "wearable"

    const-string v5, "network processing loop is finished"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_8
    invoke-virtual {v3}, Lcom/google/android/gms/wearable/node/y;->a()Lcom/google/android/gms/wearable/c/i;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/wearable/node/ay;->b(Ljava/lang/String;)V

    .line 225
    if-eqz v13, :cond_9

    .line 226
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 228
    :cond_9
    if-eqz v14, :cond_a

    .line 229
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 231
    :cond_a
    invoke-virtual {v8}, Lcom/google/android/gms/wearable/node/bb;->a()V

    goto/16 :goto_0

    .line 188
    :catchall_1
    move-exception v3

    move-object v4, v10

    :goto_3
    :try_start_8
    monitor-exit v17

    throw v3
    :try_end_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 212
    :catch_0
    move-exception v3

    .line 213
    :goto_4
    :try_start_9
    const-string v5, "wearable"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 214
    const-string v5, "wearable"

    const-string v6, "Writer or reader thread threw an exception"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 217
    :cond_b
    const-string v3, "wearable"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 218
    const-string v3, "wearable"

    const-string v5, "network processing loop is finished"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_c
    if-eqz v4, :cond_d

    .line 222
    invoke-virtual {v4}, Lcom/google/android/gms/wearable/node/y;->a()Lcom/google/android/gms/wearable/c/i;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/wearable/node/ay;->b(Ljava/lang/String;)V

    .line 225
    :cond_d
    if-eqz v13, :cond_e

    .line 226
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 228
    :cond_e
    if-eqz v14, :cond_f

    .line 229
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 231
    :cond_f
    invoke-virtual {v8}, Lcom/google/android/gms/wearable/node/bb;->a()V

    goto/16 :goto_0

    .line 200
    :catch_1
    move-exception v4

    :try_start_a
    const-string v4, "wearable"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 201
    const-string v4, "wearable"

    const-string v5, "Writer thread was cancelled."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 212
    :catch_2
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto :goto_4

    .line 208
    :catch_3
    move-exception v4

    const-string v4, "wearable"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 209
    const-string v4, "wearable"

    const-string v5, "Reader thread was cancelled."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_2

    .line 217
    :catchall_2
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_5
    const-string v5, "wearable"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 218
    const-string v5, "wearable"

    const-string v6, "network processing loop is finished"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_10
    if-eqz v4, :cond_11

    .line 222
    invoke-virtual {v4}, Lcom/google/android/gms/wearable/node/y;->a()Lcom/google/android/gms/wearable/c/i;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/wearable/node/ay;->b(Ljava/lang/String;)V

    .line 225
    :cond_11
    if-eqz v13, :cond_12

    .line 226
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 228
    :cond_12
    if-eqz v14, :cond_13

    .line 229
    const/4 v4, 0x1

    invoke-interface {v14, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 231
    :cond_13
    invoke-virtual {v8}, Lcom/google/android/gms/wearable/node/bb;->a()V

    throw v3

    .line 217
    :catchall_3
    move-exception v3

    move-object v4, v10

    goto :goto_5

    :catchall_4
    move-exception v3

    goto :goto_5

    .line 212
    :catch_4
    move-exception v3

    move-object v4, v10

    goto/16 :goto_4

    .line 188
    :catchall_5
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_3
.end method

.method final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 344
    const-string v0, "wearable"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "wearable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallableEnded: nodeId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/ay;->e:Ljava/util/HashMap;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ay;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/ba;

    .line 349
    if-nez v0, :cond_1

    .line 350
    const-string v0, "wearable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting connection reference for nodeId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". A thread may have leaked!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    monitor-exit v1

    .line 391
    :goto_0
    return-void

    .line 355
    :cond_1
    const-string v2, "wearable"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    const-string v2, "wearable"

    const-string v3, "onCallableEnded - closing reader and writer streams"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/google/android/gms/wearable/node/ba;->e:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :goto_1
    :try_start_2
    iget-object v2, v0, Lcom/google/android/gms/wearable/node/ba;->f:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    :goto_2
    :try_start_3
    iget-object v2, v0, Lcom/google/android/gms/wearable/node/ba;->d:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/wearable/node/ba;->c:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 371
    const-string v0, "wearable"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    const-string v0, "wearable"

    const-string v2, "onCallableEnded - both reader and writer threads are already closed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/ay;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 378
    :cond_4
    :try_start_4
    iget-object v2, v0, Lcom/google/android/gms/wearable/node/ba;->d:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_6

    .line 379
    const-string v2, "wearable"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 380
    const-string v2, "wearable"

    const-string v3, "onCallableEnded - stopping reader thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/wearable/node/ba;->d:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 385
    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/wearable/node/ba;->c:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_8

    .line 386
    const-string v2, "wearable"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 387
    const-string v2, "wearable"

    const-string v3, "onCallableEnded - stopping writer thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/wearable/node/ba;->c:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 391
    :cond_8
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method
