.class public Lcom/google/glass/mosaic/MosaicView;
.super Landroid/widget/GridLayout;
.source "SourceFile"


# static fields
.field private static final CELL_LAYOUT_CACHE_CAPACITY:I = 0x50

.field private static final MAX_IMAGES_LANDSCAPE:I = 0x8

.field protected static final MAX_IMAGES_PORTRAIT:I = 0x5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final cellLayoutCache:Landroid/util/SparseArray;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private cellPaddingPixels:I

.field private cellsLoadedListener:Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;

.field private hasLoadingFailure:Z

.field private final imageDownloadTasks:Ljava/util/List;

.field private imageLoader:Lcom/google/glass/mosaic/ImageLoader;

.field private mosaicMap:Landroid/util/SparseArray;

.field private numberOfLoadingTasks:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/mosaic/MosaicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/google/glass/mosaic/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/mosaic/MosaicView;->imageDownloadTasks:Ljava/util/List;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/mosaic/MosaicView;->imageDownloadTasks:Ljava/util/List;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/mosaic/MosaicView;->imageDownloadTasks:Ljava/util/List;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/mosaic/MosaicView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/glass/mosaic/MosaicView;->numberOfLoadingTasks:I

    return v0
.end method

.method static synthetic access$010(Lcom/google/glass/mosaic/MosaicView;)I
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/google/glass/mosaic/MosaicView;->numberOfLoadingTasks:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/glass/mosaic/MosaicView;->numberOfLoadingTasks:I

    return v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/mosaic/MosaicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/mosaic/MosaicView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/glass/mosaic/MosaicView;->hasLoadingFailure:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/mosaic/MosaicView;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/glass/mosaic/MosaicView;->hasLoadingFailure:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/mosaic/MosaicView;)Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicView;->cellsLoadedListener:Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;

    return-object v0
.end method

