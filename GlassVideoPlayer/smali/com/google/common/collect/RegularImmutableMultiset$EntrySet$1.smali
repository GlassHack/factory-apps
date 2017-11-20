.class Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;

.field final synthetic val$entryList:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;->val$entryList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;->this$1:Lcom/google/common/collect/RegularImmutableMultiset$EntrySet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;->val$entryList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMultiset;->access$200(Ljava/util/Map$Entry;)Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableMultiset$EntrySet$1;->get(I)Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method
