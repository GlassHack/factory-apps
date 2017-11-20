.class Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;
.super Ljava/lang/Object;
.source "GlassMenuUsageContract.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/GlassMenuUsageContract;->loadMainMenuItemsUsageStatsCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/GlassMenuUsageContract;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 282
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    iget-object v2, v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    monitor-enter v2

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    iget-object v1, v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 284
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v3, "Loading usageStatsDataCache started."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getMainMenuItemsData()Ljava/util/List;

    move-result-object v0

    .line 286
    .local v0, "mainMenuItemDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v3, "The usage_stats db is still empty."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    monitor-exit v2

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$1;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    iget-object v1, v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->usageStatsDataCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v3, "Loading usageStatsDataCache finished."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    monitor-exit v2

    goto :goto_0

    .end local v0    # "mainMenuItemDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
