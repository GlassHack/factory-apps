.class Lcom/google/glass/timeline/ui/TimelineItemContainerView$4;
.super Ljava/lang/Object;
.source "TimelineItemContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/TimelineItemContainerView;->startTransition(Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

.field final synthetic val$from:Landroid/view/View;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$4;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    iput-object p2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$4;->val$from:Landroid/view/View;

    iput-object p3, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$4;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$4;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->access$402(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Z)Z

    .line 593
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$4;->val$from:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$4;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 597
    :cond_0
    return-void
.end method
