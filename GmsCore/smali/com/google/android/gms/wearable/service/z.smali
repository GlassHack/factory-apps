.class final Lcom/google/android/gms/wearable/service/z;
.super Lcom/google/android/gms/wearable/internal/aj;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/internal/af;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Lcom/google/android/gms/wearable/node/a;

.field private final e:Lcom/google/android/gms/wearable/service/e;

.field private final f:Lcom/google/android/gms/wearable/node/m;

.field private final g:Lcom/google/android/gms/wearable/node/a/a;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Lcom/google/android/gms/wearable/node/m;Lcom/google/android/gms/wearable/node/a;Lcom/google/android/gms/wearable/service/e;Lcom/google/android/gms/wearable/node/a/a;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/aj;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/service/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/service/z;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 83
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/z;->c:Landroid/content/pm/PackageManager;

    .line 84
    iput-object p2, p0, Lcom/google/android/gms/wearable/service/z;->f:Lcom/google/android/gms/wearable/node/m;

    .line 85
    iput-object p3, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    .line 86
    iput-object p4, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    .line 87
    iput-object p5, p0, Lcom/google/android/gms/wearable/service/z;->g:Lcom/google/android/gms/wearable/node/a/a;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a/a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->g:Lcom/google/android/gms/wearable/node/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/gms/wearable/node/aj;->a:Lcom/google/android/gms/wearable/node/aj;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/aj;->d:Lcom/google/android/gms/wearable/node/ax;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/node/ax;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/m;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->f:Lcom/google/android/gms/wearable/node/m;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/wearable/service/z;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/wearable/service/z;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->c:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 923
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/service/x;

    if-eqz v0, :cond_1

    .line 925
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/wearable/service/x;->a(Lcom/google/android/gms/wearable/internal/af;)V

    .line 926
    const-string v1, "WearableService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    const-string v1, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processEvents: published: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_0

    .line 933
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 872
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ag;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/af;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/gms/wearable/internal/af;->a(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 874
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/z;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 875
    iget-object v2, p0, Lcom/google/android/gms/wearable/service/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 878
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/MessageEventParcelable;)V
    .locals 3

    .prologue
    .line 882
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 884
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ag;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/af;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/gms/wearable/internal/af;->a(Lcom/google/android/gms/wearable/internal/MessageEventParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 886
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/z;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 887
    iget-object v2, p0, Lcom/google/android/gms/wearable/service/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 890
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 3

    .prologue
    .line 894
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 896
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ag;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/af;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/gms/wearable/internal/af;->a(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 898
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/z;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 899
    iget-object v2, p0, Lcom/google/android/gms/wearable/service/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 902
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 5

    .prologue
    .line 310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 312
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getConfigs: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->c:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/at;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/service/at;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/ac;Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 436
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getDataItem: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/wearable/node/aw;->a(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 440
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Called getDataItem with a non-exact uri. Provided: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Lcom/google/android/gms/wearable/internal/GetDataItemResponse;

    const/16 v1, 0xd

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/wearable/internal/GetDataItemResponse;-><init>(ILcom/google/android/gms/wearable/internal/DataItemParcelable;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetDataItemResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    :goto_0
    return-void

    .line 446
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/ac;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/wearable/service/ac;-><init>(Lcom/google/android/gms/wearable/service/z;Landroid/net/Uri;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/ac;Lcom/google/android/gms/wearable/Asset;)V
    .locals 5

    .prologue
    .line 628
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 630
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getFdForAsset: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/ah;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/wearable/service/ah;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/Asset;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/ac;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 5

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 241
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "putConfig: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    if-nez p2, :cond_1

    .line 245
    const-string v0, "WearableService"

    const-string v1, "putConfig: called with null config. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    :goto_0
    return-void

    .line 252
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->c:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/ar;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/wearable/service/ar;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/ConnectionConfiguration;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/ac;Lcom/google/android/gms/wearable/PutDataRequest;)V
    .locals 5

    .prologue
    .line 399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 401
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "putData: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/wearable/node/l;->a(Lcom/google/android/gms/wearable/PutDataRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    new-instance v0, Lcom/google/android/gms/wearable/internal/PutDataResponse;

    const/16 v1, 0xfa3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/wearable/internal/PutDataResponse;-><init>(ILcom/google/android/gms/wearable/internal/DataItemParcelable;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/PutDataResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 428
    :goto_0
    return-void

    .line 410
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/ab;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/wearable/service/ab;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/PutDataRequest;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/ac;Lcom/google/android/gms/wearable/internal/AddListenerRequest;)V
    .locals 5

    .prologue
    .line 738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 740
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "addListener: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->b:Lcom/google/android/gms/wearable/internal/af;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/ak;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/wearable/service/ak;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/AddListenerRequest;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 780
    return-void

    .line 779
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/ac;Lcom/google/android/gms/wearable/internal/RemoveListenerRequest;)V
    .locals 5

    .prologue
    .line 786
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 788
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "removeListener: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/google/android/gms/wearable/internal/RemoveListenerRequest;->b:Lcom/google/android/gms/wearable/internal/af;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/am;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/wearable/service/am;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/RemoveListenerRequest;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 812
    return-void

    .line 811
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/ac;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 277
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "removeConfig: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    const-string v0, "WearableService"

    const-string v1, "removeConfig: called with null config. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    :goto_0
    return-void

    .line 288
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->c:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/as;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/wearable/service/as;-><init>(Lcom/google/android/gms/wearable/service/z;Ljava/lang/String;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/ac;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 9

    .prologue
    .line 579
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 581
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    if-nez p2, :cond_1

    .line 586
    new-instance v0, Lcom/google/android/gms/wearable/internal/SendMessageResponse;

    const/16 v1, 0xfa4

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/SendMessageResponse;-><init>(II)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/SendMessageResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    :goto_0
    return-void

    .line 592
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v0, Lcom/google/android/gms/wearable/service/ag;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/service/ag;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v8, p0, v0}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/service/x;)V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 918
    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    .locals 3

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 908
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ag;->a(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/af;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/gms/wearable/internal/af;->b(Lcom/google/android/gms/wearable/internal/NodeParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 910
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/z;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 911
    iget-object v2, p0, Lcom/google/android/gms/wearable/service/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 914
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 5

    .prologue
    .line 477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 479
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getDataItems: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/ad;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/service/ad;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 509
    return-void

    .line 508
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/wearable/internal/ac;Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 516
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getDataItemsByUri: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/ae;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/wearable/service/ae;-><init>(Lcom/google/android/gms/wearable/service/z;Landroid/net/Uri;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 545
    return-void

    .line 544
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/wearable/internal/ac;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 97
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "putConnection: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    if-nez p2, :cond_1

    .line 101
    const-string v0, "WearableService"

    const-string v1, "putConnection: called with null config. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    :goto_0
    return-void

    .line 108
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->c:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/aa;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/wearable/service/aa;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/ConnectionConfiguration;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/wearable/internal/ac;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 340
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 342
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "enableConnection: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->c:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/au;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/wearable/service/au;-><init>(Lcom/google/android/gms/wearable/service/z;Ljava/lang/String;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final c(Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 5

    .prologue
    .line 675
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 677
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getLocalNode: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/ai;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/service/ai;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final c(Lcom/google/android/gms/wearable/internal/ac;Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 552
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "deleteDataItems: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/af;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/wearable/service/af;-><init>(Lcom/google/android/gms/wearable/service/z;Landroid/net/Uri;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 573
    return-void

    .line 572
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final c(Lcom/google/android/gms/wearable/internal/ac;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 367
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 369
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "disableConnection: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->c:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/av;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/service/av;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 393
    return-void

    .line 392
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final d(Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 5

    .prologue
    .line 703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 705
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getConnectedNodes: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/aj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/service/aj;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    return-void

    .line 732
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final e(Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 5

    .prologue
    .line 817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 819
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getStorageInformation: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->c:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/an;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/service/an;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 840
    return-void

    .line 839
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final f(Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 5

    .prologue
    .line 845
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 847
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "clearStorage: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/ao;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/service/ao;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 865
    return-void

    .line 864
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final g(Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 133
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getConnection: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->c:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/al;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/service/al;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final h(Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 173
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "enableConnection: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->c:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/ap;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/service/ap;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final i(Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 207
    :try_start_0
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "disableConnection: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->c:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/z;->e:Lcom/google/android/gms/wearable/service/e;

    new-instance v1, Lcom/google/android/gms/wearable/service/aq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/service/aq;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/wearable/service/e;->a(Ljava/lang/Object;Lcom/google/android/gms/wearable/service/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WearableServiceStub@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/z;->d:Lcom/google/android/gms/wearable/node/a;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
