.class Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "TimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/ui/TimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WearHostCallbackSuccessReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/timeline/ui/TimelineActivity;)V
    .locals 3

    .prologue
    .line 738
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    .line 739
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.WEAR_HOST_CALLBACK_SUCCESS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/timeline/ui/TimelineActivity;Lcom/google/glass/timeline/ui/TimelineActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/timeline/ui/TimelineActivity;
    .param p2, "x1"    # Lcom/google/glass/timeline/ui/TimelineActivity$1;

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;-><init>(Lcom/google/glass/timeline/ui/TimelineActivity;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$400(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 744
    const-string v3, "com.google.android.clockwork.actions.RpcWithCallback.successful"

    .line 745
    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 746
    .local v1, "isWearIntentLaunchSuccessful":Z
    iget-object v3, p0, Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$400(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Received launch success update!: %b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    iget-object v3, p0, Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1900(Lcom/google/glass/timeline/ui/TimelineActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    iget-object v3, p0, Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1900(Lcom/google/glass/timeline/ui/TimelineActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 749
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 750
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "com.google.android.clockwork.actions.RpcWithCallback.successful"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 752
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 753
    iget-object v3, p0, Lcom/google/glass/timeline/ui/TimelineActivity$WearHostCallbackSuccessReceiver;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$1900(Lcom/google/glass/timeline/ui/TimelineActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 754
    return-void
.end method
