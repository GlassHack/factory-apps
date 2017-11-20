.class final Lcom/google/glass/entity/EntityCache$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 326
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache$6;->apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z

    move-result v0

    return v0
.end method
