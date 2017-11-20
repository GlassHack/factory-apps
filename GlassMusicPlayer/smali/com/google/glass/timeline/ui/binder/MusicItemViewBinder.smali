.class public Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "SourceFile"


# static fields
.field private static final ALBUM_MAP:Landroid/util/SparseArray;

.field private static final MAX_ALBUM_ART_IN_MOSAIC:I = 0x4

.field private static final MAX_ARTIST_SUMMARY_LENGTH:I = 0xc

.field private static final PORTRAIT_4_ALT:Lcom/google/glass/mosaic/MosaicSpec;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 46
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 59
    new-instance v10, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v8, v11, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v1

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v3

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v8, v3

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v1

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v9

    const/4 v0, 0x3

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v8, v0

    move-object v4, v10

    move v5, v9

    move v6, v9

    move-object v7, v8

    move v8, v3

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v10, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->PORTRAIT_4_ALT:Lcom/google/glass/mosaic/MosaicSpec;

    .line 70
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->ALBUM_MAP:Landroid/util/SparseArray;

    .line 71
    sget-object v0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->ALBUM_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->PORTRAIT_4_ALT:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;-><init>()V

    .line 407
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->ALBUM_MAP:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/google/glass/common/R$layout;->timeline_item_music:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 14

    .prologue
    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 96
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "proto/glass+music"

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    sget-object v1, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Timeline item does not have a Music proto attachment"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 102
    :cond_0
    sget v1, Lcom/google/glass/common/R$id;->album_art:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/mosaic/MosaicView;

    .line 104
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 106
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "proto/glass+music"

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 109
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    .line 111
    sget-object v1, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Music item view is a bundle cover."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    sget v1, Lcom/google/glass/common/R$id;->bundle_cover_layout:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    sget v1, Lcom/google/glass/common/R$id;->single_track_layout:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    sget v1, Lcom/google/glass/common/R$id;->bundle_summary:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 117
    new-instance v4, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;

    invoke-direct {v4, p0, p1, v3, v1}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;-><init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;)V

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "image/jpeg"

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 122
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 123
    new-instance v1, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;-><init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Ljava/util/List;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/mosaic/MosaicView;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object v1, v13

    .line 152
    goto :goto_0

    .line 126
    :cond_1
    sget-object v1, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Music bundle cover doesn\'t have any album art."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 130
    :cond_2
    sget-object v1, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Music item view is a single track."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    sget v1, Lcom/google/glass/common/R$id;->bundle_cover_layout:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    sget v1, Lcom/google/glass/common/R$id;->single_track_layout:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    sget v1, Lcom/google/glass/common/R$id;->track_name:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 136
    sget v1, Lcom/google/glass/common/R$id;->artist_name:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 137
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "proto/glass+music"

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    .line 138
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 139
    new-instance v7, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;-><init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "image/jpeg"

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    const-string v1, "image/jpeg"

    .line 145
    invoke-static {v2, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v4

    .line 146
    new-instance v1, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;-><init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/mosaic/MosaicView;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 148
    :cond_3
    sget-object v1, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Timeline item doesn\'t have an album art"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 159
    if-nez p2, :cond_0

    .line 160
    sget v0, Lcom/google/glass/common/R$id;->track_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    sget v1, Lcom/google/glass/common/R$id;->artist_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    sget v2, Lcom/google/glass/common/R$id;->bundle_summary:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    sget v3, Lcom/google/glass/common/R$id;->album_art:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/mosaic/MosaicView;

    .line 164
    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v3}, Lcom/google/glass/mosaic/MosaicView;->clearImages()V

    .line 169
    sget v0, Lcom/google/glass/common/R$id;->bundle_cover_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 170
    sget v0, Lcom/google/glass/common/R$id;->single_track_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_0
    return-void
.end method
