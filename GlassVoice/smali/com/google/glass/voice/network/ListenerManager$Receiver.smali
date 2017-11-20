.class Lcom/google/glass/voice/network/ListenerManager$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "ListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/ListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/ListenerManager;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/ListenerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/ListenerManager;

    .prologue
    .line 73
    .local p0, "this":Lcom/google/glass/voice/network/ListenerManager$Receiver;, "Lcom/google/glass/voice/network/ListenerManager<TT;>.Receiver;"
    iput-object p1, p0, Lcom/google/glass/voice/network/ListenerManager$Receiver;->this$0:Lcom/google/glass/voice/network/ListenerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    .local p0, "this":Lcom/google/glass/voice/network/ListenerManager$Receiver;, "Lcom/google/glass/voice/network/ListenerManager<TT;>.Receiver;"
    const/4 v1, 0x0

    .line 77
    .local v1, "listeners":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    monitor-enter v1

    .line 78
    :try_start_0
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 79
    .end local v1    # "listeners":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local v2, "listeners":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "listener":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/google/glass/voice/network/ListenerManager$Receiver;->this$0:Lcom/google/glass/voice/network/ListenerManager;

    iget-object v4, v4, Lcom/google/glass/voice/network/ListenerManager;->dispatcher:Lcom/google/glass/voice/network/ListenerManager$Dispatcher;

    invoke-interface {v4, v0}, Lcom/google/glass/voice/network/ListenerManager$Dispatcher;->dispatch(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    .end local v0    # "listener":Ljava/lang/Object;, "TT;"
    .end local v2    # "listeners":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .restart local v1    # "listeners":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :catchall_0
    move-exception v3

    move-object v2, v1

    .end local v1    # "listeners":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .restart local v2    # "listeners":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 83
    :cond_0
    return-void

    .line 79
    :catchall_1
    move-exception v3

    goto :goto_1
.end method
