.class Lcom/google/glass/widget/GlassVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassVideoView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassVideoView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/google/glass/widget/GlassVideoView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "MediaPlayer prepared."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$100(Lcom/google/glass/widget/GlassVideoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/GlassVideoView;->access$102(Lcom/google/glass/widget/GlassVideoView;Z)Z

    .line 90
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$1;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$200(Lcom/google/glass/widget/GlassVideoView;)V

    .line 92
    :cond_0
    return-void
.end method
