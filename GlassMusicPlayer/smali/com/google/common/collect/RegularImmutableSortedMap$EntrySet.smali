.class Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableSortedMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMap;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMap;Lcom/google/common/collect/ln;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableSortedMap;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet$1;-><init>(Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;)V

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableSortedMap;

    return-object v0
.end method
