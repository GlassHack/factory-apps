.class Lcom/google/glass/widget/GlassVideoView$3;
.super Ljava/lang/Object;
.source "GlassVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/GlassVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassVideoView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/GlassVideoView;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/glass/widget/GlassVideoView$3;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v5, 0x1

    .line 92
    invoke-static {}, Lcom/google/glass/widget/GlassVideoView;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "MediaPlayer returned an error: %d (check MediaPlayer#MEDIA_ERROR_*). Trying to restart playback."

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 92
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$3;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$400(Lcom/google/glass/widget/GlassVideoView;)V

    .line 95
    return v5
.end method
