.class Lcom/google/glass/home/timeline/MainTimelineActivity$2;
.super Ljava/lang/Object;
.source "MainTimelineActivity.java"

# interfaces
.implements Lcom/google/android/glass/widget/CardScrollView$TransformListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;->createTimelineView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$2;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleChanged(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$2;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$2;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/TimelineOverlayView;->onScaleChanged(F)V

    .line 266
    :cond_0
    return-void
.end method

.method public onScrollPositionChanged(F)V
    .locals 1
    .param p1, "position"    # F

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$2;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$2;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/TimelineOverlayView;->onScrollPositionChanged(F)V

    .line 259
    :cond_0
    return-void
.end method
