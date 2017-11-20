.class final Lcom/google/glass/entity/EntityCache$13;
.super Ljava/lang/Object;
.source "EntityCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/glass/entity/EntityCache$EntityData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$EntityData;)I
    .locals 3
    .param p1, "entity1"    # Lcom/google/glass/entity/EntityCache$EntityData;
    .param p2, "entity2"    # Lcom/google/glass/entity/EntityCache$EntityData;

    .prologue
    .line 388
    iget v1, p2, Lcom/google/glass/entity/EntityCache$EntityData;->usageCount:I

    iget v2, p1, Lcom/google/glass/entity/EntityCache$EntityData;->usageCount:I

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    .line 392
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 393
    iget v1, p2, Lcom/google/glass/entity/EntityCache$EntityData;->affinity:I

    iget v2, p1, Lcom/google/glass/entity/EntityCache$EntityData;->affinity:I

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    .line 395
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 383
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    check-cast p2, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityCache$13;->compare(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$EntityData;)I

    move-result v0

    return v0
.end method
