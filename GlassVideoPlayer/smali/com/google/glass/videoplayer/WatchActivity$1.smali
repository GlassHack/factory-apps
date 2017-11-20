.class Lcom/google/glass/videoplayer/WatchActivity$1;
.super Lcom/google/android/glass/widget/CardScrollView;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/WatchActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/WatchActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/glass/videoplayer/WatchActivity$1;->this$0:Lcom/google/glass/videoplayer/WatchActivity;

    invoke-direct {p0, p2}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity$1;->this$0:Lcom/google/glass/videoplayer/WatchActivity;

    invoke-static {v0}, Lcom/google/glass/videoplayer/WatchActivity;->access$000(Lcom/google/glass/videoplayer/WatchActivity;)Lcom/google/glass/videoplayer/ScrubbingDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/videoplayer/ScrubbingDetector;->onEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 94
    invoke-super {p0, p1}, Lcom/google/android/glass/widget/CardScrollView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
