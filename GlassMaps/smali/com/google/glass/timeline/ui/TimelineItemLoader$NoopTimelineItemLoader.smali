.class public Lcom/google/glass/timeline/ui/TimelineItemLoader$NoopTimelineItemLoader;
.super Lcom/google/glass/timeline/ui/TimelineItemLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncRead(ILcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public find(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 1

    .prologue
    .line 110
    const/4 v0, -0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 115
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method
