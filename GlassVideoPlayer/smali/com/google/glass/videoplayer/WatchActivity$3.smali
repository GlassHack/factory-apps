.class Lcom/google/glass/videoplayer/WatchActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/WatchActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/WatchActivity;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/glass/videoplayer/WatchActivity$3;->this$0:Lcom/google/glass/videoplayer/WatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 278
    packed-switch p1, :pswitch_data_0

    .line 290
    :goto_0
    :pswitch_0
    return-void

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity$3;->this$0:Lcom/google/glass/videoplayer/WatchActivity;

    invoke-static {v0}, Lcom/google/glass/videoplayer/WatchActivity;->access$300(Lcom/google/glass/videoplayer/WatchActivity;)V

    goto :goto_0

    .line 283
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity$3;->this$0:Lcom/google/glass/videoplayer/WatchActivity;

    invoke-static {v0}, Lcom/google/glass/videoplayer/WatchActivity;->access$300(Lcom/google/glass/videoplayer/WatchActivity;)V

    goto :goto_0

    .line 287
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity$3;->this$0:Lcom/google/glass/videoplayer/WatchActivity;

    invoke-static {v0}, Lcom/google/glass/videoplayer/WatchActivity;->access$400(Lcom/google/glass/videoplayer/WatchActivity;)V

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
