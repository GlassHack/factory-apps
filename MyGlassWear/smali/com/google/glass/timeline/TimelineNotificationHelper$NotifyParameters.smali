.class Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;
.super Ljava/lang/Object;
.source "TimelineNotificationHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/TimelineNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotifyParameters"
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field final helper:Lcom/google/glass/timeline/TimelineNotificationHelper;

.field final item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final numNotifications:I


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineNotificationHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 0
    .param p1, "helper"    # Lcom/google/glass/timeline/TimelineNotificationHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p4, "numNotifications"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->helper:Lcom/google/glass/timeline/TimelineNotificationHelper;

    .line 69
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->context:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 71
    iput p4, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->numNotifications:I

    .line 72
    return-void
.end method
