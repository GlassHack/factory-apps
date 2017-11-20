.class Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;
.super Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;
.source "EnumCountHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/EnumCountHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnumMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractObjectCountMap",
        "<TK;>.MapEntry;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/EnumCountHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/EnumCountHashMap;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/EnumCountHashMap;
    .param p2, "index"    # I

    .prologue
    .line 151
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;, "Lcom/google/common/collect/EnumCountHashMap<TK;>.EnumMapEntry;"
    iput-object p1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;I)V

    .line 153
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 158
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;, "Lcom/google/common/collect/EnumCountHashMap<TK;>.EnumMapEntry;"
    iget-object v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget-object v0, v0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    iget v1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->lastKnownIndex:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget-object v0, v0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    iget v1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->lastKnownIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public setCount(I)I
    .locals 5
    .param p1, "count"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;, "Lcom/google/common/collect/EnumCountHashMap<TK;>.EnumMapEntry;"
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 164
    iget-object v1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget-object v1, v1, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    iget v3, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->lastKnownIndex:I

    aget v1, v1, v3

    if-ne v1, v4, :cond_0

    .line 165
    iget-object v3, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget-object v1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v3, v1, p1}, Lcom/google/common/collect/EnumCountHashMap;->put(Ljava/lang/Enum;I)I

    .line 170
    :goto_0
    return v2

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget-object v1, v1, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    iget v3, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->lastKnownIndex:I

    aget v0, v1, v3

    .line 169
    .local v0, "old":I
    iget-object v1, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->this$0:Lcom/google/common/collect/EnumCountHashMap;

    iget-object v1, v1, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    iget v3, p0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;->lastKnownIndex:I

    aput p1, v1, v3

    .line 170
    if-ne v0, v4, :cond_1

    move v0, v2

    .end local v0    # "old":I
    :cond_1
    move v2, v0

    goto :goto_0
.end method
