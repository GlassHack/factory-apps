.class Lcom/google/glass/maps/MapHelper$3;
.super Ljava/lang/Object;
.source "MapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/maps/MapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/MapHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/maps/MapHelper;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$3;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 200
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$3;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v1}, Lcom/google/glass/maps/MapHelper;->access$500(Lcom/google/glass/maps/MapHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$3;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v1}, Lcom/google/glass/maps/MapHelper;->access$600(Lcom/google/glass/maps/MapHelper;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$3;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v1}, Lcom/google/glass/maps/MapHelper;->access$700(Lcom/google/glass/maps/MapHelper;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$3;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v1}, Lcom/google/glass/maps/MapHelper;->access$800(Lcom/google/glass/maps/MapHelper;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-static {}, Lcom/google/glass/maps/MapHelper;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v3, "Unbinding service"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$3;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v1}, Lcom/google/glass/maps/MapHelper;->access$1100(Lcom/google/glass/maps/MapHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/maps/MapHelper$3;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v3}, Lcom/google/glass/maps/MapHelper;->access$1000(Lcom/google/glass/maps/MapHelper;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/maps/MapHelper;->access$1200()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 209
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/maps/MapHelper$3;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v3}, Lcom/google/glass/maps/MapHelper;->access$1100(Lcom/google/glass/maps/MapHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/google/glass/util/IntentSender;->stopService(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 213
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$3;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v1}, Lcom/google/glass/maps/MapHelper;->access$300(Lcom/google/glass/maps/MapHelper;)V

    .line 220
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    monitor-exit v2

    .line 221
    return-void

    .line 217
    :cond_0
    invoke-static {}, Lcom/google/glass/maps/MapHelper;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v3, "unbind not called due to outstanding requests: %d, %d, %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/maps/MapHelper$3;->this$0:Lcom/google/glass/maps/MapHelper;

    .line 218
    invoke-static {v6}, Lcom/google/glass/maps/MapHelper;->access$600(Lcom/google/glass/maps/MapHelper;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/maps/MapHelper$3;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v6}, Lcom/google/glass/maps/MapHelper;->access$700(Lcom/google/glass/maps/MapHelper;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/glass/maps/MapHelper$3;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-static {v6}, Lcom/google/glass/maps/MapHelper;->access$800(Lcom/google/glass/maps/MapHelper;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 217
    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
