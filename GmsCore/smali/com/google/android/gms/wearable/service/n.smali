.class final Lcom/google/android/gms/wearable/service/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Ljava/util/ArrayDeque;

.field private final b:Lcom/google/android/gms/wearable/service/l;

.field private final c:Lcom/google/android/gms/wearable/node/a;

.field private final d:Landroid/content/Intent;

.field private e:Z

.field private f:Lcom/google/android/gms/wearable/internal/af;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/service/l;Lcom/google/android/gms/wearable/node/a;)V
    .locals 2

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/service/n;->a:Ljava/util/ArrayDeque;

    .line 777
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/n;->b:Lcom/google/android/gms/wearable/service/l;

    .line 778
    iput-object p2, p0, Lcom/google/android/gms/wearable/service/n;->c:Lcom/google/android/gms/wearable/node/a;

    .line 779
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.wearable.BIND_LISTENER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/service/n;->d:Landroid/content/Intent;

    .line 781
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/wearable/node/a;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/n;->c:Lcom/google/android/gms/wearable/node/a;

    return-object v0
.end method

.method public final a(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 851
    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/ag;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/af;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/n;->f:Lcom/google/android/gms/wearable/internal/af;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/n;->f:Lcom/google/android/gms/wearable/internal/af;

    invoke-interface {v1}, Lcom/google/android/gms/wearable/internal/af;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 853
    const-string v1, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service already exists for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/wearable/service/n;->f:Lcom/google/android/gms/wearable/internal/af;

    .line 856
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/service/x;)V
    .locals 2

    .prologue
    .line 863
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/n;->a:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/n;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 865
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 816
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/service/n;->d:Landroid/content/Intent;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 818
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 819
    const-string v3, "WearableService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to pick WearableListenerService for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/wearable/service/n;->c:Lcom/google/android/gms/wearable/node/a;

    iget-object v5, v5, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", too many services defined."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/n;->c:Lcom/google/android/gms/wearable/node/a;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/n;->d:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/service/n;->e:Z

    .line 827
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/service/n;->e:Z

    return v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/n;->d:Landroid/content/Intent;

    return-object v0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/service/n;->e:Z

    if-eqz v0, :cond_0

    .line 833
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/service/n;->e:Z

    .line 839
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/service/n;->f:Lcom/google/android/gms/wearable/internal/af;

    .line 840
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/service/n;->e:Z

    return v0
.end method

.method public final e()Lcom/google/android/gms/wearable/internal/af;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/n;->f:Lcom/google/android/gms/wearable/internal/af;

    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/service/n;->f:Lcom/google/android/gms/wearable/internal/af;

    .line 860
    return-void
.end method

.method public final g()Lcom/google/android/gms/wearable/service/x;
    .locals 2

    .prologue
    .line 869
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/n;->a:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 870
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/n;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/service/x;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final h()Lcom/google/android/gms/wearable/service/x;
    .locals 2

    .prologue
    .line 875
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/n;->a:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 876
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/n;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/service/x;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 881
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/n;->a:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 882
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/n;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 883
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 785
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/n;->c:Lcom/google/android/gms/wearable/node/a;

    iget-object v2, v2, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/n;->b:Lcom/google/android/gms/wearable/service/l;

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/wearable/service/l;->a(Lcom/google/android/gms/wearable/service/l;Lcom/google/android/gms/wearable/service/n;I)Landroid/os/Message;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "binder"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 791
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 792
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 796
    const-string v0, "WearableService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceDisconnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/n;->c:Lcom/google/android/gms/wearable/node/a;

    iget-object v2, v2, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/n;->b:Lcom/google/android/gms/wearable/service/l;

    invoke-static {v0, p0, v3}, Lcom/google/android/gms/wearable/service/l;->a(Lcom/google/android/gms/wearable/service/l;Lcom/google/android/gms/wearable/service/n;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 801
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PackageRecord["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/n;->c:Lcom/google/android/gms/wearable/node/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/n;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
