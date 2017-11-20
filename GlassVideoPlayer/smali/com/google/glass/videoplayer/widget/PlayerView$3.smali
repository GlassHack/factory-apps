.class Lcom/google/glass/videoplayer/widget/PlayerView$3;
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
    .line 208
    iput-object p1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$3;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$3;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/widget/PlayerView;->hideTimeBar()Z

    .line 212
    return-void
.end method
