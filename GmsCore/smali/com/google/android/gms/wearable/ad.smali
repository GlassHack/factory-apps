.class final Lcom/google/android/gms/wearable/ad;
.super Lcom/google/android/gms/wearable/internal/ag;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/ac;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/ac;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/ag;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/ac;B)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/ad;-><init>(Lcom/google/android/gms/wearable/ac;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3

    .prologue
    .line 144
    const-string v0, "WearableLS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "WearableLS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDataItemChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v2}, Lcom/google/android/gms/wearable/ac;->a(Lcom/google/android/gms/wearable/ac;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->b(Lcom/google/android/gms/wearable/ac;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->c(Lcom/google/android/gms/wearable/ac;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->d(Lcom/google/android/gms/wearable/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->h()V

    .line 151
    monitor-exit v1

    .line 164
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->e(Lcom/google/android/gms/wearable/ac;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/wearable/ae;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/wearable/ae;-><init>(Lcom/google/android/gms/wearable/ad;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/MessageEventParcelable;)V
    .locals 3

    .prologue
    .line 169
    const-string v0, "WearableLS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "WearableLS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMessageReceived: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->b(Lcom/google/android/gms/wearable/ac;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->c(Lcom/google/android/gms/wearable/ac;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->d(Lcom/google/android/gms/wearable/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    monitor-exit v1

    .line 183
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->e(Lcom/google/android/gms/wearable/ac;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/wearable/af;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/wearable/af;-><init>(Lcom/google/android/gms/wearable/ad;Lcom/google/android/gms/wearable/internal/MessageEventParcelable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 3

    .prologue
    .line 188
    const-string v0, "WearableLS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "WearableLS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPeerConnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v2}, Lcom/google/android/gms/wearable/ac;->a(Lcom/google/android/gms/wearable/ac;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->b(Lcom/google/android/gms/wearable/ac;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->c(Lcom/google/android/gms/wearable/ac;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->d(Lcom/google/android/gms/wearable/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    monitor-exit v1

    .line 202
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->e(Lcom/google/android/gms/wearable/ac;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/wearable/ag;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/wearable/ag;-><init>(Lcom/google/android/gms/wearable/ad;Lcom/google/android/gms/wearable/internal/NodeParcelable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 3

    .prologue
    .line 207
    const-string v0, "WearableLS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "WearableLS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPeerDisconnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v2}, Lcom/google/android/gms/wearable/ac;->a(Lcom/google/android/gms/wearable/ac;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->b(Lcom/google/android/gms/wearable/ac;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->c(Lcom/google/android/gms/wearable/ac;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->d(Lcom/google/android/gms/wearable/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    monitor-exit v1

    .line 221
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/ad;->a:Lcom/google/android/gms/wearable/ac;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ac;->e(Lcom/google/android/gms/wearable/ac;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/wearable/ah;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/wearable/ah;-><init>(Lcom/google/android/gms/wearable/ad;Lcom/google/android/gms/wearable/internal/NodeParcelable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
