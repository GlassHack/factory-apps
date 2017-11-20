.class public abstract Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
.super Ljava/lang/Object;
.source "TimelineView.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/ui/TimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdapterWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/glass/widget/CardScrollAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final adapter:Lcom/google/android/glass/widget/CardScrollAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/glass/widget/CardScrollAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<TT;>;"
    .local p1, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->adapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 95
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<TT;>;"
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->adapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    return-object v0
.end method

.method protected abstract matches(Lcom/google/glass/timeline/TimelineItemId;)Z
.end method

.method protected updateQueryParameters()V
    .locals 0

    .prologue
    .line 109
    .local p0, "this":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<TT;>;"
    return-void
.end method

.method protected waitForLoad(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onLoad"    # Ljava/lang/Runnable;

    .prologue
    .line 118
    .local p0, "this":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<TT;>;"
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 119
    return-void
.end method
