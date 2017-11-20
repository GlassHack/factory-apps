.class Lcom/google/glass/entity/EntityCache$17;
.super Ljava/lang/Object;
.source "EntityCache.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityCache;->createSourcePredicate(Ljava/lang/String;)Lcom/google/common/base/Predicate;
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
.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/entity/EntityCache;

    .prologue
    .line 781
    iput-object p2, p0, Lcom/google/glass/entity/EntityCache$17;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z
    .locals 4
    .param p1, "entityData"    # Lcom/google/glass/entity/EntityCache$EntityData;

    .prologue
    const/4 v1, 0x1

    .line 784
    iget-object v2, p0, Lcom/google/glass/entity/EntityCache$17;->val$source:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/nano/Entity;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 794
    :cond_0
    :goto_0
    return v1

    .line 787
    :cond_1
    iget-object v2, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    iget-object v2, v2, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 788
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    iget-object v2, v2, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 789
    iget-object v2, p0, Lcom/google/glass/entity/EntityCache$17;->val$source:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/nano/Entity;

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/nano/Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/nano/MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 794
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 781
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache$17;->apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z

    move-result v0

    return v0
.end method
