.class abstract Lcom/google/glass/timeline/ui/TimelineView$MainAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/timeline/SearchableAdapter;


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

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineView$MainAdapter;-><init>(Lcom/google/glass/timeline/ui/TimelineView;)V

    return-void
.end method
