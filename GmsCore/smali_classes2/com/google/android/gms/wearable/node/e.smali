.class public final Lcom/google/android/gms/wearable/node/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/d/c;


# instance fields
.field final a:Ljava/util/Map;

.field final b:Ljava/lang/Object;

.field c:Lcom/google/android/gms/wearable/node/x;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/e;->a:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/e;->b:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/e;->d:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/d/d;ZZ)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Outstanding Sends: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/e;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/f;

    iget-object v4, v0, Lcom/google/android/gms/wearable/node/f;->a:Lcom/google/android/gms/wearable/c/q;

    const-string v5, "SetAsset{%s,%d,%s}"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v0, v4, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    aput-object v0, v6, v2

    const/4 v7, 0x1

    iget-object v0, v4, Lcom/google/android/gms/wearable/c/q;->c:[B

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x2

    iget-object v0, v4, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/wearable/c/b;->a:[Lcom/google/android/gms/wearable/c/c;

    if-nez v4, :cond_2

    :cond_0
    const-string v0, ""

    :goto_2
    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, v4, Lcom/google/android/gms/wearable/c/q;->c:[B

    array-length v0, v0

    goto :goto_1

    :cond_2
    const-string v4, ","

    iget-object v0, v0, Lcom/google/android/gms/wearable/c/b;->a:[Lcom/google/android/gms/wearable/c/c;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 167
    :cond_3
    return-void
.end method

.method public final varargs a(Ljava/lang/String;Ljava/io/File;[Lcom/google/android/gms/wearable/node/a;)V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/f;

    .line 133
    if-nez v0, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 135
    if-eqz p2, :cond_0

    .line 136
    new-instance v0, Lcom/google/android/gms/wearable/node/v;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/wearable/node/v;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 138
    :cond_0
    new-instance v1, Lcom/google/android/gms/wearable/node/f;

    new-instance v2, Lcom/google/android/gms/wearable/c/q;

    invoke-direct {v2}, Lcom/google/android/gms/wearable/c/q;-><init>()V

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/wearable/node/f;-><init>(Lcom/google/android/gms/wearable/node/e;Lcom/google/android/gms/wearable/c/q;Lcom/google/android/gms/wearable/node/v;)V

    .line 139
    iget-object v0, v1, Lcom/google/android/gms/wearable/node/f;->a:Lcom/google/android/gms/wearable/c/q;

    iput-object p1, v0, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    move-object v0, v1

    .line 142
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/wearable/node/f;->a:Lcom/google/android/gms/wearable/c/q;

    new-instance v2, Lcom/google/android/gms/wearable/c/b;

    invoke-direct {v2}, Lcom/google/android/gms/wearable/c/b;-><init>()V

    iput-object v2, v1, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    .line 143
    iget-object v1, v0, Lcom/google/android/gms/wearable/node/f;->a:Lcom/google/android/gms/wearable/c/q;

    iget-object v1, v1, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    array-length v2, p3

    new-array v2, v2, [Lcom/google/android/gms/wearable/c/c;

    iput-object v2, v1, Lcom/google/android/gms/wearable/c/b;->a:[Lcom/google/android/gms/wearable/c/c;

    .line 144
    const/4 v1, 0x0

    array-length v2, p3

    :goto_0
    if-ge v1, v2, :cond_2

    .line 145
    iget-object v3, v0, Lcom/google/android/gms/wearable/node/f;->a:Lcom/google/android/gms/wearable/c/q;

    iget-object v3, v3, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    iget-object v3, v3, Lcom/google/android/gms/wearable/c/b;->a:[Lcom/google/android/gms/wearable/c/c;

    new-instance v4, Lcom/google/android/gms/wearable/c/c;

    invoke-direct {v4}, Lcom/google/android/gms/wearable/c/c;-><init>()V

    aput-object v4, v3, v1

    .line 146
    iget-object v3, v0, Lcom/google/android/gms/wearable/node/f;->a:Lcom/google/android/gms/wearable/c/q;

    iget-object v3, v3, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    iget-object v3, v3, Lcom/google/android/gms/wearable/c/b;->a:[Lcom/google/android/gms/wearable/c/c;

    aget-object v3, v3, v1

    aget-object v4, p3, v1

    iget-object v4, v4, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/wearable/c/c;->a:Ljava/lang/String;

    .line 147
    iget-object v3, v0, Lcom/google/android/gms/wearable/node/f;->a:Lcom/google/android/gms/wearable/c/q;

    iget-object v3, v3, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    iget-object v3, v3, Lcom/google/android/gms/wearable/c/b;->a:[Lcom/google/android/gms/wearable/c/c;

    aget-object v3, v3, v1

    aget-object v4, p3, v1

    iget-object v4, v4, Lcom/google/android/gms/wearable/node/a;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/wearable/c/c;->b:Ljava/lang/String;

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/e;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v1, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    .line 153
    iget-object v2, v0, Lcom/google/android/gms/wearable/node/f;->a:Lcom/google/android/gms/wearable/c/q;

    iput-object v2, v1, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    .line 154
    const-string v2, "assets"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    const-string v2, "assets"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending SetAsset message for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/wearable/node/f;->b:Lcom/google/android/gms/wearable/node/v;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/wearable/node/e;->a(Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)Z

    .line 158
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/e;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/e;->c:Lcom/google/android/gms/wearable/node/x;

    .line 84
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-nez v2, :cond_0

    .line 114
    :goto_0
    return v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 91
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 92
    iget-object v1, p2, Lcom/google/android/gms/wearable/node/v;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 93
    const-wide/32 v6, 0x80000

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 94
    const/4 v1, 0x2

    .line 105
    :goto_1
    :try_start_1
    invoke-interface {v2, v1, p1, p2}, Lcom/google/android/gms/wearable/node/x;->a(ILcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const-wide/32 v6, 0x8000

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 96
    const/4 v1, 0x6

    goto :goto_1

    .line 98
    :cond_2
    const/4 v1, 0x5

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    const/4 v1, 0x7

    goto :goto_1

    .line 106
    :catch_0
    move-exception v1

    .line 107
    const-string v2, "assets"

    const-string v3, "interrupted while writing message, will try again later"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 110
    :catch_1
    move-exception v1

    .line 111
    const-string v2, "assets"

    const-string v3, "error while writing message, will try again later"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
