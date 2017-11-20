.class Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;
.super Ljava/lang/Object;
.source "TimelineItemLinkify.java"

# interfaces
.implements Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->configureLinkifyForTextView(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Ljava/lang/CharSequence;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

.field final synthetic val$boundView:Landroid/view/View;

.field final synthetic val$links:Ljava/util/List;

.field final synthetic val$spannedText:Landroid/text/Spanned;

.field final synthetic val$textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;Landroid/text/Spanned;Ljava/util/List;Landroid/view/View;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

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
    .locals 6
    .param p1, "clipped"    # Ljava/lang/CharSequence;

    .prologue
    .line 107
    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$spannedText:Landroid/text/Spanned;

    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int v0, v4, v5

    .line 108
    .local v0, "displayedLength":I
    const/4 v1, 0x0

    .line 110
    .local v1, "i":I
    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$links:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 111
    .local v2, "linkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getStart()I

    move-result v5

    if-lt v5, v0, :cond_1

    .line 116
    .end local v2    # "linkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_0
    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$links:Ljava/util/List;

    invoke-static {v4, v1}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->access$000(Ljava/util/List;I)[Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v3

    .line 117
    .local v3, "menuItems":[Lcom/google/glass/widget/MenuItemDescriptor;
    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$boundView:Landroid/view/View;

    invoke-static {v4, v3}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->access$100(Landroid/view/View;[Lcom/google/glass/widget/MenuItemDescriptor;)V

    .line 119
    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;->val$textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    invoke-interface {v4, p1}, Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;->onTextClipped(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    .line 114
    .end local v3    # "menuItems":[Lcom/google/glass/widget/MenuItemDescriptor;
    .restart local v2    # "linkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 115
    goto :goto_0
.end method
