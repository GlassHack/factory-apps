.class final Lcom/google/android/gms/wearable/service/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/service/f;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/ConnectionConfiguration;

.field final synthetic b:Lcom/google/android/gms/wearable/internal/ac;

.field final synthetic c:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/ConnectionConfiguration;Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/ar;->c:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/ar;->a:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/ar;->b:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ar;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/z;->a(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ar;->a:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/a/a;->c(Lcom/google/android/gms/wearable/ConnectionConfiguration;)Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "WearableConn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putConnection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "putConnection: the name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    const-string v1, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putConfig: exception during processing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/wearable/service/ar;->a:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ar;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 264
    :goto_0
    return-void

    .line 258
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/a/a;->b()V

    iget-object v2, v0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/service/b;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/wearable/service/b;->a(Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    iget-object v2, v0, Lcom/google/android/gms/wearable/node/a/a;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/a/a;->a(Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ar;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    const-string v0, "WearableConn"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WearableConn"

    const-string v1, "putConnection resulted in no connection change, skipping update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
