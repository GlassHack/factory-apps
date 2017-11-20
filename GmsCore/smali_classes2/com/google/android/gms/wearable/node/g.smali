.class public final Lcom/google/android/gms/wearable/node/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/d/c;
.implements Lcom/google/android/gms/wearable/node/w;


# instance fields
.field public a:Lcom/google/android/gms/wearable/node/m;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/g;->b:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/g;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/d/d;ZZ)V
    .locals 7

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Outstanding Fetches: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/g;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/j;

    const-string v3, "FetchAsset{%s,%s,permissionCheck=%s}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-boolean v0, v0, Lcom/google/android/gms/wearable/c/j;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/d/d;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/e;

    .line 293
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/wearable/node/e;->a(Lcom/google/android/gms/wearable/d/d;ZZ)V

    goto :goto_1

    .line 295
    :cond_1
    return-void
.end method

.method final a(Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/g;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/j;

    .line 143
    if-eqz v0, :cond_1

    .line 148
    iget-boolean v0, v0, Lcom/google/android/gms/wearable/c/j;->d:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 172
    :cond_0
    return-void

    .line 153
    :cond_1
    new-instance v0, Lcom/google/android/gms/wearable/c/j;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/j;-><init>()V

    .line 154
    iget-object v1, p1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    .line 155
    iget-object v1, p1, Lcom/google/android/gms/wearable/node/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/wearable/c/j;->b:Ljava/lang/String;

    .line 156
    iput-object p2, v0, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    .line 157
    iput-boolean p3, v0, Lcom/google/android/gms/wearable/c/j;->d:Z

    .line 158
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/g;->b:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v1, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    .line 161
    iput-object v0, v1, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    .line 162
    const-string v0, "assets"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    const-string v0, "assets"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending FetchAsset message for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/e;

    .line 170
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/wearable/node/e;->a(Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/wearable/node/x;)V
    .locals 5

    .prologue
    .line 51
    invoke-interface {p1}, Lcom/google/android/gms/wearable/node/x;->a()Lcom/google/android/gms/wearable/c/i;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/g;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/e;

    .line 53
    if-nez v0, :cond_2

    .line 54
    new-instance v0, Lcom/google/android/gms/wearable/node/e;

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/node/e;-><init>(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/g;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/g;->b:Ljava/util/Map;

    iget-object v2, v1, Lcom/google/android/gms/wearable/node/e;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object p1, v1, Lcom/google/android/gms/wearable/node/e;->c:Lcom/google/android/gms/wearable/node/x;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c/j;

    new-instance v3, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    iput-object v0, v3, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/wearable/node/e;->a(Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/wearable/node/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/f;

    new-instance v3, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    iget-object v4, v0, Lcom/google/android/gms/wearable/node/f;->a:Lcom/google/android/gms/wearable/c/q;

    iput-object v4, v3, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/f;->b:Lcom/google/android/gms/wearable/node/v;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/wearable/node/e;->a(Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)Z

    goto :goto_2

    .line 58
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/e;

    .line 63
    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/wearable/node/e;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v0, Lcom/google/android/gms/wearable/node/e;->c:Lcom/google/android/gms/wearable/node/x;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x3

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/e;

    .line 74
    if-nez v0, :cond_1

    .line 76
    const-string v0, "assets"

    const-string v1, "Received message from a disconnected node. What?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v2, p2, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    if-eqz v2, :cond_6

    .line 81
    iget-object v4, p2, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    iget-object v2, v4, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    iget-object v2, v2, Lcom/google/android/gms/wearable/c/b;->a:[Lcom/google/android/gms/wearable/c/c;

    array-length v2, v2

    new-array v5, v2, [Lcom/google/android/gms/wearable/node/a;

    array-length v6, v5

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_2

    iget-object v7, v4, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    iget-object v7, v7, Lcom/google/android/gms/wearable/c/b;->a:[Lcom/google/android/gms/wearable/c/c;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/google/android/gms/wearable/c/c;->a:Ljava/lang/String;

    iget-object v8, v4, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    iget-object v8, v8, Lcom/google/android/gms/wearable/c/b;->a:[Lcom/google/android/gms/wearable/c/c;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/google/android/gms/wearable/c/c;->b:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/android/gms/wearable/node/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v7

    aput-object v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_5

    iget-object v2, v4, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    iget-object v6, p3, Lcom/google/android/gms/wearable/node/v;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "assets"

    const-string v1, "SetAsset message has digest differing than the actual digest of the file: %s vs %s (Ignoring)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v4, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p3, Lcom/google/android/gms/wearable/node/v;->a:Ljava/lang/String;

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/g;->a:Lcom/google/android/gms/wearable/node/m;

    iget-object v3, p3, Lcom/google/android/gms/wearable/node/v;->b:Ljava/io/File;

    iget-object v6, p3, Lcom/google/android/gms/wearable/node/v;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v7}, Lcom/google/android/gms/wearable/node/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v8, v2, Lcom/google/android/gms/wearable/node/m;->c:Lcom/google/android/gms/wearable/node/d;

    invoke-interface {v8, v6, v3}, Lcom/google/android/gms/wearable/node/d;->a(Ljava/lang/String;Ljava/io/File;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v7, v6, v3, v5}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lcom/google/android/gms/wearable/node/a;)Lcom/google/android/gms/wearable/node/n;

    move-result-object v3

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v3, v3, Lcom/google/android/gms/wearable/node/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/node/m;->a(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/g;->b:Ljava/util/Map;

    iget-object v3, v4, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/wearable/c/m;

    invoke-direct {v2}, Lcom/google/android/gms/wearable/c/m;-><init>()V

    new-instance v3, Lcom/google/android/gms/wearable/c/a;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/a;-><init>()V

    iput-object v3, v2, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    iget-object v3, v2, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    iget-object v5, v4, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    iput-object v5, v3, Lcom/google/android/gms/wearable/c/a;->a:Ljava/lang/String;

    const-string v3, "assets"

    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "assets"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sending AckAsset message for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/wearable/node/e;->a(Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/g;->a:Lcom/google/android/gms/wearable/node/m;

    iget-object v3, v4, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v6}, Lcom/google/android/gms/wearable/node/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    :try_start_4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v3, v7, v5}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lcom/google/android/gms/wearable/node/a;)Lcom/google/android/gms/wearable/node/n;

    move-result-object v3

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v3, v3, Lcom/google/android/gms/wearable/node/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/node/m;->a(Ljava/util/ArrayList;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 82
    :cond_6
    iget-object v2, p2, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    if-eqz v2, :cond_a

    .line 83
    iget-object v3, p2, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    iget-object v2, v3, Lcom/google/android/gms/wearable/c/j;->a:Ljava/lang/String;

    iget-object v4, v3, Lcom/google/android/gms/wearable/c/j;->b:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/gms/wearable/node/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/wearable/node/g;->a:Lcom/google/android/gms/wearable/node/m;

    iget-object v5, v3, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/wearable/node/m;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v0, "assets"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "assets"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Fetched asset is missing (sending empty response): "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-boolean v5, v3, Lcom/google/android/gms/wearable/c/j;->d:Z

    if-nez v5, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/g;->a:Lcom/google/android/gms/wearable/node/m;

    iget-object v5, v3, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/wearable/node/m;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v5, "assets"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "assets"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "handleFetchAsset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v3, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", no FD returned, no permission?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/wearable/node/a;

    invoke-interface {v4, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/wearable/node/a;

    iget-object v3, v3, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/wearable/node/e;->a(Ljava/lang/String;Ljava/io/File;[Lcom/google/android/gms/wearable/node/a;)V

    goto/16 :goto_0

    :cond_8
    const-string v5, "assets"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "assets"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "handleFetchAsset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v3, Lcom/google/android/gms/wearable/c/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", permission check, not loading data"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object v2, v1

    goto :goto_3

    .line 84
    :cond_a
    iget-object v1, p2, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p2, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/c/a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/e;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    move-object v2, v1

    goto :goto_3
.end method

.method public final varargs a(Ljava/lang/String;Z[Lcom/google/android/gms/wearable/node/a;)V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    .line 100
    if-eqz p2, :cond_3

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/g;->a:Lcom/google/android/gms/wearable/node/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/node/m;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 102
    if-nez v0, :cond_1

    .line 105
    const-string v0, "assets"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAssetAdded: digest "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", owners "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unable to load asset, ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    .line 112
    :goto_0
    const-string v0, "assets"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const-string v0, "assets"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAssetAdded: digest "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", owners "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sending"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/e;

    .line 117
    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/gms/wearable/node/e;->a(Ljava/lang/String;Ljava/io/File;[Lcom/google/android/gms/wearable/node/a;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
