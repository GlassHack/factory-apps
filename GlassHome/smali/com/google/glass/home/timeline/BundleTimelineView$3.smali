.class Lcom/google/glass/home/timeline/BundleTimelineView$3;
.super Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
.source "BundleTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
        "<",
        "Lcom/google/glass/timeline/ui/TimelineItemAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

.field final synthetic val$onLoadRunnables:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/ui/TimelineItemAdapter;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/BundleTimelineView;
    .param p2, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iput-object p3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->val$onLoadRunnables:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;-><init>(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 1
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public waitForLoad(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onLoad"    # Ljava/lang/Runnable;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->val$onLoadRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
