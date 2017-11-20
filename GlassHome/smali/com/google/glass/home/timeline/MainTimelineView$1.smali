.class Lcom/google/glass/home/timeline/MainTimelineView$1;
.super Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
.source "MainTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/MainTimelineView;->createActiveItemAdapter()Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
        "<",
        "Lcom/google/glass/home/timeline/active/ActiveItemAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineView;Lcom/google/glass/home/timeline/active/ActiveItemAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/MainTimelineView;
    .param p2, "x0"    # Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineView$1;->this$0:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;-><init>(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 1
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/timeline/active/ActiveItemApi;->isActiveItemId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
