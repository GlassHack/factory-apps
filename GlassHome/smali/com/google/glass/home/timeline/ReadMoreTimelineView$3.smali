.class Lcom/google/glass/home/timeline/ReadMoreTimelineView$3;
.super Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
.source "ReadMoreTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreTimelineView;->applyNewData(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
        "<",
        "Lcom/google/glass/timeline/ui/TimelineItemAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/ReadMoreTimelineView;
    .param p2, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$3;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;-><init>(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    return-void
.end method


# virtual methods
.method protected matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 1
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method
