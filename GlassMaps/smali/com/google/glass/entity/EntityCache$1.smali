.class final Lcom/google/glass/entity/EntityCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/w;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/glass/entity/EntityCache$EntityData;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache$1;->apply(Lcom/google/glass/entity/EntityCache$EntityData;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method
