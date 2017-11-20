.class final Lcom/google/glass/entity/EntityCache$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$EntityData;)I
    .locals 2

    .prologue
    .line 388
    iget v0, p2, Lcom/google/glass/entity/EntityCache$EntityData;->usageCount:I

    iget v1, p1, Lcom/google/glass/entity/EntityCache$EntityData;->usageCount:I

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(II)I

    move-result v0

    .line 392
    if-nez v0, :cond_0

    .line 393
    iget v0, p2, Lcom/google/glass/entity/EntityCache$EntityData;->affinity:I

    iget v1, p1, Lcom/google/glass/entity/EntityCache$EntityData;->affinity:I

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(II)I

    move-result v0

    .line 395
    :cond_0
    return v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 383
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    check-cast p2, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityCache$13;->compare(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$EntityData;)I

    move-result v0

    return v0
.end method
