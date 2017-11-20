.class Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineView;


# direct methods
.method private constructor <init>(Lcom/google/glass/timeline/ui/TimelineView;)V
    .locals 2

    .prologue
    .line 708
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    .line 709
    const/4 v0, 0x0

    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineView;->access$500()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 710
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/timeline/ui/TimelineView;Lcom/google/glass/timeline/ui/TimelineView$1;)V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;-><init>(Lcom/google/glass/timeline/ui/TimelineView;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 729
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineView;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 715
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 716
    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 717
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineView;->access$600(Lcom/google/glass/timeline/ui/TimelineView;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    const-string v1, "com.google.glass.ACTION_SHOW_CURRENT_TIMELINE_ITEM_ID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineView;->access$700(Lcom/google/glass/timeline/ui/TimelineView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 723
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineView;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Exception resulted."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
