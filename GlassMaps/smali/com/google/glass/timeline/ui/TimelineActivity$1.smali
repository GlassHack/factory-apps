.class Lcom/google/glass/timeline/ui/TimelineActivity$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineActivity;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 112
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$400(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Unexpected message type %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    .line 93
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.android.clockwork.actions.RpcWithCallback.successful"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 92
    invoke-static {v0, v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$300(Lcom/google/glass/timeline/ui/TimelineActivity;Z)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$200(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 107
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$1;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineActivity;->access$400(Lcom/google/glass/timeline/ui/TimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to dismiss message dialog."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
