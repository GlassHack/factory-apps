.class final Lcom/google/android/gms/wearable/service/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/service/f;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/internal/RemoveListenerRequest;

.field final synthetic b:Lcom/google/android/gms/wearable/internal/ac;

.field final synthetic c:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/RemoveListenerRequest;Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/am;->c:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/am;->a:Lcom/google/android/gms/wearable/internal/RemoveListenerRequest;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/am;->b:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/am;->a:Lcom/google/android/gms/wearable/internal/RemoveListenerRequest;

    iget-object v1, v1, Lcom/google/android/gms/wearable/internal/RemoveListenerRequest;->b:Lcom/google/android/gms/wearable/internal/af;

    invoke-interface {v1}, Lcom/google/android/gms/wearable/internal/af;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 798
    iget-object v2, p0, Lcom/google/android/gms/wearable/service/am;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v2}, Lcom/google/android/gms/wearable/service/z;->d(Lcom/google/android/gms/wearable/service/z;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 799
    :cond_0
    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/am;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 808
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/am;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xfa2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    const-string v1, "WearableService"

    const-string v2, "removeListener: exception during processing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/am;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method
