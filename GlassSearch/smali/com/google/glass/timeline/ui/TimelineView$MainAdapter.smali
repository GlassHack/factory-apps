.class abstract Lcom/google/glass/timeline/ui/TimelineView$MainAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "TimelineView.java"

# interfaces
.implements Lcom/google/glass/timeline/SearchableAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/ui/TimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MainAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineView;


# direct methods
.method private constructor <init>(Lcom/google/glass/timeline/ui/TimelineView;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView$MainAdapter;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/timeline/ui/TimelineView;Lcom/google/glass/timeline/ui/TimelineView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/timeline/ui/TimelineView;
    .param p2, "x1"    # Lcom/google/glass/timeline/ui/TimelineView$1;

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineView$MainAdapter;-><init>(Lcom/google/glass/timeline/ui/TimelineView;)V

    return-void
.end method
