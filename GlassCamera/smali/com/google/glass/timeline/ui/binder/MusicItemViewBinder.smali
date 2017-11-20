.class public Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "MusicItemViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;,
        Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;,
        Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;,
        Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;
    }
.end annotation


# static fields
.field private static final ALBUM_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/glass/mosaic/MosaicSpec;",
            ">;"
        }
    .end annotation
.end field

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
    .locals 26
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
    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v23

    .line 96
    .local v23, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "proto/glass+music"

    aput-object v6, v4, v5

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    sget-object v4, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Timeline item does not have a Music proto attachment"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 152
    :goto_0
    return-object v24

    .line 102
    :cond_0
    sget v4, Lcom/google/glass/common/R$id;->album_art:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/glass/mosaic/MosaicView;

    .line 104
    .local v9, "albumArtView":Lcom/google/glass/mosaic/MosaicView;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 106
    .local v24, "loadingTasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "proto/glass+music"

    aput-object v6, v4, v5

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    .line 109
    .local v25, "protoAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 111
    sget-object v4, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Music item view is a bundle cover."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    sget v4, Lcom/google/glass/common/R$id;->bundle_cover_layout:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 114
    sget v4, Lcom/google/glass/common/R$id;->single_track_layout:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 116
    sget v4, Lcom/google/glass/common/R$id;->bundle_summary:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 117
    .local v22, "bundleSummaryView":Landroid/widget/TextView;
    new-instance v4, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverSummaryLoadingTask;-><init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "image/jpeg"

    aput-object v6, v4, v5

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 122
    .local v7, "artworkAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 123
    new-instance v4, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p6

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$BundleCoverArtworkLoadingTask;-><init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Ljava/util/List;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/mosaic/MosaicView;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 126
    :cond_1
    sget-object v4, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Music bundle cover doesn\'t have any album art."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 130
    .end local v7    # "artworkAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    .end local v22    # "bundleSummaryView":Landroid/widget/TextView;
    :cond_2
    sget-object v4, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Music item view is a single track."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    sget v4, Lcom/google/glass/common/R$id;->bundle_cover_layout:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 133
    sget v4, Lcom/google/glass/common/R$id;->single_track_layout:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 135
    sget v4, Lcom/google/glass/common/R$id;->track_name:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 136
    .local v14, "trackView":Landroid/widget/TextView;
    sget v4, Lcom/google/glass/common/R$id;->artist_name:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 137
    .local v15, "artistView":Landroid/widget/TextView;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "proto/glass+music"

    aput-object v6, v4, v5

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 138
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 139
    .local v13, "protoAttachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    new-instance v10, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v10 .. v15}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$MusicProtoLoadingTask;-><init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "image/jpeg"

    aput-object v6, v4, v5

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    const-string v4, "image/jpeg"

    .line 145
    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v19

    .line 146
    .local v19, "thumbnail":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    new-instance v16, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v20, p6

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v21}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder$AlbumArtLoadingTask;-><init>(Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/mosaic/MosaicView;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 148
    .end local v19    # "thumbnail":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_3
    sget-object v4, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Timeline item doesn\'t have an album art"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "willBindSameItem"    # Z

    .prologue
    const/16 v5, 0x8

    .line 159
    if-nez p2, :cond_0

    .line 160
    sget v4, Lcom/google/glass/common/R$id;->track_name:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 161
    .local v3, "trackView":Landroid/widget/TextView;
    sget v4, Lcom/google/glass/common/R$id;->artist_name:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    .local v1, "artistView":Landroid/widget/TextView;
    sget v4, Lcom/google/glass/common/R$id;->bundle_summary:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    .local v2, "bundleSummaryView":Landroid/widget/TextView;
    sget v4, Lcom/google/glass/common/R$id;->album_art:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicView;

    .line 164
    .local v0, "albumArtView":Lcom/google/glass/mosaic/MosaicView;
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v0}, Lcom/google/glass/mosaic/MosaicView;->clearImages()V

    .line 169
    sget v4, Lcom/google/glass/common/R$id;->bundle_cover_layout:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 170
    sget v4, Lcom/google/glass/common/R$id;->single_track_layout:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .end local v0    # "albumArtView":Lcom/google/glass/mosaic/MosaicView;
    .end local v1    # "artistView":Landroid/widget/TextView;
    .end local v2    # "bundleSummaryView":Landroid/widget/TextView;
    .end local v3    # "trackView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
