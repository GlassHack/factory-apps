.class Lcom/google/glass/videoplayer/widget/PlayerView$2;
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
    .line 201
    iput-object p1, p0, Lcom/google/glass/videoplayer/widget/PlayerView$2;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/glass/videoplayer/widget/PlayerView$2;->this$0:Lcom/google/glass/videoplayer/widget/PlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->access$000(Lcom/google/glass/videoplayer/widget/PlayerView;Z)V

    .line 205
    return-void
.end method
