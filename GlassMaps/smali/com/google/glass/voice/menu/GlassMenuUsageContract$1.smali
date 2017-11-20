.class Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/GlassMenuUsageContract;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    iget-object v1, v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    iget-object v0, v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "Loading usageStatsDataCache started."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getMainMenuItemsData()Ljava/util/List;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "The usage_stats db is still empty."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    monitor-exit v1

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    iget-object v2, v2, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "Loading usageStatsDataCache finished."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
