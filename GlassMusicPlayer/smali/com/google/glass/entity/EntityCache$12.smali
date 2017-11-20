.class final Lcom/google/glass/entity/EntityCache$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 374
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache$12;->apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z

    move-result v0

    return v0
.end method
