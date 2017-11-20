.class Lcom/google/glass/musicplayer/ListenToQueryActivity$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ListenToQueryActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$1;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$1;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$100(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Encountered unknown message=%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$1;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->searching:I

    invoke-static {v0, v1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$000(Lcom/google/glass/musicplayer/ListenToQueryActivity;I)V

    goto :goto_0

    .line 116
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    .line 117
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$1;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    sget v1, Lcom/google/glass/musicplayer/R$string;->loading:I

    invoke-static {v0, v1}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$000(Lcom/google/glass/musicplayer/ListenToQueryActivity;I)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/ListenToQueryActivity$1;->this$0:Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ListenToQueryActivity;->access$100(Lcom/google/glass/musicplayer/ListenToQueryActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Encountered invalid inputType=%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
