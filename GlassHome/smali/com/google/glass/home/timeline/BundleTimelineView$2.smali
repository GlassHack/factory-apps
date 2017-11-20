.class Lcom/google/glass/home/timeline/BundleTimelineView$2;
.super Ljava/lang/Object;
.source "BundleTimelineView.java"

# interfaces
.implements Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/BundleTimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/BundleTimelineView;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$2;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V
    .locals 1
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p2, "clipped"    # Z

    .prologue
    .line 154
    if-eqz p2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$2;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-static {v0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$300(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$2;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-static {v0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$400(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/TimelineItemId;)V

    goto :goto_0
.end method
