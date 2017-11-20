.class Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

.field final synthetic val$boundView:Landroid/view/View;

.field final synthetic val$links:Ljava/util/List;

.field final synthetic val$spannedText:Landroid/text/Spanned;

.field final synthetic val$textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;Landroid/text/Spanned;Ljava/util/List;Landroid/view/View;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->this$0:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    iput-object p2, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$spannedText:Landroid/text/Spanned;

    iput-object p3, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$links:Ljava/util/List;

    iput-object p4, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$boundView:Landroid/view/View;

    iput-object p5, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextClipped(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$spannedText:Landroid/text/Spanned;

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v2, v0, v1

    .line 108
    const/4 v0, 0x0

    .line 110
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$links:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 111
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getStart()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$links:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->access$000(Ljava/util/List;I)[Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$boundView:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->access$100(Landroid/view/View;[Lcom/google/glass/widget/MenuItemDescriptor;)V

    .line 119
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    invoke-interface {v0, p1}, Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;->onTextClipped(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    .line 114
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 115
    goto :goto_0
.end method
