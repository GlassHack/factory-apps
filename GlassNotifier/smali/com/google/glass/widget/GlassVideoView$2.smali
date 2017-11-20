.class Lcom/google/glass/widget/GlassVideoView$2;
.super Ljava/lang/Object;
.source "GlassVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 80
    iput-object p1, p0, Lcom/google/glass/widget/GlassVideoView$2;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$2;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$300(Lcom/google/glass/widget/GlassVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/glass/widget/GlassVideoView$2;->this$0:Lcom/google/glass/widget/GlassVideoView;

    invoke-static {v0}, Lcom/google/glass/widget/GlassVideoView;->access$400(Lcom/google/glass/widget/GlassVideoView;)V

    .line 86
    :cond_0
    return-void
.end method
