.class final Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;
.super Lcom/google/glass/util/CompositeAdapter;
.source "TimelineView.java"

# interfaces
.implements Lcom/google/glass/timeline/SearchableAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/ui/TimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchableCompositeAdapter"
.end annotation


# instance fields
.field private final first:Lcom/google/android/glass/widget/CardScrollAdapter;

.field private final second:Lcom/google/android/glass/widget/CardScrollAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/glass/widget/CardScrollAdapter;Lcom/google/android/glass/widget/CardScrollAdapter;)V
    .locals 1
    .param p1, "first"    # Lcom/google/android/glass/widget/CardScrollAdapter;
    .param p2, "second"    # Lcom/google/android/glass/widget/CardScrollAdapter;

    .prologue
    .line 746
    invoke-direct {p0, p1, p2}, Lcom/google/glass/util/CompositeAdapter;-><init>(Lcom/google/android/glass/widget/CardScrollAdapter;Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 747
    instance-of v0, p1, Lcom/google/glass/timeline/SearchableAdapter;

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 748
    instance-of v0, p2, Lcom/google/glass/timeline/SearchableAdapter;

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 749
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 750
    iput-object p2, p0, Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 751
    return-void
.end method


# virtual methods
.method public findPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 2
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 755
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    check-cast v1, Lcom/google/glass/timeline/SearchableAdapter;

    invoke-interface {v1, p1}, Lcom/google/glass/timeline/SearchableAdapter;->findPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    .line 756
    .local v0, "result":I
    if-ltz v0, :cond_0

    move v1, v0

    .line 763
    :goto_0
    return v1

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    check-cast v1, Lcom/google/glass/timeline/SearchableAdapter;

    invoke-interface {v1, p1}, Lcom/google/glass/timeline/SearchableAdapter;->findPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    .line 760
    if-ltz v0, :cond_1

    .line 761
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    .line 763
    goto :goto_0
.end method
