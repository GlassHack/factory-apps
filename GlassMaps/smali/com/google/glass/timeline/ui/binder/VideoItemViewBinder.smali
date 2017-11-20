.class public Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "SourceFile"


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
    .locals 9

    .prologue
    .line 113
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 116
    sget v0, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 122
    sget-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    .line 123
    invoke-static {v1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 127
    sget v0, Lcom/google/glass/common/R$id;->thumbnail:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 128
    sget v0, Lcom/google/glass/common/R$id;->placeholder:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 129
    sget v0, Lcom/google/glass/common/R$id;->overlay_icon:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 132
    check-cast p5, Lcom/google/glass/timeline/ui/VideoItemView;

    invoke-virtual {p5, v3, p6}, Lcom/google/glass/timeline/ui/VideoItemView;->setVideoAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 135
    new-instance v0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder$VideoAttachmentLoadingTask;-><init>(Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 137
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :goto_0
    return-object v8

    .line 139
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Video item has no videos."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 148
    sget v0, Lcom/google/glass/common/R$id;->thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    return-void
.end method
