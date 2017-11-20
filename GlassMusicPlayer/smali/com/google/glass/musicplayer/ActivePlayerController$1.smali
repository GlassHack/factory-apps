.class Lcom/google/glass/musicplayer/ActivePlayerController$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ActivePlayerController;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ActivePlayerController;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/musicplayer/ActivePlayerController$1;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 156
    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController$1;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$000(Lcom/google/glass/musicplayer/ActivePlayerController;)Lcom/google/glass/ongoing/OngoingActivityManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .line 157
    invoke-virtual {v1, v2, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->showOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController$1;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$100(Lcom/google/glass/musicplayer/ActivePlayerController;)V

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-static {}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Reached idle timeout. Stopping self and hiding active card."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController$1;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$300(Lcom/google/glass/musicplayer/ActivePlayerController;)V

    goto :goto_0

    .line 171
    :pswitch_3
    invoke-static {}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "RCC was unregistered. Stopping self and hiding active card, handler=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/musicplayer/ActivePlayerController$1;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    .line 172
    invoke-static {v3}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$400(Lcom/google/glass/musicplayer/ActivePlayerController;)Landroid/os/Handler;

    move-result-object v3

    aput-object v3, v2, v4

    .line 171
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController$1;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$300(Lcom/google/glass/musicplayer/ActivePlayerController;)V

    goto :goto_0

    .line 177
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController$1;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$500(Lcom/google/glass/musicplayer/ActivePlayerController;)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
