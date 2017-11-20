.class public final Lcom/google/android/gms/wearable/node/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/node/w;


# instance fields
.field public a:Lcom/google/android/gms/wearable/node/ax;

.field public b:Lcom/google/android/gms/wearable/node/ar;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/at;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/at;->d:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/google/android/gms/wearable/node/x;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x2

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/at;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    .line 122
    const-string v0, "rpctransport"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v4, "rpctransport"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "sendRpc: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", data "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p5, :cond_5

    move-object v0, p5

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    new-instance v4, Lcom/google/android/gms/wearable/c/p;

    invoke-direct {v4}, Lcom/google/android/gms/wearable/c/p;-><init>()V

    .line 128
    iput v1, v4, Lcom/google/android/gms/wearable/c/p;->a:I

    .line 129
    iget-object v0, p2, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/gms/wearable/c/p;->b:Ljava/lang/String;

    .line 130
    iget-object v0, p2, Lcom/google/android/gms/wearable/node/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/gms/wearable/c/p;->c:Ljava/lang/String;

    .line 131
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/gms/wearable/c/p;->d:Ljava/lang/String;

    .line 132
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    .line 133
    if-eqz p5, :cond_1

    .line 134
    iput-object p5, v4, Lcom/google/android/gms/wearable/c/p;->g:[B

    .line 136
    :cond_1
    new-instance v0, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    .line 137
    iput-object v4, v0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    .line 139
    const/4 v4, 0x4

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1, v4, v0, v5}, Lcom/google/android/gms/wearable/node/x;->a(ILcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V

    .line 140
    const-string v0, "rpctransport"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    const-string v0, "rpctransport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendRpc: message sent: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    move v0, v2

    .line 157
    :goto_1
    if-eqz v0, :cond_8

    .line 158
    const-string v0, "rpctransport"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    const-string v0, "rpctransport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendRpc: removing dead request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3
    const-string v0, "rpctransport"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 164
    const-string v0, "rpctransport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendRpc: failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_4
    const/4 v0, -0x1

    .line 168
    :goto_2
    return v0

    .line 123
    :cond_5
    array-length v0, p5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v2, "rpctransport"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 146
    const-string v2, "rpctransport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendRpc: failed writing: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    move v0, v3

    .line 155
    goto :goto_1

    .line 149
    :catch_1
    move-exception v0

    .line 150
    const-string v3, "rpctransport"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 151
    const-string v3, "rpctransport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendRpc: failed writing: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    move v0, v2

    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 168
    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 8

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/at;->a:Lcom/google/android/gms/wearable/node/ax;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/node/ax;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/at;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/at;->b:Lcom/google/android/gms/wearable/node/ar;

    iget-object v2, p1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/node/a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/wearable/node/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/node/at;->a:Lcom/google/android/gms/wearable/node/ax;

    invoke-interface {v3}, Lcom/google/android/gms/wearable/node/ax;->b()Ljava/lang/String;

    move-result-object v5

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/wearable/node/ar;->a(ILcom/google/android/gms/wearable/node/a;Ljava/lang/String;[BLjava/lang/String;)V

    .line 112
    :goto_0
    return v1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/at;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/at;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/node/x;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/node/at;->a(Lcom/google/android/gms/wearable/node/x;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v1

    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "rpctransport"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const-string v0, "rpctransport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendRpc occurred on a potentially invalid nodeId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_2
    const/4 v0, -0x1

    .line 105
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/at;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/node/x;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/node/at;->a(Lcom/google/android/gms/wearable/node/x;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    .line 107
    if-gtz v6, :cond_4

    if-lez v0, :cond_4

    :goto_2
    move v6, v0

    .line 110
    goto :goto_1

    :cond_3
    move v1, v6

    .line 112
    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/wearable/node/x;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/at;->d:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/node/x;->a()Lcom/google/android/gms/wearable/c/i;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/at;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V
    .locals 6

    .prologue
    .line 32
    iget-object v0, p2, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    if-eqz v0, :cond_1

    .line 33
    iget-object v4, p2, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    const-string v0, "rpctransport"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/google/android/gms/wearable/c/p;->g:[B

    const-string v1, "rpctransport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRpcRequest: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v4, Lcom/google/android/gms/wearable/c/p;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/at;->a:Lcom/google/android/gms/wearable/node/ax;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/node/ax;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/google/android/gms/wearable/c/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/at;->b:Lcom/google/android/gms/wearable/node/ar;

    iget v1, v4, Lcom/google/android/gms/wearable/c/p;->a:I

    iget-object v2, v4, Lcom/google/android/gms/wearable/c/p;->b:Ljava/lang/String;

    iget-object v3, v4, Lcom/google/android/gms/wearable/c/p;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/wearable/node/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v2

    iget-object v3, v4, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/wearable/c/p;->g:[B

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/wearable/node/ar;->a(ILcom/google/android/gms/wearable/node/a;Ljava/lang/String;[BLjava/lang/String;)V

    .line 35
    :cond_1
    return-void

    .line 33
    :cond_2
    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
