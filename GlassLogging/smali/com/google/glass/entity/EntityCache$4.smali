.class final Lcom/google/glass/entity/EntityCache$4;
.super Ljava/lang/Object;
.source "EntityCache.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z
    .locals 1
    .param p1, "input"    # Lcom/google/glass/entity/EntityCache$EntityData;

    .prologue
    .line 299
    iget-boolean v0, p1, Lcom/google/glass/entity/EntityCache$EntityData;->isPlusEntity:Z

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 296
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache$4;->apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z

    move-result v0

    return v0
.end method
