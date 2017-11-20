.class public Lcom/google/common/collect/ForwardingNavigableSet$StandardDescendingSet;
.super Lcom/google/common/collect/Sets$DescendingSet;
.source "ForwardingNavigableSet.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingNavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardDescendingSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$DescendingSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingNavigableSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/ForwardingNavigableSet;

    .prologue
    .line 171
    .local p0, "this":Lcom/google/common/collect/ForwardingNavigableSet$StandardDescendingSet;, "Lcom/google/common/collect/ForwardingNavigableSet<TE;>.StandardDescendingSet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Sets$DescendingSet;-><init>(Ljava/util/NavigableSet;)V

    .line 172
    return-void
.end method
