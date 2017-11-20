.class public final Lcom/google/android/gms/common/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/common/internal/o;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public final e:Ljava/util/ArrayList;

.field private final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/o;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/m;->c:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/m;->d:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/m;->e:Ljava/util/ArrayList;

    .line 91
    iput-object p2, p0, Lcom/google/android/gms/common/internal/m;->a:Lcom/google/android/gms/common/internal/o;

    .line 92
    new-instance v0, Lcom/google/android/gms/common/internal/n;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/n;-><init>(Lcom/google/android/gms/common/internal/m;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/m;->f:Landroid/os/Handler;

    .line 93
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object v1, p0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 211
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/m;->d:Z

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/l;

    .line 219
    iget-object v3, p0, Lcom/google/android/gms/common/internal/m;->a:Lcom/google/android/gms/common/internal/o;

    invoke-interface {v3}, Lcom/google/android/gms/common/internal/o;->c_()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    iget-object v3, p0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/l;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 228
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/m;->d:Z

    .line 229
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 153
    iget-object v3, p0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    monitor-enter v3

    .line 154
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/internal/m;->d:Z

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/aj;->a(Z)V

    .line 157
    iget-object v2, p0, Lcom/google/android/gms/common/internal/m;->f:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/common/internal/m;->d:Z

    .line 175
    iget-object v2, p0, Lcom/google/android/gms/common/internal/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Z)V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/l;

    .line 183
    iget-object v2, p0, Lcom/google/android/gms/common/internal/m;->a:Lcom/google/android/gms/common/internal/o;

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/o;->c_()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/m;->a:Lcom/google/android/gms/common/internal/o;

    invoke-interface {v2}, Lcom/google/android/gms/common/internal/o;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/google/android/gms/common/internal/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/l;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    move v2, v1

    .line 154
    goto :goto_0

    :cond_2
    move v0, v1

    .line 175
    goto :goto_1

    .line 193
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/m;->d:Z

    .line 195
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/l;)V
    .locals 4

    .prologue
    .line 266
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const-string v0, "GmsClientEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerConnectionCallbacks(): listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->a:Lcom/google/android/gms/common/internal/o;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/m;->f:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 285
    :cond_0
    return-void

    .line 277
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v1, p0, Lcom/google/android/gms/common/internal/m;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 245
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/m;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/h;

    .line 251
    iget-object v3, p0, Lcom/google/android/gms/common/internal/m;->a:Lcom/google/android/gms/common/internal/o;

    invoke-interface {v3}, Lcom/google/android/gms/common/internal/o;->c_()Z

    move-result v3

    if-nez v3, :cond_1

    .line 252
    monitor-exit v1

    .line 259
    :goto_1
    return-void

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/common/internal/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/h;->a(Lcom/google/android/gms/common/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/common/h;)V
    .locals 4

    .prologue
    .line 321
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v1, p0, Lcom/google/android/gms/common/internal/m;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "GmsClientEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerConnectionFailedListener(): listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    monitor-exit v1

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
