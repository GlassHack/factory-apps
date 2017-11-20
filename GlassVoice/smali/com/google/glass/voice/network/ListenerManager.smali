.class public Lcom/google/glass/voice/network/ListenerManager;
.super Ljava/lang/Object;
.source "ListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/ListenerManager$Receiver;,
        Lcom/google/glass/voice/network/ListenerManager$Dispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field final dispatcher:Lcom/google/glass/voice/network/ListenerManager$Dispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/voice/network/ListenerManager$Dispatcher",
            "<TT;>;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/voice/network/ListenerManager$Dispatcher;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/network/ListenerManager$Dispatcher",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/google/glass/voice/network/ListenerManager;, "Lcom/google/glass/voice/network/ListenerManager<TT;>;"
    .local p3, "dispatcher":Lcom/google/glass/voice/network/ListenerManager$Dispatcher;, "Lcom/google/glass/voice/network/ListenerManager$Dispatcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/google/glass/voice/network/ListenerManager;->action:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/google/glass/voice/network/ListenerManager;->context:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/google/glass/voice/network/ListenerManager;->dispatcher:Lcom/google/glass/voice/network/ListenerManager$Dispatcher;

    .line 33
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/ListenerManager;->listeners:Ljava/util/Set;

    .line 34
    new-instance v0, Lcom/google/glass/voice/network/ListenerManager$Receiver;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/ListenerManager$Receiver;-><init>(Lcom/google/glass/voice/network/ListenerManager;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/ListenerManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 35
    return-void
.end method


# virtual methods
.method public getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/google/glass/voice/network/ListenerManager;, "Lcom/google/glass/voice/network/ListenerManager<TT;>;"
    iget-object v0, p0, Lcom/google/glass/voice/network/ListenerManager;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/glass/voice/network/ListenerManager;, "Lcom/google/glass/voice/network/ListenerManager<TT;>;"
    iget-object v0, p0, Lcom/google/glass/voice/network/ListenerManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public registerListener(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/google/glass/voice/network/ListenerManager;, "Lcom/google/glass/voice/network/ListenerManager<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/google/glass/voice/network/ListenerManager;->listeners:Ljava/util/Set;

    monitor-enter v2

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/network/ListenerManager;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/google/glass/voice/network/ListenerManager;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/google/glass/voice/network/ListenerManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/voice/network/ListenerManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/network/ListenerManager;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    monitor-exit v2

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unRegisterListener(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/google/glass/voice/network/ListenerManager;, "Lcom/google/glass/voice/network/ListenerManager<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/glass/voice/network/ListenerManager;->listeners:Ljava/util/Set;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/ListenerManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/network/ListenerManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/glass/voice/network/ListenerManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/voice/network/ListenerManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    :cond_0
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
