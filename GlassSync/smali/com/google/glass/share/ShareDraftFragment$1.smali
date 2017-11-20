.class Lcom/google/glass/share/ShareDraftFragment$1;
.super Lcom/google/glass/timeline/ui/TimelineItemLoader$NoopTimelineItemLoader;
.source "ShareDraftFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareDraftFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareDraftFragment;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareDraftFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/share/ShareDraftFragment;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/glass/share/ShareDraftFragment$1;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$NoopTimelineItemLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncRead(ILcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "callback"    # Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment$1;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-static {v0, p2}, Lcom/google/glass/share/ShareDraftFragment;->access$002(Lcom/google/glass/share/ShareDraftFragment;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    .line 82
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment$1;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-static {v0}, Lcom/google/glass/share/ShareDraftFragment;->access$100(Lcom/google/glass/share/ShareDraftFragment;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    iget-object v1, p0, Lcom/google/glass/share/ShareDraftFragment$1;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-static {v1}, Lcom/google/glass/share/ShareDraftFragment;->access$100(Lcom/google/glass/share/ShareDraftFragment;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {p2, v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;->onItemRead(Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;)V

    .line 85
    :cond_0
    return-void
.end method
