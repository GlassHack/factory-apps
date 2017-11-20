.class Lcom/google/glass/entity/EntityCache$14;
.super Landroid/util/LruCache;
.source "EntityCache.java"


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
        "Landroid/util/LruCache",
        "<",
        "Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;",
        "Ljava/util/List",
        "<",
        "Lcom/google/glass/entity/EntityCache$EntityData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityCache;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/entity/EntityCache;
    .param p2, "x0"    # I

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$14;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 443
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;

    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache$14;->create(Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected create(Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$14;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->access$000(Lcom/google/glass/entity/EntityCache;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/google/glass/entity/EntityCache$EntityDataFilterKey;->predicates:[Lcom/google/common/base/Predicate;

    invoke-static {v1}, Lcom/google/common/base/Predicates;->and([Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
