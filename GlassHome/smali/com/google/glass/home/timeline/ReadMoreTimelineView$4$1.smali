.class Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;
.super Ljava/lang/Object;
.source "ReadMoreTimelineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->onRemainingText(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

.field final synthetic val$itemId:Lcom/google/glass/timeline/TimelineItemId;

.field final synthetic val$remaining:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    iput-object p3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$remaining:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 277
    iget-object v10, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v10}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ":cont"

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "id":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    invoke-static {v10}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->access$400(Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 319
    :cond_0
    :goto_1
    return-void

    .line 277
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    .restart local v1    # "id":Ljava/lang/String;
    :cond_2
    new-instance v8, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    .line 286
    .local v8, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {v8, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 287
    iget-object v10, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$remaining:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 288
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 289
    iget-object v10, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iget-object v10, v10, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    invoke-static {v10}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->access$500(Lcom/google/glass/home/timeline/ReadMoreTimelineView;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iget-object v10, v10, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    invoke-static {v10}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->access$500(Lcom/google/glass/home/timeline/ReadMoreTimelineView;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v10

    iget-object v10, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v10}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 290
    iget-object v10, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iget-object v10, v10, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    invoke-static {v10}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->access$500(Lcom/google/glass/home/timeline/ReadMoreTimelineView;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v10

    iget-object v11, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v12, v11

    move v10, v9

    :goto_2
    if-ge v10, v12, :cond_3

    aget-object v3, v11, v10

    .line 291
    .local v3, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-static {v8, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 290
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 298
    .end local v3    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_3
    iget-object v10, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$remaining:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spanned;

    if-eqz v10, :cond_4

    .line 299
    iget-object v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$remaining:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 300
    .local v5, "spanned":Landroid/text/Spanned;
    iget-object v10, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$remaining:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const-class v11, Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;

    invoke-interface {v5, v9, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;

    .line 301
    .local v6, "spans":[Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;
    array-length v10, v6

    :goto_3
    if-ge v9, v10, :cond_4

    aget-object v4, v6, v9

    .line 302
    .local v4, "span":Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;
    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    .line 303
    .local v7, "spec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    invoke-interface {v5, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->setStart(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 304
    invoke-interface {v5, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->setEnd(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 305
    invoke-virtual {v4}, Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;->getLinkSpec()Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 306
    invoke-static {v8, v7}, Lcom/google/glass/timeline/TimelineItemUtils;->addLinkSpec(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;)V

    .line 301
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 311
    .end local v4    # "span":Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;
    .end local v5    # "spanned":Landroid/text/Spanned;
    .end local v6    # "spans":[Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;
    .end local v7    # "spec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_4
    iget-object v9, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iget-object v9, v9, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$loader:Lcom/google/glass/timeline/ui/TimelineItemLoader;

    iget-object v10, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v9, v10}, Lcom/google/glass/timeline/ui/TimelineItemLoader;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 312
    .local v2, "insertionPoint":I
    iget-object v9, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iget-object v9, v9, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$items:Ljava/util/List;

    invoke-interface {v9, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 315
    iget-object v9, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    iget-object v9, v9, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    invoke-virtual {v9}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    .line 316
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1
.end method
