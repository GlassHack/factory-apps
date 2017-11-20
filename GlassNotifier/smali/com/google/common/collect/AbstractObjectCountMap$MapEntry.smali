.class Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "AbstractObjectCountMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractObjectCountMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field lastKnownIndex:I

.field final synthetic this$0:Lcom/google/common/collect/AbstractObjectCountMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractObjectCountMap;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/common/collect/AbstractObjectCountMap;
    .param p2, "index"    # I

    .prologue
    .line 283
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.MapEntry;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    .line 284
    iget-object v0, p1, Lcom/google/common/collect/AbstractObjectCountMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->key:Ljava/lang/Object;

    .line 285
    iput p2, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->lastKnownIndex:I

    .line 286
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 304
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.MapEntry;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->updateLastKnownIndex()V

    .line 305
    iget v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->lastKnownIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractObjectCountMap;->values:[I

    iget v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->lastKnownIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.MapEntry;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public setCount(I)I
    .locals 3
    .param p1, "count"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.MapEntry;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->updateLastKnownIndex()V

    .line 312
    iget v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->lastKnownIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 313
    iget-object v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget-object v2, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/AbstractObjectCountMap;->put(Ljava/lang/Object;I)I

    .line 314
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget-object v1, v1, Lcom/google/common/collect/AbstractObjectCountMap;->values:[I

    iget v2, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->lastKnownIndex:I

    aget v0, v1, v2

    .line 317
    .local v0, "old":I
    iget-object v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget-object v1, v1, Lcom/google/common/collect/AbstractObjectCountMap;->values:[I

    iget v2, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->lastKnownIndex:I

    aput p1, v1, v2

    goto :goto_0
.end method

.method updateLastKnownIndex()V
    .locals 3

    .prologue
    .line 294
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>.MapEntry;"
    iget v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->lastKnownIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->lastKnownIndex:I

    iget-object v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    .line 295
    invoke-virtual {v1}, Lcom/google/common/collect/AbstractObjectCountMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget-object v1, v1, Lcom/google/common/collect/AbstractObjectCountMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->lastKnownIndex:I

    aget-object v1, v1, v2

    .line 296
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->this$0:Lcom/google/common/collect/AbstractObjectCountMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/AbstractObjectCountMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;->lastKnownIndex:I

    .line 299
    :cond_1
    return-void
.end method
