.class final Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;
.super Lcom/google/glass/util/CompositeAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/timeline/SearchableAdapter;


# instance fields
.field private final first:Lcom/google/android/glass/widget/CardScrollAdapter;

.field private final second:Lcom/google/android/glass/widget/CardScrollAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/glass/widget/CardScrollAdapter;Lcom/google/android/glass/widget/CardScrollAdapter;)V
    .locals 1

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
.method public final findPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    check-cast v0, Lcom/google/glass/timeline/SearchableAdapter;

    invoke-interface {v0, p1}, Lcom/google/glass/timeline/SearchableAdapter;->findPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    .line 756
    if-ltz v0, :cond_1

    .line 763
    :cond_0
    :goto_0
    return v0

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    check-cast v0, Lcom/google/glass/timeline/SearchableAdapter;

    invoke-interface {v0, p1}, Lcom/google/glass/timeline/SearchableAdapter;->findPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    .line 760
    if-ltz v0, :cond_0

    .line 761
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method