.method private addCell(Lcom/google/glass/util/CachedBitmapFactory;IIIIILandroid/widget/GridLayout$LayoutParams;Lcom/google/glass/mosaic/MosaicSpec$CellSpec;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 284
    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an image source and/or a remainingCount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    sget-object v0, Lcom/google/glass/mosaic/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 291
    if-eqz v0, :cond_3

    .line 292
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v3, v0

    .line 294
    :goto_0
    if-nez v3, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/google/glass/mosaic/MosaicView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 299
    sget v1, Lcom/google/glass/common/R$id;->tag_cell_layout_type:I

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    move-object v3, v0

    .line 302
    :cond_1
    invoke-virtual {p0, v3, p8}, Lcom/google/glass/mosaic/MosaicView;->addCellPadding(Landroid/widget/FrameLayout;Lcom/google/glass/mosaic/MosaicSpec$CellSpec;)V

    .line 303
    invoke-virtual {p0, v3, p7}, Lcom/google/glass/mosaic/MosaicView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    if-lez p3, :cond_2

    .line 306
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-direct {p0, v0, v3, p2, p3}, Lcom/google/glass/mosaic/MosaicView;->bindRemainingCountView(Lcom/google/glass/mosaic/ImageLoader;Landroid/widget/FrameLayout;II)V

    .line 310
    :goto_1
    return-void

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/mosaic/MosaicView;->bindImageView(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/FrameLayout;III)V

    goto :goto_1

    :cond_3
    move-object v3, v1

    goto :goto_0
.end method

.method private bindImageView(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/FrameLayout;III)V
    .locals 7

    .prologue
    .line 335
    sget-object v0, Lcom/google/glass/mosaic/MosaicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating loading task"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p0}, Lcom/google/glass/mosaic/MosaicView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 336
    invoke-interface/range {v0 .. v6}, Lcom/google/glass/mosaic/ImageLoader;->createLoadingTask(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/FrameLayout;III)Lcom/google/glass/deferredcontent/LoadingTask;

    move-result-object v0

    .line 338
    new-instance v1, Lcom/google/glass/mosaic/MosaicView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/mosaic/MosaicView$1;-><init>(Lcom/google/glass/mosaic/MosaicView;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/LoadingTask;->addOnCompletedListener(Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V

    .line 355
    iget-object v1, p0, Lcom/google/glass/mosaic/MosaicView;->imageDownloadTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method private bindRemainingCountView(Lcom/google/glass/mosaic/ImageLoader;Landroid/widget/FrameLayout;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 360
    sget v0, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 361
    invoke-interface {p1, p3}, Lcom/google/glass/mosaic/ImageLoader;->getBackoffText(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_0

    .line 363
    const-string v2, "%s +%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v1, "+%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private buildMosaic(Lcom/google/glass/util/CachedBitmapFactory;)Ljava/util/List;
    .locals 19

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-static {v3}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-interface {v3}, Lcom/google/glass/mosaic/ImageLoader;->getGroupCountType()Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    move-result-object v14

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-interface {v3}, Lcom/google/glass/mosaic/ImageLoader;->drawListSize()I

    move-result v13

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-interface {v3}, Lcom/google/glass/mosaic/ImageLoader;->sourceListSize()I

    move-result v15

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    sget-object v3, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    if-ne v14, v3, :cond_0

    .line 180
    add-int/lit8 v3, v13, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/glass/mosaic/MosaicView;->numberOfLoadingTasks:I

    .line 184
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/glass/mosaic/MosaicView;->hasLoadingFailure:Z

    .line 185
    sget-object v3, Lcom/google/glass/mosaic/MosaicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Loading %d images."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/glass/mosaic/MosaicView;->numberOfLoadingTasks:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-gt v13, v15, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 191
    sget-object v3, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    if-ne v14, v3, :cond_7

    .line 192
    add-int/lit8 v3, v13, 0x1

    move v12, v3

    .line 195
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-interface {v3}, Lcom/google/glass/mosaic/ImageLoader;->getWidth()I

    move-result v3

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-interface {v4}, Lcom/google/glass/mosaic/ImageLoader;->getHeight()I

    move-result v4

    .line 199
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3, v4}, Lcom/google/glass/mosaic/MosaicView;->getMosaicSpec(III)Lcom/google/glass/mosaic/MosaicSpec;

    move-result-object v16

    .line 202
    if-nez v16, :cond_2

    .line 203
    sget-object v3, Lcom/google/glass/mosaic/MosaicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "BUG: missing mosaic specification for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 258
    :goto_3
    return-object v3

    .line 182
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/glass/mosaic/MosaicView;->numberOfLoadingTasks:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 188
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/mosaic/MosaicView;->clearImages()V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/mosaic/MosaicView;->cancelImageDownloads()V

    .line 213
    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/mosaic/MosaicSpec;->getColumns()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/glass/mosaic/MosaicView;->setColumnCount(I)V

    .line 214
    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/mosaic/MosaicSpec;->getRows()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/glass/mosaic/MosaicView;->setRowCount(I)V

    .line 216
    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/mosaic/MosaicSpec;->getColumns()I

    move-result v5

    div-int v17, v3, v5

    .line 217
    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/mosaic/MosaicSpec;->getRows()I

    move-result v3

    div-int v18, v4, v3

    .line 221
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v13, :cond_4

    .line 222
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/glass/mosaic/MosaicSpec;->getCellSpec(I)Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    move-result-object v11

    .line 223
    iget-object v3, v11, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->layoutSize:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    .line 224
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v11, v1, v2}, Lcom/google/glass/mosaic/MosaicView;->createLayoutParams(Lcom/google/glass/mosaic/MosaicSpec$CellSpec;II)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v10

    .line 227
    sget-object v4, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    if-ne v14, v4, :cond_3

    add-int/lit8 v4, v13, -0x1

    if-ne v5, v4, :cond_3

    .line 228
    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/mosaic/MosaicSpec;->getShouldEmbedCount()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    .line 229
    invoke-interface {v4, v3, v5}, Lcom/google/glass/mosaic/ImageLoader;->getEmbededRemainingCountLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 231
    sub-int v6, v15, v13

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-interface {v4, v3, v5}, Lcom/google/glass/mosaic/ImageLoader;->getEmbededRemainingCountLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v9

    .line 237
    :goto_5
    iget v7, v10, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget v8, v10, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/mosaic/MosaicView;->addCell(Lcom/google/glass/util/CachedBitmapFactory;IIIIILandroid/widget/GridLayout$LayoutParams;Lcom/google/glass/mosaic/MosaicSpec$CellSpec;)V

    .line 221
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 234
    :cond_3
    const/4 v6, -0x1

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-interface {v4, v3, v5}, Lcom/google/glass/mosaic/ImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v9

    goto :goto_5

    .line 240
    :cond_4
    sget-object v3, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    if-ne v14, v3, :cond_5

    .line 241
    add-int/lit8 v3, v12, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/glass/mosaic/MosaicSpec;->getCellSpec(I)Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    move-result-object v11

    .line 242
    iget-object v3, v11, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->layoutSize:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    .line 243
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v11, v1, v2}, Lcom/google/glass/mosaic/MosaicView;->createLayoutParams(Lcom/google/glass/mosaic/MosaicSpec$CellSpec;II)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v10

    .line 246
    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/mosaic/MosaicSpec;->getAddCellForRemaining()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    const/4 v5, -0x1

    .line 247
    invoke-interface {v4, v3, v5}, Lcom/google/glass/mosaic/ImageLoader;->getRemainingLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 248
    sub-int v6, v15, v13

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    const/4 v5, -0x1

    invoke-interface {v4, v3, v5}, Lcom/google/glass/mosaic/ImageLoader;->getRemainingLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v9

    .line 254
    :goto_6
    const/4 v5, -0x1

    iget v7, v10, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget v8, v10, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/mosaic/MosaicView;->addCell(Lcom/google/glass/util/CachedBitmapFactory;IIIIILandroid/widget/GridLayout$LayoutParams;Lcom/google/glass/mosaic/MosaicSpec$CellSpec;)V

    .line 258
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/mosaic/MosaicView;->imageDownloadTasks:Ljava/util/List;

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_3

    .line 251
    :cond_6
    const/4 v6, -0x1

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    const/4 v5, -0x1

    invoke-interface {v4, v3, v5}, Lcom/google/glass/mosaic/ImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v9

    goto :goto_6

    :cond_7
    move v12, v13

    goto/16 :goto_2
.end method

.method public static getMaxNumSupportedEntities(II)I
    .locals 1

    .prologue
    .line 113
    if-le p0, p1, :cond_0

    .line 114
    const/16 v0, 0x8

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method protected addCellPadding(Landroid/widget/FrameLayout;Lcom/google/glass/mosaic/MosaicSpec$CellSpec;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 313
    .line 317
    iget v0, p2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->row:I

    if-lez v0, :cond_3

    .line 318
    iget v0, p0, Lcom/google/glass/mosaic/MosaicView;->cellPaddingPixels:I

    .line 320
    :goto_0
    iget v2, p2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->row:I

    iget v3, p2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->rowSpan:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/glass/mosaic/MosaicView;->getRowCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 321
    iget v2, p0, Lcom/google/glass/mosaic/MosaicView;->cellPaddingPixels:I

    .line 323
    :goto_1
    iget v3, p2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->column:I

    if-lez v3, :cond_1

    .line 324
    iget v3, p0, Lcom/google/glass/mosaic/MosaicView;->cellPaddingPixels:I

    .line 326
    :goto_2
    iget v4, p2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->column:I

    iget v5, p2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->colSpan:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/glass/mosaic/MosaicView;->getColumnCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 327
    iget v1, p0, Lcom/google/glass/mosaic/MosaicView;->cellPaddingPixels:I

    .line 330
    :cond_0
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 331
    return-void

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public cancelImageDownloads()V
    .locals 2

    .prologue
    .line 404
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v1, p0, Lcom/google/glass/mosaic/MosaicView;->imageDownloadTasks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->cancel(Ljava/util/List;)V

    .line 405
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicView;->imageDownloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 406
    return-void
.end method

.method public clearImages()V
    .locals 5

    .prologue
    .line 373
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/mosaic/MosaicView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 374
    invoke-virtual {p0, v2}, Lcom/google/glass/mosaic/MosaicView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 377
    sget v1, Lcom/google/glass/common/R$id;->tag_cell_layout_type:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 380
    sget v1, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 381
    if-eqz v1, :cond_0

    .line 382
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    :cond_0
    sget v1, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 385
    if-eqz v1, :cond_1

    .line 386
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_1
    sget-object v1, Lcom/google/glass/mosaic/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 391
    if-nez v1, :cond_2

    .line 392
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v4, 0x50

    invoke-direct {v1, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 393
    sget-object v4, Lcom/google/glass/mosaic/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 399
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/mosaic/MosaicView;->removeAllViews()V

    .line 400
    return-void
.end method

.method protected createLayoutParams(Lcom/google/glass/mosaic/MosaicSpec$CellSpec;II)Landroid/widget/GridLayout$LayoutParams;
    .locals 3

    .prologue
    .line 263
    iget v0, p1, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->row:I

    iget v1, p1, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->rowSpan:I

    invoke-static {v0, v1}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    .line 264
    iget v1, p1, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->column:I

    iget v2, p1, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->colSpan:I

    invoke-static {v1, v2}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    .line 265
    new-instance v2, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 266
    iget v0, p1, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->colSpan:I

    mul-int/2addr v0, p2

    iput v0, v2, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 267
    iget v0, p1, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->rowSpan:I

    mul-int/2addr v0, p3

    iput v0, v2, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 268
    return-object v2
.end method

.method protected getMosaicSpec(III)Lcom/google/glass/mosaic/MosaicSpec;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicView;->mosaicMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicView;->mosaicMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicSpec;

    .line 160
    :goto_0
    return-object v0

    .line 157
    :cond_0
    if-le p2, p3, :cond_1

    .line 158
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicSpec;

    goto :goto_0

    .line 160
    :cond_1
    sget-object v0, Lcom/google/glass/mosaic/MosaicSpec;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicSpec;

    goto :goto_0
.end method

.method public loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;
    .locals 1

    .prologue
    .line 141
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/glass/mosaic/ImageLoader;->sourceListSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    iput-object p1, p0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    .line 143
    iput-object p3, p0, Lcom/google/glass/mosaic/MosaicView;->mosaicMap:Landroid/util/SparseArray;

    .line 144
    invoke-direct {p0, p2}, Lcom/google/glass/mosaic/MosaicView;->buildMosaic(Lcom/google/glass/util/CachedBitmapFactory;)Ljava/util/List;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public setCellPadding(I)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/google/glass/mosaic/MosaicView;->cellPaddingPixels:I

    .line 128
    return-void
.end method

.method public setCellsLoadedListener(Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/glass/mosaic/MosaicView;->cellsLoadedListener:Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;

    .line 123
    return-void
.end method
