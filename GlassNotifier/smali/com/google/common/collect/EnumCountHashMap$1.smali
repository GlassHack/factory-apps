.class Lcom/google/common/collect/EnumCountHashMap$1;
.super Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;
.source "EnumCountHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/EnumCountHashMap;->createKeySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractObjectCountMap",
        "<TK;>.KeySetView;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/EnumCountHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/EnumCountHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/EnumCountHashMap;

    .prologue
    .line 110
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$1;, "Lcom/google/common/collect/EnumCountHashMap$1;"
    iput-object p1, p0, Lcom/google/common/collect/EnumCountHashMap$1;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;)V

    return-void
.end method

.method private getFilteredKeyArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 112
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$1;, "Lcom/google/common/collect/EnumCountHashMap$1;"
    iget-object v4, p0, Lcom/google/common/collect/EnumCountHashMap$1;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget v4, v4, Lcom/google/common/collect/EnumCountHashMap;->size:I

    new-array v0, v4, [Ljava/lang/Object;

    .line 113
    .local v0, "filteredKeys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v4, p0, Lcom/google/common/collect/EnumCountHashMap$1;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget-object v4, v4, Lcom/google/common/collect/EnumCountHashMap;->keys:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 114
    iget-object v4, p0, Lcom/google/common/collect/EnumCountHashMap$1;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget-object v4, v4, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    aget v4, v4, v1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 115
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    iget-object v4, p0, Lcom/google/common/collect/EnumCountHashMap$1;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget-object v4, v4, Lcom/google/common/collect/EnumCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v0, v2

    move v2, v3

    .line 113
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$1;, "Lcom/google/common/collect/EnumCountHashMap$1;"
    new-instance v0, Lcom/google/common/collect/EnumCountHashMap$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumCountHashMap$1$1;-><init>(Lcom/google/common/collect/EnumCountHashMap$1;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$1;, "Lcom/google/common/collect/EnumCountHashMap$1;"
    invoke-direct {p0}, Lcom/google/common/collect/EnumCountHashMap$1;->getFilteredKeyArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$1;, "Lcom/google/common/collect/EnumCountHashMap$1;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Lcom/google/common/collect/EnumCountHashMap$1;->getFilteredKeyArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/EnumCountHashMap$1;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget v2, v2, Lcom/google/common/collect/EnumCountHashMap;->size:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
