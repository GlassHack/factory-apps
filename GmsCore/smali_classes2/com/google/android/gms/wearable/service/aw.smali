.class final Lcom/google/android/gms/wearable/service/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final a:[Landroid/content/IntentFilter;

.field final b:Lcom/google/android/gms/wearable/internal/af;

.field final synthetic c:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/af;[Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 950
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/aw;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    iput-object p3, p0, Lcom/google/android/gms/wearable/service/aw;->a:[Landroid/content/IntentFilter;

    .line 952
    iput-object p2, p0, Lcom/google/android/gms/wearable/service/aw;->b:Lcom/google/android/gms/wearable/internal/af;

    .line 953
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/aw;->b:Lcom/google/android/gms/wearable/internal/af;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/internal/af;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 958
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/aw;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/z;->d(Lcom/google/android/gms/wearable/service/z;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    .line 959
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/aw;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/z;->d(Lcom/google/android/gms/wearable/service/z;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/aw;->b:Lcom/google/android/gms/wearable/internal/af;

    invoke-interface {v2}, Lcom/google/android/gms/wearable/internal/af;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
