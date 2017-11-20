.class Lcom/google/glass/companion/RemoteCompanionProxy$2;
.super Ljava/lang/Object;
.source "RemoteCompanionProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/companion/RemoteCompanionProxy;->dequeuePendingMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 272
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$900(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/util/LruCache;

    move-result-object v3

    monitor-enter v3

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 274
    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$900(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/util/LruCache;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/Bundle;Ljava/lang/Long;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 277
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/Bundle;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    .line 278
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    .line 279
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v4, "Dropping an old bundle."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$900(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/util/LruCache;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 290
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/Bundle;Ljava/lang/Long;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 284
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/Bundle;Ljava/lang/Long;>;>;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$900(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/util/LruCache;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 290
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Remaining %s pending bundles"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/companion/RemoteCompanionProxy$2;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {v5}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$900(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/util/LruCache;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    return-void
.end method
