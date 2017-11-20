.class public abstract Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.super Ljava/lang/Object;
.source "TimelineItemDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Update"
.end annotation


# instance fields
.field private updatedItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1775
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->onExecute()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->updatedItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 1776
    return-void
.end method

.method public getItem()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;->updatedItem:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    return-object v0
.end method

.method public abstract onExecute()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
.end method
