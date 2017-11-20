.class Lcom/google/glass/home/timeline/TimelineItemNotification$1;
.super Lcom/google/glass/home/timeline/PreloadHtmlTask;
.source "TimelineItemNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/TimelineItemNotification;->loadHtml(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/TimelineItemNotification;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineItemNotification;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/TimelineItemNotification;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemNotification$1;->this$0:Lcom/google/glass/home/timeline/TimelineItemNotification;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/home/timeline/PreloadHtmlTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    return-void
.end method


# virtual methods
.method public onPreloadComplete(J)V
    .locals 1
    .param p1, "loadTime"    # J

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification$1;->this$0:Lcom/google/glass/home/timeline/TimelineItemNotification;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/timeline/TimelineItemNotification;->notifyContentReady(J)V

    .line 126
    return-void
.end method
