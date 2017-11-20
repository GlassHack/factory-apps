.class Lcom/google/glass/home/timeline/SingleNotificationView$2;
.super Ljava/lang/Object;
.source "SingleNotificationView.java"

# interfaces
.implements Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/SingleNotificationView;->init(Lcom/google/glass/home/timeline/TimelineNotificationActivity;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/SingleNotificationView;

.field final synthetic val$activity:Lcom/google/glass/home/timeline/TimelineNotificationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/SingleNotificationView;Lcom/google/glass/home/timeline/TimelineNotificationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/SingleNotificationView;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/glass/home/timeline/SingleNotificationView$2;->this$0:Lcom/google/glass/home/timeline/SingleNotificationView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/SingleNotificationView$2;->val$activity:Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLoaded(ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 114
    invoke-static {}, Lcom/google/glass/home/timeline/SingleNotificationView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onItemLoaded called with [position: %d, item id: %s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationView$2;->val$activity:Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->onItemLoaded(ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 116
    return-void
.end method
