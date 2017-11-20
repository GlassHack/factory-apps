.class public Lcom/google/common/collect/ForwardingSortedMultiset$StandardElementSet;
.super Lcom/google/common/collect/SortedMultisets$NavigableElementSet;
.source "ForwardingSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/SortedMultisets$NavigableElementSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingSortedMultiset;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/ForwardingSortedMultiset;

    .prologue
    .line 74
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMultiset$StandardElementSet;, "Lcom/google/common/collect/ForwardingSortedMultiset<TE;>.StandardElementSet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 75
    return-void
.end method
