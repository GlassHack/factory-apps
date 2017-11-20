.class public Lcom/google/glass/mosaic/MosaicView;
.super Landroid/widget/GridLayout;
.source "MosaicView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/mosaic/MosaicView$GroupCountType;,
        Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;
    }
.end annotation


# static fields
.field private static final CELL_LAYOUT_CACHE_CAPACITY:I = 0x50

.field private static final MAX_IMAGES_LANDSCAPE:I = 0x8

.field protected static final MAX_IMAGES_PORTRAIT:I = 0x5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final cellLayoutCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private cellPaddingPixels:I

.field private cellsLoadedListener:Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;

.field private hasLoadingFailure:Z

.field private final imageDownloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private imageLoader:Lcom/google/glass/mosaic/ImageLoader;

.field private mosaicMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/glass/mosaic/MosaicSpec;",
            ">;"
        }
    .end annotation
.end field

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
    .param p1, "context"    # Landroid/content/Context;

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

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
    .param p0, "x0"    # Lcom/google/glass/mosaic/MosaicView;

    .prologue
    .line 33
    iget v0, p0, Lcom/google/glass/mosaic/MosaicView;->numberOfLoadingTasks:I

    return v0
.end method

.method static synthetic access$010(Lcom/google/glass/mosaic/MosaicView;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/mosaic/MosaicView;

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
    .param p0, "x0"    # Lcom/google/glass/mosaic/MosaicView;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/glass/mosaic/MosaicView;->hasLoadingFailure:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/mosaic/MosaicView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/mosaic/MosaicView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/glass/mosaic/MosaicView;->hasLoadingFailure:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/mosaic/MosaicView;)Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/mosaic/MosaicView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicView;->cellsLoadedListener:Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;

    return-object v0
.end method

.method private addCell(Lcom/google/glass/util/CachedBitmapFactory;IIIIILandroid/widget/GridLayout$LayoutParams;Lcom/google/glass/mosaic/MosaicSpec$CellSpec;)V
    .locals 10
    .param p1, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p2, "elementIdx"    # I
    .param p3, "remainingCount"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "layoutId"    # I
    .param p7, "layoutParams"    # Landroid/widget/GridLayout$LayoutParams;
    .param p8, "cellSpec"    # Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    .prologue
    .line 284
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must supply an image source and/or a remainingCount"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_0
    const/4 v4, 0x0

    .line 290
    .local v4, "cellView":Landroid/widget/FrameLayout;
    sget-object v1, Lcom/google/glass/mosaic/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 291
    .local v8, "cache":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    if-eqz v8, :cond_1

    .line 292
    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cellView":Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 294
    .restart local v4    # "cellView":Landroid/widget/FrameLayout;
    :cond_1
    if-nez v4, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/google/glass/mosaic/MosaicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 296
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    move/from16 v0, p6

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4    # "cellView":Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 299
    .restart local v4    # "cellView":Landroid/widget/FrameLayout;
    sget v1, Lcom/google/glass/common/R$id;->tag_cell_layout_type:I

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 302
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    move-object/from16 v0, p8

    invoke-virtual {p0, v4, v0}, Lcom/google/glass/mosaic/MosaicView;->addCellPadding(Landroid/widget/FrameLayout;Lcom/google/glass/mosaic/MosaicSpec$CellSpec;)V

    .line 303
    move-object/from16 v0, p7

    invoke-virtual {p0, v4, v0}, Lcom/google/glass/mosaic/MosaicView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    if-lez p3, :cond_3

    .line 306
    iget-object v1, p0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-direct {p0, v1, v4, p2, p3}, Lcom/google/glass/mosaic/MosaicView;->bindRemainingCountView(Lcom/google/glass/mosaic/ImageLoader;Landroid/widget/FrameLayout;II)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_3
    iget-object v2, p0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/mosaic/MosaicView;->bindImageView(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/FrameLayout;III)V

    goto :goto_0
.end method

.method private bindImageView(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/FrameLayout;III)V
    .locals 8
    .param p1, "loader"    # Lcom/google/glass/mosaic/ImageLoader;
    .param p2, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p3, "cellView"    # Landroid/widget/FrameLayout;
    .param p4, "elementIdx"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

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

    move-result-object v7

    .line 338
    .local v7, "imageDownloadTask":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    new-instance v0, Lcom/google/glass/mosaic/MosaicView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/mosaic/MosaicView$1;-><init>(Lcom/google/glass/mosaic/MosaicView;)V

    invoke-virtual {v7, v0}, Lcom/google/glass/deferredcontent/LoadingTask;->addOnCompletedListener(Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V

    .line 355
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicView;->imageDownloadTasks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method private bindRemainingCountView(Lcom/google/glass/mosaic/ImageLoader;Landroid/widget/FrameLayout;II)V
    .locals 7
    .param p1, "loader"    # Lcom/google/glass/mosaic/ImageLoader;
    .param p2, "cellView"    # Landroid/widget/FrameLayout;
    .param p3, "elementIdx"    # I
    .param p4, "remainingCount"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 360
    sget v2, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 361
    .local v1, "textView":Landroid/widget/TextView;
    invoke-interface {p1, p3}, Lcom/google/glass/mosaic/ImageLoader;->getBackoffText(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "backoffText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 363
    const-string v2, "%s +%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v2, "+%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private buildMosaic(Lcom/google/glass/util/CachedBitmapFactory;)Ljava/util/List;
    .locals 32
    .param p1, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-static {v4}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-interface {v4}, Lcom/google/glass/mosaic/ImageLoader;->getGroupCountType()Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    move-result-object v26

    .line 174
    .local v26, "groupCountType":Lcom/google/glass/mosaic/MosaicView$GroupCountType;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-interface {v4}, Lcom/google/glass/mosaic/ImageLoader;->drawListSize()I

    move-result v25

    .line 175
    .local v25, "drawParticipantsSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-interface {v4}, Lcom/google/glass/mosaic/ImageLoader;->sourceListSize()I

    move-result v22

    .line 178
    .local v22, "allParticipantsSize":I
    monitor-enter p0

    .line 179
    :try_start_0
    sget-object v4, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_1

    .line 180
    add-int/lit8 v4, v25, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/glass/mosaic/MosaicView;->numberOfLoadingTasks:I

    .line 184
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/glass/mosaic/MosaicView;->hasLoadingFailure:Z

    .line 185
    sget-object v4, Lcom/google/glass/mosaic/MosaicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Loading %d images."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/glass/mosaic/MosaicView;->numberOfLoadingTasks:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v9

    invoke-interface {v4, v5, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    move/from16 v0, v25

    move/from16 v1, v22

    if-gt v0, v1, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 190
    move/from16 v30, v25

    .line 191
    .local v30, "numOfCells":I
    sget-object v4, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_0

    .line 192
    add-int/lit8 v30, v30, 0x1

    .line 195
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-interface {v4}, Lcom/google/glass/mosaic/ImageLoader;->getWidth()I

    move-result v31

    .line 196
    .local v31, "width":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-interface {v4}, Lcom/google/glass/mosaic/ImageLoader;->getHeight()I

    move-result v27

    .line 199
    .local v27, "height":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/mosaic/MosaicView;->getMosaicSpec(III)Lcom/google/glass/mosaic/MosaicSpec;

    move-result-object v29

    .line 202
    .local v29, "mosaicSpec":Lcom/google/glass/mosaic/MosaicSpec;
    if-nez v29, :cond_3

    .line 203
    sget-object v4, Lcom/google/glass/mosaic/MosaicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "BUG: missing mosaic specification for %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v9

    invoke-interface {v4, v5, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 258
    :goto_2
    return-object v4

    .line 182
    .end local v27    # "height":I
    .end local v29    # "mosaicSpec":Lcom/google/glass/mosaic/MosaicSpec;
    .end local v30    # "numOfCells":I
    .end local v31    # "width":I
    :cond_1
    :try_start_1
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/glass/mosaic/MosaicView;->numberOfLoadingTasks:I

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 188
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 209
    .restart local v27    # "height":I
    .restart local v29    # "mosaicSpec":Lcom/google/glass/mosaic/MosaicSpec;
    .restart local v30    # "numOfCells":I
    .restart local v31    # "width":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/mosaic/MosaicView;->clearImages()V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/mosaic/MosaicView;->cancelImageDownloads()V

    .line 213
    invoke-virtual/range {v29 .. v29}, Lcom/google/glass/mosaic/MosaicSpec;->getColumns()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/glass/mosaic/MosaicView;->setColumnCount(I)V

    .line 214
    invoke-virtual/range {v29 .. v29}, Lcom/google/glass/mosaic/MosaicSpec;->getRows()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/glass/mosaic/MosaicView;->setRowCount(I)V

    .line 216
    invoke-virtual/range {v29 .. v29}, Lcom/google/glass/mosaic/MosaicSpec;->getColumns()I

    move-result v4

    div-int v24, v31, v4

    .line 217
    .local v24, "cellWidth":I
    invoke-virtual/range {v29 .. v29}, Lcom/google/glass/mosaic/MosaicSpec;->getRows()I

    move-result v4

    div-int v23, v27, v4

    .line 221
    .local v23, "cellHeight":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move/from16 v0, v25

    if-ge v6, v0, :cond_5

    .line 222
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/google/glass/mosaic/MosaicSpec;->getCellSpec(I)Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    move-result-object v12

    .line 223
    .local v12, "cellSpec":Lcom/google/glass/mosaic/MosaicSpec$CellSpec;
    iget-object v0, v12, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->layoutSize:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move-object/from16 v28, v0

    .line 224
    .local v28, "layoutSize":Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/google/glass/mosaic/MosaicView;->createLayoutParams(Lcom/google/glass/mosaic/MosaicSpec$CellSpec;II)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v11

    .line 227
    .local v11, "params":Landroid/widget/GridLayout$LayoutParams;
    sget-object v4, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_4

    add-int/lit8 v4, v25, -0x1

    if-ne v6, v4, :cond_4

    .line 228
    invoke-virtual/range {v29 .. v29}, Lcom/google/glass/mosaic/MosaicSpec;->getShouldEmbedCount()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    .line 229
    move-object/from16 v0, v28

    invoke-interface {v4, v0, v6}, Lcom/google/glass/mosaic/ImageLoader;->getEmbededRemainingCountLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 231
    sub-int v7, v22, v25

    .line 232
    .local v7, "remainingCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    move-object/from16 v0, v28

    invoke-interface {v4, v0, v6}, Lcom/google/glass/mosaic/ImageLoader;->getEmbededRemainingCountLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v10

    .line 237
    .local v10, "layoutId":I
    :goto_4
    iget v8, v11, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget v9, v11, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/glass/mosaic/MosaicView;->addCell(Lcom/google/glass/util/CachedBitmapFactory;IIIIILandroid/widget/GridLayout$LayoutParams;Lcom/google/glass/mosaic/MosaicSpec$CellSpec;)V

    .line 221
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 234
    .end local v7    # "remainingCount":I
    .end local v10    # "layoutId":I
    :cond_4
    const/4 v7, -0x1

    .line 235
    .restart local v7    # "remainingCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    move-object/from16 v0, v28

    invoke-interface {v4, v0, v6}, Lcom/google/glass/mosaic/ImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v10

    .restart local v10    # "layoutId":I
    goto :goto_4

    .line 240
    .end local v7    # "remainingCount":I
    .end local v10    # "layoutId":I
    .end local v11    # "params":Landroid/widget/GridLayout$LayoutParams;
    .end local v12    # "cellSpec":Lcom/google/glass/mosaic/MosaicSpec$CellSpec;
    .end local v28    # "layoutSize":Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    :cond_5
    sget-object v4, Lcom/google/glass/mosaic/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/mosaic/MosaicView$GroupCountType;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_6

    .line 241
    add-int/lit8 v4, v30, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/google/glass/mosaic/MosaicSpec;->getCellSpec(I)Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    move-result-object v12

    .line 242
    .restart local v12    # "cellSpec":Lcom/google/glass/mosaic/MosaicSpec$CellSpec;
    iget-object v0, v12, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->layoutSize:Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;

    move-object/from16 v28, v0

    .line 243
    .restart local v28    # "layoutSize":Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/google/glass/mosaic/MosaicView;->createLayoutParams(Lcom/google/glass/mosaic/MosaicSpec$CellSpec;II)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v11

    .line 246
    .restart local v11    # "params":Landroid/widget/GridLayout$LayoutParams;
    invoke-virtual/range {v29 .. v29}, Lcom/google/glass/mosaic/MosaicSpec;->getAddCellForRemaining()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    const/4 v5, -0x1

    .line 247
    move-object/from16 v0, v28

    invoke-interface {v4, v0, v5}, Lcom/google/glass/mosaic/ImageLoader;->getRemainingLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    .line 248
    sub-int v7, v22, v25

    .line 249
    .restart local v7    # "remainingCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    const/4 v5, -0x1

    move-object/from16 v0, v28

    invoke-interface {v4, v0, v5}, Lcom/google/glass/mosaic/ImageLoader;->getRemainingLayoutId(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v10

    .line 254
    .restart local v10    # "layoutId":I
    :goto_5
    const/4 v15, -0x1

    iget v0, v11, Landroid/widget/GridLayout$LayoutParams;->width:I

    move/from16 v17, v0

    iget v0, v11, Landroid/widget/GridLayout$LayoutParams;->height:I

    move/from16 v18, v0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v16, v7

    move/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    invoke-direct/range {v13 .. v21}, Lcom/google/glass/mosaic/MosaicView;->addCell(Lcom/google/glass/util/CachedBitmapFactory;IIIIILandroid/widget/GridLayout$LayoutParams;Lcom/google/glass/mosaic/MosaicSpec$CellSpec;)V

    .line 258
    .end local v7    # "remainingCount":I
    .end local v10    # "layoutId":I
    .end local v11    # "params":Landroid/widget/GridLayout$LayoutParams;
    .end local v12    # "cellSpec":Lcom/google/glass/mosaic/MosaicSpec$CellSpec;
    .end local v28    # "layoutSize":Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageDownloadTasks:Ljava/util/List;

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    goto/16 :goto_2

    .line 251
    .restart local v11    # "params":Landroid/widget/GridLayout$LayoutParams;
    .restart local v12    # "cellSpec":Lcom/google/glass/mosaic/MosaicSpec$CellSpec;
    .restart local v28    # "layoutSize":Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;
    :cond_7
    const/4 v7, -0x1

    .line 252
    .restart local v7    # "remainingCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/mosaic/MosaicView;->imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    const/4 v5, -0x1

    move-object/from16 v0, v28

    invoke-interface {v4, v0, v5}, Lcom/google/glass/mosaic/ImageLoader;->getLayoutIdForSize(Lcom/google/glass/mosaic/MosaicSpec$LayoutSize;I)I

    move-result v10

    .restart local v10    # "layoutId":I
    goto :goto_5
.end method

.method public static getMaxNumSupportedEntities(II)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

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
    .param p1, "cellView"    # Landroid/widget/FrameLayout;
    .param p2, "cellSpec"    # Lcom/google/glass/mosaic/MosaicSpec$CellSpec;

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, "left":I
    const/4 v3, 0x0

    .line 315
    .local v3, "top":I
    const/4 v2, 0x0

    .line 316
    .local v2, "right":I
    const/4 v0, 0x0

    .line 317
    .local v0, "bottom":I
    iget v4, p2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->row:I

    if-lez v4, :cond_0

    .line 318
    iget v3, p0, Lcom/google/glass/mosaic/MosaicView;->cellPaddingPixels:I

    .line 320
    :cond_0
    iget v4, p2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->row:I

    iget v5, p2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->rowSpan:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/glass/mosaic/MosaicView;->getRowCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 321
    iget v0, p0, Lcom/google/glass/mosaic/MosaicView;->cellPaddingPixels:I

    .line 323
    :cond_1
    iget v4, p2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->column:I

    if-lez v4, :cond_2

    .line 324
    iget v1, p0, Lcom/google/glass/mosaic/MosaicView;->cellPaddingPixels:I

    .line 326
    :cond_2
    iget v4, p2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->column:I

    iget v5, p2, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->colSpan:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/glass/mosaic/MosaicView;->getColumnCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 327
    iget v2, p0, Lcom/google/glass/mosaic/MosaicView;->cellPaddingPixels:I

    .line 330
    :cond_3
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 331
    return-void
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
    .locals 7

    .prologue
    .line 373
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/mosaic/MosaicView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 374
    invoke-virtual {p0, v2}, Lcom/google/glass/mosaic/MosaicView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 377
    .local v1, "cellView":Landroid/widget/FrameLayout;
    sget v6, Lcom/google/glass/common/R$id;->tag_cell_layout_type:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 380
    .local v4, "layoutId":I
    sget v6, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 381
    .local v3, "imageView":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 382
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    :cond_0
    sget v6, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 385
    .local v5, "textView":Landroid/widget/TextView;
    if-eqz v5, :cond_1

    .line 386
    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_1
    sget-object v6, Lcom/google/glass/mosaic/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 391
    .local v0, "cache":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    if-nez v0, :cond_2

    .line 392
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .end local v0    # "cache":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    const/16 v6, 0x50

    invoke-direct {v0, v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 393
    .restart local v0    # "cache":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    sget-object v6, Lcom/google/glass/mosaic/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "cache":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    .end local v1    # "cellView":Landroid/widget/FrameLayout;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "layoutId":I
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/mosaic/MosaicView;->removeAllViews()V

    .line 400
    return-void
.end method

.method protected createLayoutParams(Lcom/google/glass/mosaic/MosaicSpec$CellSpec;II)Landroid/widget/GridLayout$LayoutParams;
    .locals 5
    .param p1, "cellSpec"    # Lcom/google/glass/mosaic/MosaicSpec$CellSpec;
    .param p2, "cellWidth"    # I
    .param p3, "cellHeight"    # I

    .prologue
    .line 263
    iget v3, p1, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->row:I

    iget v4, p1, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->rowSpan:I

    invoke-static {v3, v4}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    .line 264
    .local v2, "rowSpec":Landroid/widget/GridLayout$Spec;
    iget v3, p1, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->column:I

    iget v4, p1, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->colSpan:I

    invoke-static {v3, v4}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    .line 265
    .local v0, "colSpec":Landroid/widget/GridLayout$Spec;
    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 266
    .local v1, "params":Landroid/widget/GridLayout$LayoutParams;
    iget v3, p1, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->colSpan:I

    mul-int/2addr v3, p2

    iput v3, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 267
    iget v3, p1, Lcom/google/glass/mosaic/MosaicSpec$CellSpec;->rowSpan:I

    mul-int/2addr v3, p3

    iput v3, v1, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 268
    return-object v1
.end method

.method protected getMosaicSpec(III)Lcom/google/glass/mosaic/MosaicSpec;
    .locals 1
    .param p1, "numOfCells"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

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
    .param p1, "imageLoader"    # Lcom/google/glass/mosaic/ImageLoader;
    .param p2, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/mosaic/ImageLoader;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/glass/mosaic/MosaicSpec;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p3, "mosaicMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/glass/mosaic/MosaicSpec;>;"
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
    .param p1, "cellPadding"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/google/glass/mosaic/MosaicView;->cellPaddingPixels:I

    .line 128
    return-void
.end method

.method public setCellsLoadedListener(Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/glass/mosaic/MosaicView;->cellsLoadedListener:Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;

    .line 123
    return-void
.end method
