.class Lcom/google/glass/entity/EntityCache$18;
.super Ljava/lang/Object;
.source "EntityCache.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityCache;->getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/google/glass/entity/EntityCache$EntityData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityCache;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/entity/EntityCache;

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$18;->this$0:Lcom/google/glass/entity/EntityCache;

    iput-object p2, p0, Lcom/google/glass/entity/EntityCache$18;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z
    .locals 2
    .param p1, "input"    # Lcom/google/glass/entity/EntityCache$EntityData;

    .prologue
    .line 1197
    iget-object v0, p1, Lcom/google/glass/entity/EntityCache$EntityData;->mimeTypeMatcher:Lcom/google/glass/util/MimeTypeMatcher;

    .line 1200
    .local v0, "mimeTypeMatcher":Lcom/google/glass/util/MimeTypeMatcher;
    if-nez v0, :cond_0

    .line 1201
    const/4 v1, 0x0

    .line 1203
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$18;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityCache;->access$600(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1194
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache$18;->apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z

    move-result v0

    return v0
.end method
