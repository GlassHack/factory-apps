.class Lcom/google/glass/timeline/ui/TimelineItemContainerView$1;
.super Ljava/lang/Object;
.source "TimelineItemContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/ui/TimelineItemContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->access$000(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 140
    return-void
.end method
