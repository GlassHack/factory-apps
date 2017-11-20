.class public final Lcom/google/common/primitives/ImmutableIntArray$Builder;
.super Ljava/lang/Object;
.source "ImmutableIntArray.java"


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private array:[I

.field private count:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    .line 195
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->array:[I

    .line 196
    return-void
.end method

.method private ensureRoomFor(I)V
    .locals 5
    .param p1, "numberToAdd"    # I

    .prologue
    const/4 v4, 0x0

    .line 258
    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    add-int v1, v2, p1

    .line 259
    .local v1, "newCount":I
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->array:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->array:[I

    array-length v2, v2

    invoke-static {v2, v1}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->expandedCapacity(II)I

    move-result v2

    new-array v0, v2, [I

    .line 261
    .local v0, "newArray":[I
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->array:[I

    iget v3, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iput-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->array:[I

    .line 264
    .end local v0    # "newArray":[I
    :cond_0
    return-void
.end method

.method private static expandedCapacity(II)I
    .locals 3
    .param p0, "oldCapacity"    # I
    .param p1, "minCapacity"    # I

    .prologue
    .line 268
    if-gez p1, :cond_0

    .line 269
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "cannot store more than MAX_VALUE elements"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 272
    :cond_0
    shr-int/lit8 v1, p0, 0x1

    add-int/2addr v1, p0

    add-int/lit8 v0, v1, 0x1

    .line 273
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_1

    .line 274
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 276
    :cond_1
    if-gez v0, :cond_2

    .line 277
    const v0, 0x7fffffff

    .line 279
    :cond_2
    return v0
.end method


# virtual methods
.method public add(I)Lcom/google/common/primitives/ImmutableIntArray$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->ensureRoomFor(I)V

    .line 204
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->array:[I

    iget v1, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    aput p1, v0, v1

    .line 205
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    .line 206
    return-object p0
.end method

.method public addAll(Lcom/google/common/primitives/ImmutableIntArray;)Lcom/google/common/primitives/ImmutableIntArray$Builder;
    .locals 5
    .param p1, "values"    # Lcom/google/common/primitives/ImmutableIntArray;

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->ensureRoomFor(I)V

    .line 252
    invoke-static {p1}, Lcom/google/common/primitives/ImmutableIntArray;->access$000(Lcom/google/common/primitives/ImmutableIntArray;)[I

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/primitives/ImmutableIntArray;->access$100(Lcom/google/common/primitives/ImmutableIntArray;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->array:[I

    iget v3, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableIntArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    .line 254
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableIntArray$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableIntArray$Builder;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 226
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableIntArray$Builder;

    move-result-object p0

    .line 231
    .restart local p1    # "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    :cond_0
    return-object p0

    .line 228
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 229
    .local v0, "value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->add(I)Lcom/google/common/primitives/ImmutableIntArray$Builder;

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableIntArray$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableIntArray$Builder;"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->ensureRoomFor(I)V

    .line 240
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 241
    .local v0, "value":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->array:[I

    iget v3, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    goto :goto_0

    .line 243
    .end local v0    # "value":Ljava/lang/Integer;
    :cond_0
    return-object p0
.end method

.method public addAll([I)Lcom/google/common/primitives/ImmutableIntArray$Builder;
    .locals 4
    .param p1, "values"    # [I

    .prologue
    .line 214
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableIntArray$Builder;->ensureRoomFor(I)V

    .line 215
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->array:[I

    iget v2, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    .line 217
    return-object p0
.end method

.method public build()Lcom/google/common/primitives/ImmutableIntArray;
    .locals 5
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 292
    iget v0, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/primitives/ImmutableIntArray;->access$200()Lcom/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableIntArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->array:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/primitives/ImmutableIntArray$Builder;->count:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/ImmutableIntArray;-><init>([IIILcom/google/common/primitives/ImmutableIntArray$1;)V

    goto :goto_0
.end method
