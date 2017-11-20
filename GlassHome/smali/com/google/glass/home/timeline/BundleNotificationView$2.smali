.class Lcom/google/glass/home/timeline/BundleNotificationView$2;
.super Ljava/lang/Object;
.source "BundleNotificationView.java"

# interfaces
.implements Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleNotificationView;->init(Lcom/google/glass/home/timeline/TimelineNotificationActivity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/BundleNotificationView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleNotificationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/BundleNotificationView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleNotificationView$2;->this$0:Lcom/google/glass/home/timeline/BundleNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V
    .locals 1
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p2, "clipped"    # Z

    .prologue
    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationView$2;->this$0:Lcom/google/glass/home/timeline/BundleNotificationView;

    invoke-static {v0, p1}, Lcom/google/glass/home/timeline/BundleNotificationView;->access$200(Lcom/google/glass/home/timeline/BundleNotificationView;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationView$2;->this$0:Lcom/google/glass/home/timeline/BundleNotificationView;

    invoke-static {v0, p1}, Lcom/google/glass/home/timeline/BundleNotificationView;->access$300(Lcom/google/glass/home/timeline/BundleNotificationView;Lcom/google/glass/timeline/TimelineItemId;)V

    goto :goto_0
.end method
