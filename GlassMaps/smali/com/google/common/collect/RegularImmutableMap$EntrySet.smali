.class Lcom/google/common/collect/RegularImmutableMap$EntrySet;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableMap;Lcom/google/common/collect/lk;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Lcom/google/common/collect/RegularImmutableAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableMap;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableMap;->access$100(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/ll;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableAsList;-><init>(Lcom/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->this$0:Lcom/google/common/collect/RegularImmutableMap;

    return-object v0
.end method
