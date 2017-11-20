.class Lcom/google/glass/home/timeline/SingleTimelineItemView$2;
.super Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
.source "SingleTimelineItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/SingleTimelineItemView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;
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
.field final synthetic this$0:Lcom/google/glass/home/timeline/SingleTimelineItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/SingleTimelineItemView;Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/SingleTimelineItemView;
    .param p2, "x0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/glass/home/timeline/SingleTimelineItemView$2;->this$0:Lcom/google/glass/home/timeline/SingleTimelineItemView;

    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;-><init>(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 1
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected waitForLoad(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onLoad"    # Ljava/lang/Runnable;

    .prologue
    .line 96
    return-void
.end method
