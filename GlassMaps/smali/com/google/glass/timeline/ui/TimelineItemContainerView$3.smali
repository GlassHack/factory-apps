.class Lcom/google/glass/timeline/ui/TimelineItemContainerView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$3;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$3;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->access$300(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 542
    return-void
.end method
