.class Lcom/google/glass/videoplayer/widget/PlayerView$7;
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
    .line 238
    iput-object p1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$7;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$800()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Hides the error message"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$7;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    iget-object v0, v0, Lcom/google/glass/videoplayer/widget/PlayerView;->errorMsgView:Lcom/google/glass/widget/TipsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 243
    return-void
.end method
