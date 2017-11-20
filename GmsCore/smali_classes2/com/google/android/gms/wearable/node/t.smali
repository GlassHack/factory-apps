.class public final Lcom/google/android/gms/wearable/node/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/node/r;


# instance fields
.field final a:Ljava/lang/String;

.field private final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/t;->b:Ljava/util/HashMap;

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/t;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    .line 108
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "incomingmessages"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wearable"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "wearable"

    const-string v3, "%s already existed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/t;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/u;

    .line 101
    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/u;->a()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/c/m;)Lcom/google/android/gms/wearable/node/aq;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p1, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    if-nez v0, :cond_2

    .line 46
    iget-boolean v0, p1, Lcom/google/android/gms/wearable/c/m;->m:Z

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/google/android/gms/wearable/node/aq;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/node/aq;-><init>(Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V

    .line 85
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/m;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/t;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 56
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/node/t;->a(Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lcom/google/android/gms/wearable/node/t;->b:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/gms/wearable/node/u;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/wearable/node/u;-><init>(Lcom/google/android/gms/wearable/node/t;Lcom/google/android/gms/wearable/c/m;)V

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const-string v0, "wearable"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "wearable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Buffering message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    .line 62
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/t;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/t;->b:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    iget-object v3, v3, Lcom/google/android/gms/wearable/c/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/u;

    .line 68
    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/wearable/node/u;->a(Lcom/google/android/gms/wearable/c/k;)Z

    move-result v3

    .line 70
    if-nez v3, :cond_3

    .line 72
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 75
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/wearable/node/u;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/m;->b([B)Ljava/lang/String;

    move-result-object v3

    .line 77
    iget-object v1, p1, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    iget-object v1, v1, Lcom/google/android/gms/wearable/c/k;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 78
    const-string v1, "wearable"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received file digest did not match original digest; received: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; original: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    iget-object v5, v5, Lcom/google/android/gms/wearable/c/k;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/t;->b:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    iget-object v4, v4, Lcom/google/android/gms/wearable/c/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Lcom/google/android/gms/wearable/node/aq;

    iget-object v4, v0, Lcom/google/android/gms/wearable/node/u;->a:Lcom/google/android/gms/wearable/c/m;

    new-instance v5, Lcom/google/android/gms/wearable/node/v;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/u;->c:Ljava/io/File;

    invoke-direct {v5, v3, v0}, Lcom/google/android/gms/wearable/node/v;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/wearable/node/aq;-><init>(Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    goto/16 :goto_0

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/t;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/t;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/node/t;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
