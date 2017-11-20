.class Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "TimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/ui/TimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugBroadcastReceiver"
.end annotation


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
    .param p1, "x0"    # Lcom/google/glass/timeline/ui/TimelineView;
    .param p2, "x1"    # Lcom/google/glass/timeline/ui/TimelineView$1;

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
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 715
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/TimelineView;->access$600(Lcom/google/glass/timeline/ui/TimelineView;)V

    .line 725
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 718
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v2, "com.google.glass.ACTION_SHOW_CURRENT_TIMELINE_ITEM_ID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/TimelineView;->access$700(Lcom/google/glass/timeline/ui/TimelineView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 723
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineView;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Exception resulted."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
