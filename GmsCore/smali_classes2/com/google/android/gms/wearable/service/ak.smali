.class final Lcom/google/android/gms/wearable/service/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/service/f;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/internal/AddListenerRequest;

.field final synthetic b:Lcom/google/android/gms/wearable/internal/ac;

.field final synthetic c:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/AddListenerRequest;Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/ak;->c:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/ak;->a:Lcom/google/android/gms/wearable/internal/AddListenerRequest;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/ak;->b:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ak;->a:Lcom/google/android/gms/wearable/internal/AddListenerRequest;

    iget-object v1, v1, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->b:Lcom/google/android/gms/wearable/internal/af;

    invoke-interface {v1}, Lcom/google/android/gms/wearable/internal/af;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 752
    new-instance v2, Lcom/google/android/gms/wearable/service/aw;

    iget-object v3, p0, Lcom/google/android/gms/wearable/service/ak;->c:Lcom/google/android/gms/wearable/service/z;

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/ak;->a:Lcom/google/android/gms/wearable/internal/AddListenerRequest;

    iget-object v4, v4, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->b:Lcom/google/android/gms/wearable/internal/af;

    iget-object v5, p0, Lcom/google/android/gms/wearable/service/ak;->a:Lcom/google/android/gms/wearable/internal/AddListenerRequest;

    iget-object v5, v5, Lcom/google/android/gms/wearable/internal/AddListenerRequest;->c:[Landroid/content/IntentFilter;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/wearable/service/aw;-><init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/af;[Landroid/content/IntentFilter;)V

    .line 754
    iget-object v3, p0, Lcom/google/android/gms/wearable/service/ak;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v3}, Lcom/google/android/gms/wearable/service/z;->d(Lcom/google/android/gms/wearable/service/z;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 755
    :cond_0
    if-eqz v0, :cond_1

    .line 757
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 758
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ak;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 776
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    :try_start_2
    const-string v2, "WearableService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addListener: Exception for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/ak;->a:Lcom/google/android/gms/wearable/internal/AddListenerRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ak;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/z;->d(Lcom/google/android/gms/wearable/service/z;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ak;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 772
    :catch_1
    move-exception v0

    .line 773
    const-string v1, "WearableService"

    const-string v2, "addListener: exception during processing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ak;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 768
    :cond_1
    :try_start_3
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addListener: Duplicate listener for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/ak;->a:Lcom/google/android/gms/wearable/internal/AddListenerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ak;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xfa1

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
