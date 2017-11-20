.class final enum Lcom/google/glass/entity/EntitySet$2;
.super Lcom/google/glass/entity/EntitySet;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/entity/EntitySet;-><init>(Ljava/lang/String;IZLcom/google/glass/entity/EntitySet$1;)V

    return-void
.end method


# virtual methods
.method protected final calculateEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityCache;->getSpeakablePhoneCallTargets()Lcom/google/glass/entity/EntityList;

    move-result-object v0

    return-object v0
.end method
