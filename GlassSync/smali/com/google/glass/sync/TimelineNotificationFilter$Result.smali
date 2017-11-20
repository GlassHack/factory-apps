.class Lcom/google/glass/sync/TimelineNotificationFilter$Result;
.super Ljava/lang/Object;
.source "TimelineNotificationFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/TimelineNotificationFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# instance fields
.field private final hasFutureNotification:Z

.field private final itemToNotify:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final numNotifications:I


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZI)V
    .locals 0
    .param p1, "itemToNotify"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "hasFutureNotification"    # Z
    .param p3, "numNotifications"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/glass/sync/TimelineNotificationFilter$Result;->itemToNotify:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 51
    iput-boolean p2, p0, Lcom/google/glass/sync/TimelineNotificationFilter$Result;->hasFutureNotification:Z

    .line 52
    iput p3, p0, Lcom/google/glass/sync/TimelineNotificationFilter$Result;->numNotifications:I

    .line 53
    return-void
.end method


# virtual methods
.method public getItemToNotify()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/sync/TimelineNotificationFilter$Result;->itemToNotify:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public getNumNotifications()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/glass/sync/TimelineNotificationFilter$Result;->numNotifications:I

    return v0
.end method

.method public hasFutureNotification()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/glass/sync/TimelineNotificationFilter$Result;->hasFutureNotification:Z

    return v0
.end method
