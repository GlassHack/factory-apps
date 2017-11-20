.class Lcom/google/glass/timeline/ui/TimelineActivity$1;
.super Landroid/os/Handler;
.source "TimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/ui/TimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/TimelineActivity;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 89
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 112
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$400(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Unexpected message type %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    .line 93
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.google.android.clockwork.actions.RpcWithCallback.successful"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 92
    invoke-static {v1, v2}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$300(Lcom/google/glass/timeline/ui/TimelineActivity;Z)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$400(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to dismiss message dialog."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
