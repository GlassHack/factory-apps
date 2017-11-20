.class Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableMultiset;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableMultiset;Lcom/google/common/collect/lm;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMultiset;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableMultiset;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMultiset;->access$100(Lcom/google/common/collect/RegularImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableMultiset;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMultiset;->access$100(Lcom/google/common/collect/RegularImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method
