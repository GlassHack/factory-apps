.class public Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/timeline/TimelineItemDeletedListener;


# instance fields
.field private final cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

.field private final delegate:Lcom/google/glass/timeline/TimelineItemDeletedListener;

.field private final position:I


# direct methods
.method public constructor <init>(Lcom/google/android/glass/widget/CardScrollView;ILcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 18
    iput p2, p0, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;->position:I

    .line 19
    iput-object p3, p0, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;->delegate:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    .line 20
    return-void
.end method


# virtual methods
.method public onConfirmDelete()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;->delegate:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;->delegate:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineItemDeletedListener;->onConfirmDelete()V

    .line 27
    :cond_0
    return-void
.end method

.method public onDeleteCanceled()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;->delegate:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;->delegate:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineItemDeletedListener;->onDeleteCanceled()V

    .line 42
    :cond_0
    return-void
.end method

.method public onDeleted()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;->cardScrollView:Lcom/google/android/glass/widget/CardScrollView;

    iget v1, p0, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;->position:I

    sget-object v2, Lcom/google/android/glass/widget/CardScrollView$Animation;->DELETION:Lcom/google/android/glass/widget/CardScrollView$Animation;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/widget/CardScrollView;->animate(ILcom/google/android/glass/widget/CardScrollView$Animation;)Z

    .line 32
    iget-object v0, p0, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;->delegate:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/glass/timeline/DeleteAndAnimateTimelineItemListener;->delegate:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineItemDeletedListener;->onDeleted()V

    .line 35
    :cond_0
    return-void
.end method
