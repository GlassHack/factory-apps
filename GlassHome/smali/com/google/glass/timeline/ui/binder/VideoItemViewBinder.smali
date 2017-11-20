.class public Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "VideoItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 104
    sget v0, Lcom/google/glass/common/R$layout;->timeline_item_video:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readResult"    # Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .param p3, "inBundle"    # Z
    .param p4, "isReadMore"    # Z
    .param p5, "view"    # Landroid/view/View;
    .param p6, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p7, "textClipListener"    # Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .param p8, "contentSizedListener"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;
    .param p9, "contentLoadCompletionListener"    # Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;",
            "ZZ",
            "Landroid/view/View;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;",
            "Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;",
            "Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v10

    .line 116
    .local v10, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget v3, Lcom/google/glass/common/R$id;->text:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 117
    .local v12, "textView":Landroid/widget/TextView;
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 122
    .local v11, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    sget-object v3, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    .line 123
    invoke-static {v10, v3}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 124
    .local v13, "videoAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 125
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 127
    .local v5, "videoAttachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    sget v3, Lcom/google/glass/common/R$id;->thumbnail:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 128
    .local v6, "thumbnailView":Landroid/widget/ImageView;
    sget v3, Lcom/google/glass/common/R$id;->placeholder:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 129
    .local v7, "placeholderView":Landroid/widget/ImageView;
    sget v3, Lcom/google/glass/common/R$id;->overlay_icon:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 132
    .local v8, "overlayIconView":Landroid/widget/ImageView;
    check-cast p5, Lcom/google/glass/timeline/ui/VideoItemView;

    .end local p5    # "view":Landroid/view/View;
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v5, v1}, Lcom/google/glass/timeline/ui/VideoItemView;->setVideoAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 135
    new-instance v2, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;-><init>(Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 137
    .local v2, "loadingTask":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v2    # "loadingTask":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    .end local v5    # "videoAttachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v6    # "thumbnailView":Landroid/widget/ImageView;
    .end local v7    # "placeholderView":Landroid/widget/ImageView;
    .end local v8    # "overlayIconView":Landroid/widget/ImageView;
    :goto_0
    return-object v11

    .line 139
    .restart local p5    # "view":Landroid/view/View;
    :cond_0
    sget-object v3, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Video item has no videos."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v3, v4, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "willBindSameItem"    # Z

    .prologue
    .line 148
    sget v1, Lcom/google/glass/common/R$id;->thumbnail:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 149
    .local v0, "thumbnailView":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    return-void
.end method
