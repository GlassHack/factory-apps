.class Lcom/google/common/collect/ImmutableMultimap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final multimap:Lcom/google/common/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 638
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    .line 639
    return-void
.end method


# virtual methods
.method isPartialView()Z
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Lcom/google/common/collect/ol;)Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Values;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
