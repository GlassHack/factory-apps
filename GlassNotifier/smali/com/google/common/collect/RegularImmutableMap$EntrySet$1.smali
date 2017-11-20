.class Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableMap$EntrySet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap$EntrySet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    .prologue
    .line 190
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->access$000(Lcom/google/common/collect/RegularImmutableMap$EntrySet;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 195
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->access$100(Lcom/google/common/collect/RegularImmutableMap$EntrySet;)[Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-static {v4}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->access$200(Lcom/google/common/collect/RegularImmutableMap$EntrySet;)I

    move-result v4

    add-int/2addr v3, v4

    aget-object v0, v2, v3

    .line 197
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->access$100(Lcom/google/common/collect/RegularImmutableMap$EntrySet;)[Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-static {v4}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->access$200(Lcom/google/common/collect/RegularImmutableMap$EntrySet;)I

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    aget-object v1, v2, v3

    .line 198
    .local v1, "value":Ljava/lang/Object;, "TV;"
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public isPartialView()Z
    .locals 1

    .prologue
    .line 208
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 203
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->access$000(Lcom/google/common/collect/RegularImmutableMap$EntrySet;)I

    move-result v0

    return v0
.end method
