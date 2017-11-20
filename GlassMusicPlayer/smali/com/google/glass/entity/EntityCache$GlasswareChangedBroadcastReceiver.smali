.class Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final glasswareChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/entity/EntityCache;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;)V
    .locals 3

    .prologue
    .line 661
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->this$0:Lcom/google/glass/entity/EntityCache;

    .line 662
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.ACTION_GLASSWARE_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "glasswareChangedReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->glasswareChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 663
    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->glasswareChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0, p2}, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->requiresEntityReload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->access$200(Lcom/google/glass/entity/EntityCache;)V

    .line 670
    :cond_0
    return-void
.end method

.method requiresEntityReload(Landroid/content/Intent;)Z
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 674
    const-string v2, "EXTRA_MIRROR_SOURCE_ID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 675
    if-eqz v2, :cond_0

    .line 676
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->access$300()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache$GlasswareChangedBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Glassware enabled state changed, requesting reload of entity cache [source=%s]."

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
