.class Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "EntityCache.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlasswareChangedBroadcastReceiver"
.end annotation


# instance fields
.field private final glasswareChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/entity/EntityCache;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/entity/EntityCache;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->this$0:Lcom/google/glass/entity/EntityCache;

    .line 671
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.ACTION_GLASSWARE_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 668
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "glasswareChangedReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->glasswareChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 672
    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->glasswareChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 676
    invoke-virtual {p0, p2}, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->requiresEntityReload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->access$200(Lcom/google/glass/entity/EntityCache;)V

    .line 679
    :cond_0
    return-void
.end method

.method requiresEntityReload(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 683
    const-string v3, "EXTRA_MIRROR_SOURCE_ID"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "source":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 685
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->access$300()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Glassware enabled state changed, requesting reload of entity cache [source=%s]."

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
