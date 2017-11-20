.class Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;
.super Ljava/lang/Object;
.source "EntityCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityDataFilterKey"
.end annotation


# instance fields
.field final hashCode:I

.field final predicates:[Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;[Lcom/google/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p2, "predicates":[Lcom/google/common/base/Predicate;, "[Lcom/google/common/base/Predicate<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p2, p0, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;->predicates:[Lcom/google/common/base/Predicate;

    .line 417
    invoke-static {p2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;->hashCode:I

    .line 418
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 427
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;->predicates:[Lcom/google/common/base/Predicate;

    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;->predicates:[Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .line 430
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;->hashCode:I

    return v0
.end method
