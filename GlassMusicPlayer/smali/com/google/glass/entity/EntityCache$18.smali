.class Lcom/google/glass/entity/EntityCache$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aj;


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityCache;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0

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

    .prologue
    .line 1197
    iget-object v0, p1, Lcom/google/glass/entity/EntityCache$EntityData;->mimeTypeMatcher:Lcom/google/glass/util/MimeTypeMatcher;

    .line 1200
    if-nez v0, :cond_0

    .line 1201
    const/4 v0, 0x0

    .line 1203
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$18;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityCache;->access$600(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

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
