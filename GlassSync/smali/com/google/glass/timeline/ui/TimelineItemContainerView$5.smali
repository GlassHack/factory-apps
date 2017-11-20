.class Lcom/google/glass/timeline/ui/TimelineItemContainerView$5;
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

.field final synthetic val$to:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$5;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    iput-object p2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$5;->val$to:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$5;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$5;->val$to:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->access$502(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Landroid/view/View;)Landroid/view/View;

    .line 609
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$5;->val$to:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 610
    return-void
.end method
