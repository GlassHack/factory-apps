.class Lcom/google/android/clockwork/host/WearableServiceRegistry$2;
.super Ljava/lang/Object;
.source "WearableServiceRegistry.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/clockwork/host/WearableServiceRegistry;->watchService(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/wearable/DataItemBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/clockwork/host/WearableServiceRegistry;

.field final synthetic val$servicePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/clockwork/host/WearableServiceRegistry;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry$2;->this$0:Lcom/google/android/clockwork/host/WearableServiceRegistry;

    iput-object p2, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry$2;->val$servicePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 127
    check-cast p1, Lcom/google/android/gms/wearable/DataItemBuffer;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/host/WearableServiceRegistry$2;->onResult(Lcom/google/android/gms/wearable/DataItemBuffer;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/wearable/DataItemBuffer;)V
    .locals 5
    .param p1, "dataItems"    # Lcom/google/android/gms/wearable/DataItemBuffer;

    .prologue
    .line 130
    iget-object v3, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry$2;->this$0:Lcom/google/android/clockwork/host/WearableServiceRegistry;

    invoke-static {v3}, Lcom/google/android/clockwork/host/WearableServiceRegistry;->access$000(Lcom/google/android/clockwork/host/WearableServiceRegistry;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry$2;->val$servicePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 131
    .local v2, "nodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-enter v2

    .line 132
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataItemBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataItem;

    .line 133
    .local v0, "dataItem":Lcom/google/android/gms/wearable/DataItem;
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v0    # "dataItem":Lcom/google/android/gms/wearable/DataItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataItemBuffer;->close()V

    .line 137
    return-void
.end method
