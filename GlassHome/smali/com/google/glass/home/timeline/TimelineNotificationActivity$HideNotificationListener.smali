.class Lcom/google/glass/home/timeline/TimelineNotificationActivity$HideNotificationListener;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "TimelineNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/TimelineNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideNotificationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/TimelineNotificationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineNotificationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity$HideNotificationListener;->this$0:Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity$HideNotificationListener;->this$0:Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->access$100(Lcom/google/glass/home/timeline/TimelineNotificationActivity;)Lcom/google/glass/util/PowerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->goToSleep()V

    .line 221
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity$HideNotificationListener;->this$0:Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->finish()V

    .line 222
    return-void
.end method
