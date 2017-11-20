.class public Lcom/google/glass/voice/menu/DeleteCameraPictureTimelineItemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/timeline/TimelineItemDeletedListener;


# instance fields
.field private final context:Landroid/content/Context;

.field final timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/google/glass/voice/menu/DeleteCameraPictureTimelineItemListener;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 20
    iput-object p1, p0, Lcom/google/glass/voice/menu/DeleteCameraPictureTimelineItemListener;->context:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public onConfirmDelete()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onDeleteCanceled()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onDeleted()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/voice/menu/DeleteCameraPictureTimelineItemListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/voice/menu/DeleteCameraPictureTimelineItemListener;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/camera/CameraUtils;->notifyPhotoDeletion(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    return-void
.end method
