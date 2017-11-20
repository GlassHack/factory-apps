.class Lcom/google/glass/videoplayer/widget/PlayerView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/widget/PlayerView;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/widget/PlayerView;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$6;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-static {}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$800()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Shows the error message"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$6;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    iget-object v0, v0, Lcom/google/glass/videoplayer/widget/PlayerView;->errorMsgView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 235
    return-void
.end method
