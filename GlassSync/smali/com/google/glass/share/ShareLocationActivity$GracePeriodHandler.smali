.class final Lcom/google/glass/share/ShareLocationActivity$GracePeriodHandler;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "ShareLocationActivity.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/share/ShareLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GracePeriodHandler"
.end annotation


# instance fields
.field private handled:Z

.field final synthetic this$0:Lcom/google/glass/share/ShareLocationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareLocationActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/share/ShareLocationActivity;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/glass/share/ShareLocationActivity$GracePeriodHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/share/ShareLocationActivity$GracePeriodHandler;->handled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/share/ShareLocationActivity$GracePeriodHandler;->handled:Z

    .line 306
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    .line 291
    iget-boolean v0, p0, Lcom/google/glass/share/ShareLocationActivity$GracePeriodHandler;->handled:Z

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_0
    iput-boolean v3, p0, Lcom/google/glass/share/ShareLocationActivity$GracePeriodHandler;->handled:Z

    .line 296
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$GracePeriodHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$1400(Lcom/google/glass/share/ShareLocationActivity;)V

    .line 297
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 298
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$GracePeriodHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    .line 299
    invoke-virtual {v0}, Lcom/google/glass/share/ShareLocationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v2, p0, Lcom/google/glass/share/ShareLocationActivity$GracePeriodHandler;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v2}, Lcom/google/glass/share/ShareLocationActivity;->access$200(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 298
    invoke-static {v0, v1, v3}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    goto :goto_0
.end method
