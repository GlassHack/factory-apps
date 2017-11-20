.class public abstract Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1530
    return-void
.end method

.method public getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public abstract onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end method
