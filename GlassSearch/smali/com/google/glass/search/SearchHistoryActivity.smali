.class public Lcom/google/glass/search/SearchHistoryActivity;
.super Lcom/google/glass/timeline/ui/FilteredTimelineActivity;
.source "SearchHistoryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Lcom/google/glass/timeline/TimelineDatabaseFilter;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/google/glass/timeline/TimelineDatabaseFilter;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineDatabaseFilter;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineDatabaseFilter;->setAttributionType(I)Lcom/google/glass/timeline/TimelineDatabaseFilter;

    move-result-object v0

    return-object v0
.end method
