.class Lcom/google/common/collect/AbstractMapBasedMultiset$1;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

.field toRemove:Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic val$backingEntries:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/AbstractMapBasedMultiset;

    .prologue
    .line 88
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset$1;, "Lcom/google/common/collect/AbstractMapBasedMultiset$1;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset$1;, "Lcom/google/common/collect/AbstractMapBasedMultiset$1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset$1;, "Lcom/google/common/collect/AbstractMapBasedMultiset$1;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 100
    .local v0, "mapEntry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->toRemove:Lcom/google/common/collect/Multiset$Entry;

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->canRemove:Z

    .line 102
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset$1;, "Lcom/google/common/collect/AbstractMapBasedMultiset$1;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 6

    .prologue
    .line 107
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultiset$1;, "Lcom/google/common/collect/AbstractMapBasedMultiset$1;"
    iget-boolean v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->canRemove:Z

    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 108
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->toRemove:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$002(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 109
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->canRemove:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->toRemove:Lcom/google/common/collect/Multiset$Entry;

    .line 112
    return-void
.end method
