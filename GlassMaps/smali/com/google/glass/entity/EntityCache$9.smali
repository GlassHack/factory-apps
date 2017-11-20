.class final Lcom/google/glass/entity/EntityCache$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p1, Lcom/google/glass/entity/EntityCache$EntityData;->hasPhoneNumber:Z

    return v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 350
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache$9;->apply(Lcom/google/glass/entity/EntityCache$EntityData;)Z

    move-result v0

    return v0
.end method
