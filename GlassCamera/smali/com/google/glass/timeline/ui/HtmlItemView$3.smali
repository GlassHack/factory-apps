.class Lcom/google/glass/timeline/ui/HtmlItemView$3;
.super Ljava/lang/Object;
.source "HtmlItemView.java"

# interfaces
.implements Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/HtmlItemView;->startRendering(Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/HtmlItemView;

.field final synthetic val$contentSizedListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/HtmlItemView;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/HtmlItemView;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/glass/timeline/ui/HtmlItemView$3;->this$0:Lcom/google/glass/timeline/ui/HtmlItemView;

    iput-object p2, p0, Lcom/google/glass/timeline/ui/HtmlItemView$3;->val$contentSizedListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

    iput-object p3, p0, Lcom/google/glass/timeline/ui/HtmlItemView$3;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageCountChange(I)V
    .locals 4
    .param p1, "pages"    # I

    .prologue
    const/4 v0, 0x1

    .line 101
    iget-object v1, p0, Lcom/google/glass/timeline/ui/HtmlItemView$3;->val$contentSizedListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

    if-eqz v1, :cond_0

    .line 102
    if-le p1, v0, :cond_1

    .line 103
    .local v0, "clipped":Z
    :goto_0
    iget-object v1, p0, Lcom/google/glass/timeline/ui/HtmlItemView$3;->val$contentSizedListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

    new-instance v2, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v3, p0, Lcom/google/glass/timeline/ui/HtmlItemView$3;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v2, v3}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-interface {v1, v2, v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;->onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 105
    .end local v0    # "clipped":Z
    :cond_0
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
