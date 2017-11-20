.class public abstract Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field final adapter:Lcom/google/android/glass/widget/CardScrollAdapter;


# direct methods
.method protected constructor <init>(Lcom/google/android/glass/widget/CardScrollAdapter;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->adapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 95
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->adapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    return-object v0
.end method

.method protected abstract matches(Lcom/google/glass/timeline/TimelineItemId;)Z
.end method

.method protected updateQueryParameters()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method protected waitForLoad(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 118
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 119
    return-void
.end method
