.class public Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "SourceFile"


# static fields
.field private static final HERO_1:Lcom/google/glass/mosaic/MosaicSpec;

.field private static final HERO_2:Lcom/google/glass/mosaic/MosaicSpec;

.field private static final HERO_3:Lcom/google/glass/mosaic/MosaicSpec;

.field private static final HERO_4:Lcom/google/glass/mosaic/MosaicSpec;

.field private static final HERO_5:Lcom/google/glass/mosaic/MosaicSpec;

.field protected static final HERO_MAP:Landroid/util/SparseArray;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 43
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 46
    new-instance v8, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v6, v3, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v6, v1

    move-object v2, v8

    move v4, v3

    move-object v5, v6

    move v6, v1

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v8, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_1:Lcom/google/glass/mosaic/MosaicSpec;

    .line 51
    new-instance v8, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v6, v12, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v3

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v6, v1

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v6, v3

    move-object v2, v8

    move v4, v12

    move-object v5, v6

    move v6, v1

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v8, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_2:Lcom/google/glass/mosaic/MosaicSpec;

    .line 66
    new-instance v10, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v11, v14, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v1

    move v6, v3

    move v7, v12

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v11, v1

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v11, v3

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v1

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v11, v12

    move-object v4, v10

    move v5, v12

    move v6, v12

    move-object v7, v11

    move v8, v1

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v10, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_3:Lcom/google/glass/mosaic/MosaicSpec;

    .line 82
    new-instance v10, Lcom/google/glass/mosaic/MosaicSpec;

    new-array v11, v13, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v1

    move v6, v12

    move v7, v12

    move v8, v12

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v11, v1

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->MEDIUM:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v11, v3

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v11, v12

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v1

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v11, v14

    move-object v4, v10

    move v5, v12

    move v6, v13

    move-object v7, v11

    move v8, v1

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v10, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_4:Lcom/google/glass/mosaic/MosaicSpec;

    .line 99
    new-instance v10, Lcom/google/glass/mosaic/MosaicSpec;

    const/4 v0, 0x5

    new-array v11, v0, [Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    new-instance v4, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v9, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->BIG:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v5, v1

    move v6, v12

    move v7, v12

    move v8, v12

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v4, v11, v1

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v3

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v11, v3

    new-instance v0, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v5, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v0, v11, v12

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v11, v14

    new-instance v2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    sget-object v7, Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;->SMALL:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move v4, v1

    move v5, v3

    move v6, v3

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;-><init>(IIIILcom/google/glass/mosaic/MosaicSpec$LayoutSize;)V

    aput-object v2, v11, v13

    move-object v4, v10

    move v5, v12

    move v6, v13

    move-object v7, v11

    move v8, v1

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/mosaic/MosaicSpec;-><init>(II[Lcom/google/glass/mosaic/MosaicSpec$CellSpec;ZZ)V

    sput-object v10, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_5:Lcom/google/glass/mosaic/MosaicSpec;

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_MAP:Landroid/util/SparseArray;

    .line 112
    sget-object v0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_1:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_2:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_3:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_4:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_5:Lcom/google/glass/mosaic/MosaicSpec;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;-><init>()V

    return-void
.end method

.method protected static getIdForTag(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 139
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 142
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :cond_1
    sget-object v0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Attachment does not have an id or a client cache path set."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 125
    sget v0, Lcom/google/glass/common/R$layout;->timeline_item_image:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 168
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->width:I

    .line 169
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->height:I

    .line 172
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    sget-object v1, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_MEDIA_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 176
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 177
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->getIdForTag(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/google/glass/common/R$id;->tag_item_binder_bound_item:I

    .line 182
    invoke-virtual {p5, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 183
    :cond_0
    invoke-virtual {p0, p5, v5}, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->onClear(Landroid/view/View;Z)V

    .line 184
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-virtual {p0, p5, p6, v1, v0}, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->populateViews(Landroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    sget v0, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 188
    invoke-virtual {v0}, Lcom/google/glass/widget/DynamicSizeTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 189
    if-eqz p4, :cond_3

    .line 193
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 194
    invoke-virtual {v0, v5}, Lcom/google/glass/widget/DynamicSizeTextView;->setShowEllipsis(Z)V

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 202
    :goto_0
    invoke-virtual {v0, p7}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    .line 203
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 208
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    const-string v1, "application/glass+profile+photo"

    .line 207
    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_1

    .line 210
    sget v0, Lcom/google/glass/common/R$id;->profile_photo:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 211
    new-instance v4, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;

    invoke-direct {v4, p1, v1, v0, p6}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    sget v0, Lcom/google/glass/common/R$id;->tag_item_binder_bound_item:I

    invoke-virtual {p5, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 221
    :cond_2
    :goto_1
    return-object v2

    .line 199
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$dimen;->timeline_image_caption_bottom_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 219
    :cond_4
    sget-object v0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Image item has no images."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 257
    if-eqz p2, :cond_0

    .line 279
    :goto_0
    return-void

    .line 263
    :cond_0
    sget v0, Lcom/google/glass/common/R$id;->mosaic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicView;

    .line 264
    invoke-virtual {v0}, Lcom/google/glass/mosaic/MosaicView;->clearImages()V

    .line 266
    sget v0, Lcom/google/glass/common/R$id;->tag_item_binder_bound_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 269
    sget v0, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 270
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    sget v0, Lcom/google/glass/common/R$id;->overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 274
    sget v1, Lcom/google/glass/common/R$drawable;->overlay_small:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    sget v0, Lcom/google/glass/common/R$id;->profile_photo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected populateViews(Landroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 229
    sget v0, Lcom/google/glass/common/R$id;->overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 230
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    sget v1, Lcom/google/glass/common/R$drawable;->overlay_large_strong:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    :goto_0
    new-instance v0, Lcom/google/glass/util/VideoThumbnailHelper;

    .line 238
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/glass/util/VideoThumbnailHelper;-><init>(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/util/CachedFilesManager;)V

    .line 239
    new-instance v4, Lcom/google/glass/mosaic/AttachmentImageLoader;

    iget v1, p0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->width:I

    iget v5, p0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->height:I

    invoke-direct {v4, p4, v1, v5, v0}, Lcom/google/glass/mosaic/AttachmentImageLoader;-><init>(Ljava/util/List;IILcom/google/glass/util/VideoThumbnailHelper;)V

    .line 243
    sget v0, Lcom/google/glass/common/R$id;->mosaic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicView;

    .line 245
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 246
    :goto_1
    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {v0, v2}, Lcom/google/glass/mosaic/MosaicView;->setCellPadding(I)V

    .line 248
    sget-object v1, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->HERO_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, p2, v1}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    .line 251
    :goto_2
    return-object v0

    .line 233
    :cond_0
    sget v1, Lcom/google/glass/common/R$drawable;->overlay_small:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 245
    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {v0, v3}, Lcom/google/glass/mosaic/MosaicView;->setCellPadding(I)V

    .line 251
    const/4 v1, 0x0

    invoke-virtual {v0, v4, p2, v1}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method
