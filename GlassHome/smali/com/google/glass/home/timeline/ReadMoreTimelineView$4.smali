.class Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;
.super Ljava/lang/Object;
.source "ReadMoreTimelineView.java"

# interfaces
.implements Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreTimelineView;->createRemainingTextListener(Ljava/util/List;Lcom/google/glass/timeline/ui/TimelineItemLoader;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final itemIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$loader:Lcom/google/glass/timeline/ui/TimelineItemLoader;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/timeline/ui/TimelineItemLoader;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$loader:Lcom/google/glass/timeline/ui/TimelineItemLoader;

    iput-object p3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->itemIds:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;->itemIds:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public onRemainingText(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p2, "remaining"    # Ljava/lang/CharSequence;

    .prologue
    .line 266
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p2}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4$1;-><init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
