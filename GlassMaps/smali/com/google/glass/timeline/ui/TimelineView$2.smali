.class Lcom/google/glass/timeline/ui/TimelineView$2;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineView;

.field final synthetic val$adapter:Lcom/google/android/glass/widget/CardScrollAdapter;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineView;Lcom/google/android/glass/widget/CardScrollAdapter;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView$2;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    iput-object p2, p0, Lcom/google/glass/timeline/ui/TimelineView$2;->val$adapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$2;->val$adapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    .line 394
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$2;->val$adapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetInvalidated()V

    .line 399
    return-void
.end method
