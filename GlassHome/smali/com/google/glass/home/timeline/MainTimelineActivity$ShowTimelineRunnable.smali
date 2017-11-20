.class Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;
.super Ljava/lang/Object;
.source "MainTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowTimelineRunnable"
.end annotation


# instance fields
.field private final shouldAnimate:Z

.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;Z)V
    .locals 0
    .param p2, "shouldAnimate"    # Z

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    iput-boolean p2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->shouldAnimate:Z

    .line 1122
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1127
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v2, v2, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    if-nez v2, :cond_0

    .line 1149
    :goto_0
    return-void

    .line 1132
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v2, v2, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/MainTimelineView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1133
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Not showing timeline view, because it is already visible."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1136
    :cond_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Showing timeline view. [shouldAnimate=%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->shouldAnimate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1138
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v2, v2, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v2, v6}, Lcom/google/glass/home/timeline/MainTimelineView;->setVisibility(I)V

    .line 1139
    iget-boolean v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->shouldAnimate:Z

    if-eqz v2, :cond_2

    .line 1142
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v2, v2, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/MainTimelineView;->setAlpha(F)V

    .line 1143
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$integer;->show_timeline_fade_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v0, v2

    .line 1144
    .local v0, "duration":J
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v2, v2, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/MainTimelineView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1148
    .end local v0    # "duration":J
    :cond_2
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/home/timeline/MainTimelineActivity;->logWakeUpDelay(J)V

    goto :goto_0
.end method
