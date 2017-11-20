.class public Lcom/google/glass/timeline/ui/TimelineItemAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "TimelineItemAdapter.java"

# interfaces
.implements Lcom/google/glass/timeline/SearchableAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;,
        Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;,
        Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;
    }
.end annotation


# static fields
.field private static final CONTAINER_CACHE:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/glass/timeline/ui/TimelineItemContainerView;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTAINER_CACHE_CAPACITY:I = 0x5

.field private static final VIEW_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final VIEW_CACHE_CAPACITY:I = 0x5

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final bundleCornerDrawable:Landroid/graphics/drawable/Drawable;

.field private final bundleSheenDrawable:Landroid/graphics/drawable/Drawable;

.field private contentLoadCompletionListener:Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;

.field private contentSizedListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

.field private final context:Landroid/content/Context;

.field private final inBundle:Z

.field private final isReadMore:Z

.field private final itemCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private itemLoadedListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;

.field private final notificationState:Lcom/google/glass/timeline/ui/NotificationState;

.field private remainingTextListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;

.field private final syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

.field private final timelineItemLoader:Lcom/google/glass/timeline/ui/TimelineItemLoader;

.field private final timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 111
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->CONTAINER_CACHE:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->VIEW_CACHE:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/TimelineItemLoader;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p3, "timelineItemLoader"    # Lcom/google/glass/timeline/ui/TimelineItemLoader;
    .param p4, "inBundle"    # Z
    .param p5, "isReadMore"    # Z
    .param p6, "notificationState"    # Lcom/google/glass/timeline/ui/NotificationState;
    .param p7, "syncStatusReceiver"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .param p8, "timestampUpdateReceiver"    # Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->itemCache:Landroid/util/SparseArray;

    .line 181
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->context:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 183
    iput-object p3, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->timelineItemLoader:Lcom/google/glass/timeline/ui/TimelineItemLoader;

    .line 184
    iput-boolean p4, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->inBundle:Z

    .line 185
    iput-boolean p5, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->isReadMore:Z

    .line 186
    iput-object p6, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->notificationState:Lcom/google/glass/timeline/ui/NotificationState;

    .line 187
    iput-object p7, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .line 188
    iput-object p8, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->bundle_corner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->bundleCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->card_sheen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->bundleSheenDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->itemLoadedListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->itemCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->remainingTextListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->contentSizedListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    .param p1, "x1"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->fadeOutSubviewsOnScroll(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    .param p1, "x1"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->getBoundViewType(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    .param p1, "x1"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    .param p2, "x2"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->clearDataFromContainer(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    .param p1, "x1"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->destroyContainer(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->isReadMore:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;ILcom/google/glass/timeline/ui/binder/ItemViewBinder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    .param p1, "x1"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/google/glass/timeline/ui/binder/ItemViewBinder;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->addViewToContainer(Lcom/google/glass/timeline/ui/TimelineItemContainerView;ILcom/google/glass/timeline/ui/binder/ItemViewBinder;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/NotificationState;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->notificationState:Lcom/google/glass/timeline/ui/NotificationState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/ui/NotificationState$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    .param p1, "x1"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    .param p2, "x2"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->createNotificationStateListener(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/ui/NotificationState$Listener;

    move-result-object v0

    return-object v0
.end method

.method private addViewToContainer(Lcom/google/glass/timeline/ui/TimelineItemContainerView;ILcom/google/glass/timeline/ui/binder/ItemViewBinder;)Landroid/view/View;
    .locals 6
    .param p1, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    .param p2, "viewType"    # I
    .param p3, "binder"    # Lcom/google/glass/timeline/ui/binder/ItemViewBinder;

    .prologue
    const/4 v5, 0x0

    .line 505
    invoke-interface {p3}, Lcom/google/glass/timeline/ui/binder/ItemViewBinder;->getLayout()I

    move-result v2

    .line 508
    .local v2, "layout":I
    const/4 v3, 0x0

    .line 509
    .local v3, "view":Landroid/view/View;
    sget-object v4, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->VIEW_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 510
    .local v0, "cache":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "view":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 513
    .restart local v3    # "view":Landroid/view/View;
    :cond_0
    if-nez v3, :cond_1

    .line 514
    iget-object v4, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 515
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 521
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {p1, v3, v5}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->addView(Landroid/view/View;I)V

    .line 524
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_type:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 527
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v3, v4, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 530
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v4, v3}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 532
    return-object v3
.end method

.method private bind(ILcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    .line 248
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 249
    sget-object v1, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Entering TimelineItemAdapter.bind for position %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;-><init>(Lcom/google/glass/timeline/ui/TimelineItemAdapter;ILcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 373
    .local v0, "readCallback":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;
    sget v1, Lcom/google/glass/common/R$id;->tag_timeline_database_adapter_read_callback:I

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->timelineItemLoader:Lcom/google/glass/timeline/ui/TimelineItemLoader;

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader;->asyncRead(ILcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)V

    .line 377
    return-void
.end method

.method private cancelReadCallback(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 3
    .param p1, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    const/4 v2, 0x0

    .line 665
    sget v1, Lcom/google/glass/common/R$id;->tag_timeline_database_adapter_read_callback:I

    .line 666
    invoke-virtual {p1, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    .line 668
    .local v0, "readCallback":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;->cancel()V

    .line 670
    sget v1, Lcom/google/glass/common/R$id;->tag_timeline_database_adapter_read_callback:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 671
    sget v1, Lcom/google/glass/common/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 672
    return-void
.end method

.method private clearContainerViews(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Landroid/view/View;)V
    .locals 6
    .param p1, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    .param p2, "boundView"    # Landroid/view/View;

    .prologue
    .line 622
    sget v5, Lcom/google/glass/common/R$id;->tag_owned_views:I

    invoke-virtual {p1, v5}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 626
    .local v3, "ownedViews":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    invoke-virtual {p1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getChildCount()I

    move-result v0

    .line 627
    .local v0, "count":I
    const/4 v1, 0x0

    .line 628
    .local v1, "foundBoundView":Z
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 629
    invoke-virtual {p1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 631
    .local v4, "view":Landroid/view/View;
    if-eq v4, p2, :cond_1

    .line 633
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 634
    invoke-virtual {p1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->removeViewAt(I)V

    .line 628
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 639
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 643
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 644
    return-void

    .line 643
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private clearDataFromContainer(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Z)V
    .locals 3
    .param p1, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    .param p2, "willBindSameItem"    # Z

    .prologue
    .line 560
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 561
    .local v1, "boundView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 563
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_binder:I

    .line 564
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/binder/ItemViewBinder;

    .line 567
    .local v0, "binder":Lcom/google/glass/timeline/ui/binder/ItemViewBinder;
    invoke-interface {v0, p1, v1, p2}, Lcom/google/glass/timeline/ui/binder/ItemViewBinder;->clear(Landroid/view/View;Landroid/view/View;Z)V

    .line 571
    invoke-direct {p0, p1, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->clearContainerViews(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Landroid/view/View;)V

    .line 575
    .end local v0    # "binder":Lcom/google/glass/timeline/ui/binder/ItemViewBinder;
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->clearItemTags(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 576
    return-void
.end method

.method private clearItemTags(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 3
    .param p1, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    const/4 v2, 0x0

    .line 648
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 649
    sget v1, Lcom/google/glass/common/R$id;->tag_item_crc32:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 650
    sget v1, Lcom/google/glass/common/R$id;->tag_item_read_more:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 651
    sget v1, Lcom/google/glass/common/R$id;->tag_item_time_label_text:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 652
    sget v1, Lcom/google/glass/common/R$id;->tag_item_is_bundle_entry_point:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 655
    sget v1, Lcom/google/glass/common/R$id;->tag_notification_state_listener:I

    .line 656
    invoke-virtual {p1, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/NotificationState$Listener;

    .line 657
    .local v0, "notificationStateListener":Lcom/google/glass/timeline/ui/NotificationState$Listener;
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->notificationState:Lcom/google/glass/timeline/ui/NotificationState;

    if-eqz v1, :cond_0

    .line 658
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->notificationState:Lcom/google/glass/timeline/ui/NotificationState;

    invoke-virtual {v1, v0}, Lcom/google/glass/timeline/ui/NotificationState;->removeListener(Lcom/google/glass/timeline/ui/NotificationState$Listener;)V

    .line 660
    :cond_0
    sget v1, Lcom/google/glass/common/R$id;->tag_notification_state_listener:I

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 661
    return-void
.end method

.method private createNotificationStateListener(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/ui/NotificationState$Listener;
    .locals 1
    .param p1, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 409
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$2;-><init>(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    return-object v0
.end method

.method private destroyContainer(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 6
    .param p1, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    const/4 v5, 0x0

    .line 581
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v4}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 582
    .local v1, "boundView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 583
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 586
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_binder:I

    .line 587
    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/binder/ItemViewBinder;

    .line 588
    .local v0, "binder":Lcom/google/glass/timeline/ui/binder/ItemViewBinder;
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 591
    const/4 v4, 0x0

    invoke-interface {v0, p1, v1, v4}, Lcom/google/glass/timeline/ui/binder/ItemViewBinder;->clear(Landroid/view/View;Landroid/view/View;Z)V

    .line 594
    invoke-direct {p0, p1, v5}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->clearContainerViews(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Landroid/view/View;)V

    .line 595
    invoke-virtual {p1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->removeContainedView()V

    .line 596
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_fade_out_on_scroll:I

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 599
    invoke-interface {v0}, Lcom/google/glass/timeline/ui/binder/ItemViewBinder;->getLayout()I

    move-result v3

    .line 600
    .local v3, "layout":I
    sget-object v4, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->VIEW_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 601
    .local v2, "cache":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    if-nez v2, :cond_0

    .line 602
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    .end local v2    # "cache":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    const/4 v4, 0x5

    invoke-direct {v2, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 603
    .restart local v2    # "cache":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    sget-object v4, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->VIEW_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 605
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 609
    .end local v0    # "binder":Lcom/google/glass/timeline/ui/binder/ItemViewBinder;
    .end local v2    # "cache":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/view/View;>;"
    .end local v3    # "layout":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->clearItemTags(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 610
    return-void
.end method

.method private fadeOutSubviewsOnScroll(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 4
    .param p1, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    .line 397
    sget v1, Lcom/google/glass/common/R$id;->timestamp:I

    invoke-virtual {p1, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 398
    .local v0, "timestampView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 399
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_fade_out_on_scroll:I

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 400
    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 399
    invoke-virtual {p1, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_fade_out_on_scroll:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static getBinder(IZ)Lcom/google/glass/timeline/ui/binder/ItemViewBinder;
    .locals 1
    .param p0, "viewType"    # I
    .param p1, "isReadMore"    # Z

    .prologue
    .line 676
    packed-switch p0, :pswitch_data_0

    .line 715
    :pswitch_0
    new-instance v0, Lcom/google/glass/timeline/ui/binder/TextItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/TextItemViewBinder;-><init>()V

    :goto_0
    return-object v0

    .line 680
    :pswitch_1
    new-instance v0, Lcom/google/glass/timeline/ui/binder/HtmlItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/HtmlItemViewBinder;-><init>()V

    goto :goto_0

    .line 682
    :pswitch_2
    if-eqz p1, :cond_0

    .line 683
    new-instance v0, Lcom/google/glass/timeline/ui/binder/ReadMoreMessageItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/ReadMoreMessageItemViewBinder;-><init>()V

    goto :goto_0

    .line 685
    :cond_0
    new-instance v0, Lcom/google/glass/timeline/ui/binder/MessageItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/MessageItemViewBinder;-><init>()V

    goto :goto_0

    .line 688
    :pswitch_3
    if-eqz p1, :cond_1

    .line 689
    new-instance v0, Lcom/google/glass/timeline/ui/binder/ReadMoreMessageItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/ReadMoreMessageItemViewBinder;-><init>()V

    goto :goto_0

    .line 691
    :cond_1
    new-instance v0, Lcom/google/glass/timeline/ui/binder/IPhoneMessageItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/IPhoneMessageItemViewBinder;-><init>()V

    goto :goto_0

    .line 694
    :pswitch_4
    new-instance v0, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;-><init>()V

    goto :goto_0

    .line 696
    :pswitch_5
    if-eqz p1, :cond_2

    .line 697
    new-instance v0, Lcom/google/glass/timeline/ui/binder/TextItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/TextItemViewBinder;-><init>()V

    goto :goto_0

    .line 699
    :cond_2
    new-instance v0, Lcom/google/glass/timeline/ui/binder/SideImageItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/SideImageItemViewBinder;-><init>()V

    goto :goto_0

    .line 702
    :pswitch_6
    new-instance v0, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/VideoItemViewBinder;-><init>()V

    goto :goto_0

    .line 704
    :pswitch_7
    new-instance v0, Lcom/google/glass/timeline/ui/binder/CallItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/CallItemViewBinder;-><init>()V

    goto :goto_0

    .line 706
    :pswitch_8
    new-instance v0, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;-><init>()V

    goto :goto_0

    .line 708
    :pswitch_9
    new-instance v0, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/MusicItemViewBinder;-><init>()V

    goto :goto_0

    .line 710
    :pswitch_a
    new-instance v0, Lcom/google/glass/timeline/ui/binder/MapItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/MapItemViewBinder;-><init>()V

    goto :goto_0

    .line 712
    :pswitch_b
    new-instance v0, Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;-><init>()V

    goto :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private getBoundViewType(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)I
    .locals 2
    .param p1, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    .line 490
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {p1, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 491
    .local v0, "boundView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 492
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 494
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getBundleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 761
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 763
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 764
    return-object v0
.end method

.method static isSameItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/Long;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/Long;)Z
    .locals 1
    .param p0, "first"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p1, "firstCrc32"    # Ljava/lang/Long;
    .param p2, "second"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "secondCrc32"    # Ljava/lang/Long;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 482
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 483
    invoke-virtual {p1, p3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 485
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setSheenDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "sheenDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 453
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 454
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/google/android/glass/widget/CardScrollView;

    if-nez v3, :cond_0

    move-object p0, v1

    .line 455
    check-cast p0, Landroid/view/View;

    .line 456
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 460
    :cond_0
    if-eqz v1, :cond_2

    move-object v2, v1

    .line 461
    check-cast v2, Lcom/google/android/glass/widget/CardScrollView;

    .line 462
    .local v2, "scroller":Lcom/google/android/glass/widget/CardScrollView;
    invoke-virtual {v2, p0}, Lcom/google/android/glass/widget/CardScrollView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 463
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 464
    invoke-virtual {v2, v0, p1}, Lcom/google/android/glass/widget/CardScrollView;->setSheenDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 471
    .end local v0    # "index":I
    .end local v2    # "scroller":Lcom/google/android/glass/widget/CardScrollView;
    :goto_1
    return-void

    .line 466
    .restart local v0    # "index":I
    .restart local v2    # "scroller":Lcom/google/android/glass/widget/CardScrollView;
    :cond_1
    sget-object v3, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Card scroll view does not contain given view."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 469
    .end local v0    # "index":I
    .end local v2    # "scroller":Lcom/google/android/glass/widget/CardScrollView;
    :cond_2
    sget-object v3, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Could not find containing card scroll view."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method bindView(Lcom/google/glass/timeline/ui/binder/ItemViewBinder;Landroid/view/View;Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V
    .locals 15
    .param p1, "binder"    # Lcom/google/glass/timeline/ui/binder/ItemViewBinder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    .param p4, "readResult"    # Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .param p5, "textClipListener"    # Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 383
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->inBundle:Z

    iget-boolean v4, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->isReadMore:Z

    iget-object v7, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v9, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->contentSizedListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

    iget-object v10, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    iget-object v11, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    iget-object v12, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->contentLoadCompletionListener:Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object/from16 v8, p5

    invoke-interface/range {v0 .. v12}, Lcom/google/glass/timeline/ui/binder/ItemViewBinder;->bind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLcom/google/glass/timeline/ui/TimelineItemContainerView;Landroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;

    move-result-object v14

    .line 388
    .local v14, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->contentLoadCompletionListener:Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;

    if-eqz v0, :cond_0

    .line 389
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_0

    .line 390
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/LoadingTask;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->contentLoadCompletionListener:Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/LoadingTask;->addOnCompletedListener(Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V

    .line 389
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 393
    .end local v13    # "i":I
    :cond_0
    return-void
.end method

.method public findPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 1
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->timelineItemLoader:Lcom/google/glass/timeline/ui/TimelineItemLoader;

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/ui/TimelineItemLoader;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->timelineItemLoader:Lcom/google/glass/timeline/ui/TimelineItemLoader;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 740
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->itemCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 741
    .local v0, "item":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 742
    sget-object v1, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not yet loaded item at position %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 726
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 727
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 729
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->timelineItemLoader:Lcom/google/glass/timeline/ui/TimelineItemLoader;

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/ui/TimelineItemLoader;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 754
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    .line 755
    new-instance v0, Lcom/google/glass/timeline/TimelineItemId;

    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->findPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    .line 757
    :goto_0
    return v0

    .restart local p1    # "item":Ljava/lang/Object;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 218
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 219
    check-cast v1, Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .line 222
    .local v1, "container":Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    invoke-direct {p0, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->cancelReadCallback(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 225
    invoke-direct {p0, p1, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->bind(ILcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 240
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setLayoutDirection(I)V

    .line 243
    return-object v1

    .line 228
    .end local v1    # "container":Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    :cond_0
    sget-object v2, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->CONTAINER_CACHE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .line 229
    .local v0, "cached":Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    if-eqz v0, :cond_1

    .line 230
    move-object v1, v0

    .line 236
    .restart local v1    # "container":Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->bind(ILcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    goto :goto_0

    .line 232
    .end local v1    # "container":Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    :cond_1
    new-instance v1, Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;-><init>(Landroid/content/Context;)V

    .restart local v1    # "container":Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->itemCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 770
    invoke-super {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    .line 771
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->itemCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 776
    invoke-super {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetInvalidated()V

    .line 777
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 2
    .param p1, "recycle"    # Landroid/view/View;

    .prologue
    .line 537
    move-object v0, p1

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .line 540
    .local v0, "container":Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    invoke-direct {p0, v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->cancelReadCallback(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 543
    invoke-direct {p0, v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->destroyContainer(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 546
    sget-object v1, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->CONTAINER_CACHE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 547
    return-void
.end method

.method setBundleState(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 4
    .param p1, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "bundleCoverStatus"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasBundleId()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 434
    .local v1, "hasBundleId":Z
    :goto_0
    iget-boolean v2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->inBundle:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    if-eqz p3, :cond_0

    .line 438
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 439
    .local v0, "bundleView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->bundleCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->getBundleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    sget v2, Lcom/google/glass/common/R$id;->tag_item_is_bundle_entry_point:I

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 446
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->bundleSheenDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->setSheenDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 448
    .end local v0    # "bundleView":Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 430
    .end local v1    # "hasBundleId":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setContentSizedListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;)V
    .locals 0
    .param p1, "contentSizedListener"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->contentSizedListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

    .line 203
    return-void
.end method

.method public setDeferredContentLoadCompletionListener(Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V
    .locals 0
    .param p1, "deferredContentLoadCompletionListener"    # Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->contentLoadCompletionListener:Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;

    .line 209
    return-void
.end method

.method public setItemLoadedListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;)V
    .locals 0
    .param p1, "itemLoadedListener"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->itemLoadedListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;

    .line 213
    return-void
.end method

.method public setRemainingTextListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;)V
    .locals 0
    .param p1, "remainingTextListener"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->remainingTextListener:Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;

    .line 198
    return-void
.end method
