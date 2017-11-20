.class public final Lcom/google/android/gms/gcm/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/common/a/b;

.field private static final b:Lcom/google/android/gms/common/a/b;


# instance fields
.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "gcm_pending_message_timeout_ms"

    const v1, 0x493e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/z;->a:Lcom/google/android/gms/common/a/b;

    .line 39
    const-string v0, "gcm_pending_message_max"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/z;->b:Lcom/google/android/gms/common/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/z;->c:Ljava/util/List;

    .line 122
    return-void
.end method

.method private static a(Lcom/google/b/a/a/e;Ljava/lang/String;I)Z
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/b/a/a/e;->i:J

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 9

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    monitor-exit p0

    return-object v0

    .line 96
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/gms/gcm/z;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {v2}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v0, v2

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/gcm/z;->c:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/aa;

    iget-wide v4, v0, Lcom/google/android/gms/gcm/aa;->a:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/gcm/z;->c:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/aa;

    iget-object v0, v0, Lcom/google/android/gms/gcm/aa;->b:Lcom/google/b/a/a/e;

    .line 102
    iget-object v4, v0, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    .line 103
    iget-wide v6, v0, Lcom/google/b/a/a/e;->i:J

    long-to-int v5, v6

    .line 104
    const-string v6, "GCM-PMQ"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Message expired for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " user="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/gcm/z;->c:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/gcm/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 109
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/aa;

    iget-object v0, v0, Lcom/google/android/gms/gcm/aa;->b:Lcom/google/b/a/a/e;

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/gcm/z;->a(Lcom/google/b/a/a/e;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v1

    .line 115
    goto/16 :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;I)Ljava/util/List;
    .locals 4

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-object v0

    .line 73
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/gcm/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 75
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/aa;

    iget-object v0, v0, Lcom/google/android/gms/gcm/aa;->b:Lcom/google/b/a/a/e;

    .line 77
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/gcm/z;->a(Lcom/google/b/a/a/e;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    .line 82
    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/b/a/a/e;)V
    .locals 4

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/GcmPackageTracker;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {v0}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 62
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    const-string v0, "GCM-PMQ"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "GCM-PMQ"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Queuing message for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/gcm/z;->b:Lcom/google/android/gms/common/a/b;

    invoke-static {v1}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/gcm/z;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/aa;

    .line 55
    const-string v1, "GCM-PMQ"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const-string v1, "GCM-PMQ"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Queue full, dropping message for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/gcm/aa;->b:Lcom/google/b/a/a/e;

    iget-object v0, v0, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 61
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/gcm/z;->c:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/gcm/aa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/gcm/aa;-><init>(Lcom/google/b/a/a/e;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
