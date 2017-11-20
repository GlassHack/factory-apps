.class Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "TimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/ui/TimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidScreenOnResponseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/timeline/ui/TimelineActivity;)V
    .locals 3

    .prologue
    .line 692
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    .line 693
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.COMPANION_PROPERTIES_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/timeline/ui/TimelineActivity;Lcom/google/glass/timeline/ui/TimelineActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/timeline/ui/TimelineActivity;
    .param p2, "x1"    # Lcom/google/glass/timeline/ui/TimelineActivity$1;

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;-><init>(Lcom/google/glass/timeline/ui/TimelineActivity;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$400(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 698
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1700(Lcom/google/glass/timeline/ui/TimelineActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;->isInitialStickyBroadcast()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.google.glass.extra.COMPANION_INTERACTIVE_STATE"

    .line 702
    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$400(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "AndroidInteractiveResponseReceived"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-virtual {v2}, Lcom/google/glass/timeline/ui/TimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 705
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasAttributionType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/google/glass/timeline/ui/WearHelper;

    invoke-direct {v2}, Lcom/google/glass/timeline/ui/WearHelper;-><init>()V

    .line 710
    invoke-virtual {v2, p1, v0}, Lcom/google/glass/timeline/ui/WearHelper;->hasOpenOnPhoneMenuOption(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$400(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Sending intent to launch the wear item open action"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.wearable.app.WEAR_ITEM_OPEN_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v1, "wearItemActionIntent":Landroid/content/Intent;
    const-string v2, "itemId"

    .line 714
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 713
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 716
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$AndroidScreenOnResponseReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1800(Lcom/google/glass/timeline/ui/TimelineActivity;)V

    goto :goto_0
.end method
