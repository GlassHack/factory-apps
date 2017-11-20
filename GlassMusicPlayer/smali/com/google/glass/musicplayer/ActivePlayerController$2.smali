.class Lcom/google/glass/musicplayer/ActivePlayerController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/ActivePlayerController;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/ActivePlayerController;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/google/glass/musicplayer/ActivePlayerController$2;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 635
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController$2;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$400(Lcom/google/glass/musicplayer/ActivePlayerController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController$2;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    iget-object v1, p0, Lcom/google/glass/musicplayer/ActivePlayerController$2;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-static {v1}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$700(Lcom/google/glass/musicplayer/ActivePlayerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/a/a/a;->a(Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$602(Lcom/google/glass/musicplayer/ActivePlayerController;Z)Z

    .line 637
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController$2;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$800(Lcom/google/glass/musicplayer/ActivePlayerController;)V

    .line 638
    iget-object v0, p0, Lcom/google/glass/musicplayer/ActivePlayerController$2;->this$0:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-static {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->access$400(Lcom/google/glass/musicplayer/ActivePlayerController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xdbba0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 639
    return-void
.end method
