.class Lcom/google/glass/timeline/ui/TimelineActivity$3;
.super Ljava/lang/Object;
.source "TimelineActivity.java"

# interfaces
.implements Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/TimelineActivity;->ensureSelectionListener(Lcom/google/glass/timeline/ui/TimelineView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

.field final synthetic val$navigated:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineActivity;Ljava/util/BitSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/TimelineActivity;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineActivity$3;->this$0:Lcom/google/glass/timeline/ui/TimelineActivity;

    iput-object p2, p0, Lcom/google/glass/timeline/ui/TimelineActivity$3;->val$navigated:Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineActivity$3;->val$navigated:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 295
    return-void
.end method
