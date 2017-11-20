.class public Lcom/google/common/collect/EnumCountHashMap;
.super Lcom/google/common/collect/AbstractObjectCountMap;
.source "EnumCountHashMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;,
        Lcom/google/common/collect/EnumCountHashMap$EnumIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;>",
        "Lcom/google/common/collect/AbstractObjectCountMap",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractObjectCountMap;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/common/collect/EnumCountHashMap;->keyType:Ljava/lang/Class;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/EnumCountHashMap;->keys:[Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/google/common/collect/EnumCountHashMap;->keys:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 48
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected Enum class type, but got "

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/EnumCountHashMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    .line 51
    iget-object v0, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/EnumCountHashMap;->keys:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 52
    return-void
.end method

.method public static create(Ljava/lang/Class;)Lcom/google/common/collect/EnumCountHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;>(",
            "Ljava/lang/Class",
            "<TK;>;)",
            "Lcom/google/common/collect/EnumCountHashMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v0, Lcom/google/common/collect/EnumCountHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumCountHashMap;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private isValidKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    const/4 v1, 0x0

    .line 201
    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 205
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/google/common/collect/EnumCountHashMap;->keyType:Ljava/lang/Class;

    if-eq v0, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/EnumCountHashMap;->keyType:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private typeCheck(Ljava/lang/Enum;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 269
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/common/collect/EnumCountHashMap;->keyType:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/EnumCountHashMap;->keyType:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    .line 270
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/EnumCountHashMap;->keyType:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " != "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    const/4 v3, 0x0

    .line 192
    iget v0, p0, Lcom/google/common/collect/EnumCountHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/EnumCountHashMap;->modCount:I

    .line 193
    iget-object v0, p0, Lcom/google/common/collect/EnumCountHashMap;->keys:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    iget-object v1, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    array-length v1, v1

    const/4 v2, -0x1

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 195
    iput v3, p0, Lcom/google/common/collect/EnumCountHashMap;->size:I

    .line 197
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 210
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumCountHashMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    new-instance v0, Lcom/google/common/collect/EnumCountHashMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumCountHashMap$2;-><init>(Lcom/google/common/collect/EnumCountHashMap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    new-instance v0, Lcom/google/common/collect/EnumCountHashMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumCountHashMap$1;-><init>(Lcom/google/common/collect/EnumCountHashMap;)V

    return-object v0
.end method

.method firstIndex()I
    .locals 2

    .prologue
    .line 56
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/EnumCountHashMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    .line 61
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 56
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public get(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 215
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumCountHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    return v0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    iget v0, p0, Lcom/google/common/collect/EnumCountHashMap;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 147
    new-instance v0, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/EnumCountHashMap$EnumMapEntry;-><init>(Lcom/google/common/collect/EnumCountHashMap;I)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 275
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    const/4 v0, 0x0

    .line 276
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/EnumCountHashMap;->keys:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/google/common/collect/EnumCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    aget v3, v3, v1

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_0
    return v0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 220
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumCountHashMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, -0x1

    .line 223
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method nextIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 66
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/EnumCountHashMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    .line 71
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 66
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/Enum;I)I
    .locals 3
    .param p1    # Ljava/lang/Enum;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    const-string v2, "count"

    invoke-static {p2, v2}, Lcom/google/common/collect/CollectPreconditions;->checkPositive(ILjava/lang/String;)V

    .line 236
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumCountHashMap;->typeCheck(Ljava/lang/Enum;)V

    .line 237
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 238
    .local v0, "index":I
    iget-object v2, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    aget v1, v2, v0

    .line 239
    .local v1, "oldValue":I
    iget-object v2, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    aput p2, v2, v0

    .line 240
    iget v2, p0, Lcom/google/common/collect/EnumCountHashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/EnumCountHashMap;->modCount:I

    .line 241
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 242
    iget v2, p0, Lcom/google/common/collect/EnumCountHashMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/EnumCountHashMap;->size:I

    .line 243
    const/4 v1, 0x0

    .line 245
    .end local v1    # "oldValue":I
    :cond_0
    return v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumCountHashMap;->put(Ljava/lang/Enum;I)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 251
    invoke-direct {p0, p1}, Lcom/google/common/collect/EnumCountHashMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 262
    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    return v1

    .line 254
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 255
    .local v0, "index":I
    iget-object v3, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    aget v1, v3, v0

    .line 256
    .local v1, "oldValue":I
    if-ne v1, v4, :cond_1

    move v1, v2

    .line 257
    goto :goto_0

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/EnumCountHashMap;->values:[I

    aput v4, v2, v0

    .line 260
    iget v2, p0, Lcom/google/common/collect/EnumCountHashMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/EnumCountHashMap;->size:I

    .line 261
    iget v2, p0, Lcom/google/common/collect/EnumCountHashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/EnumCountHashMap;->modCount:I

    goto :goto_0
.end method

.method removeEntry(I)I
    .locals 1
    .param p1, "entryIndex"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcom/google/common/collect/EnumCountHashMap;, "Lcom/google/common/collect/EnumCountHashMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/collect/EnumCountHashMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/EnumCountHashMap;->remove(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
