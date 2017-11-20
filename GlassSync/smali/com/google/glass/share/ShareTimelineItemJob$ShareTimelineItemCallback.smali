.class public interface abstract Lcom/google/glass/share/ShareTimelineItemJob$ShareTimelineItemCallback;
.super Ljava/lang/Object;
.source "ShareTimelineItemJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/share/ShareTimelineItemJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShareTimelineItemCallback"
.end annotation


# virtual methods
.method public abstract onTemporaryShareCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
.end method

.method public abstract onTimelineItemLoaded(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
.end method
