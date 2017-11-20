.class public Lcom/google/glass/home/timeline/SingleSourceTimelineActivity;
.super Lcom/google/glass/timeline/ui/FilteredTimelineActivity;
.source "SingleSourceTimelineActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Lcom/google/glass/timeline/TimelineDatabaseFilter;
    .locals 3

    .prologue
    .line 17
    new-instance v1, Lcom/google/glass/timeline/TimelineDatabaseFilter;

    invoke-direct {v1}, Lcom/google/glass/timeline/TimelineDatabaseFilter;-><init>()V

    .line 18
    .local v1, "timelineDatabaseFilter":Lcom/google/glass/timeline/TimelineDatabaseFilter;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/SingleSourceTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 19
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 20
    const-string v2, "source"

    .line 21
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/TimelineDatabaseFilter;->setSource(Ljava/lang/String;)Lcom/google/glass/timeline/TimelineDatabaseFilter;

    .line 23
    :cond_0
    return-object v1
.end method
