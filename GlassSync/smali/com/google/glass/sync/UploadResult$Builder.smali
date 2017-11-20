.class public Lcom/google/glass/sync/UploadResult$Builder;
.super Ljava/lang/Object;
.source "UploadResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/UploadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public bytesUploaded:J

.field public prdErrorCodesBuilder:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;",
            ">;"
        }
    .end annotation
.end field

.field public shouldHaltSync:Z

.field public timeTakenMillis:J

.field public updatedItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/google/glass/sync/UploadResult$Builder;, "Lcom/google/glass/sync/UploadResult$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/UploadResult$Builder;->prdErrorCodesBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 40
    return-void
.end method


# virtual methods
.method public andHalt()Lcom/google/glass/sync/UploadResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/sync/UploadResult$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/glass/sync/UploadResult$Builder;, "Lcom/google/glass/sync/UploadResult$Builder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/sync/UploadResult$Builder;->shouldHaltSync:Z

    .line 49
    return-object p0
.end method

.method public build()Lcom/google/glass/sync/UploadResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/sync/UploadResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/glass/sync/UploadResult$Builder;, "Lcom/google/glass/sync/UploadResult$Builder<TT;>;"
    new-instance v0, Lcom/google/glass/sync/UploadResult;

    iget-object v1, p0, Lcom/google/glass/sync/UploadResult$Builder;->updatedItem:Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/google/glass/sync/UploadResult$Builder;->shouldHaltSync:Z

    iget-object v3, p0, Lcom/google/glass/sync/UploadResult$Builder;->prdErrorCodesBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    iget-wide v4, p0, Lcom/google/glass/sync/UploadResult$Builder;->bytesUploaded:J

    iget-wide v6, p0, Lcom/google/glass/sync/UploadResult$Builder;->timeTakenMillis:J

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/sync/UploadResult;-><init>(Ljava/lang/Object;ZLcom/google/common/collect/ImmutableList$Builder;JJLcom/google/glass/sync/UploadResult$1;)V

    return-object v0
.end method

.method public withBytesUploaded(J)Lcom/google/glass/sync/UploadResult$Builder;
    .locals 0
    .param p1, "bytesUploaded"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/glass/sync/UploadResult$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/google/glass/sync/UploadResult$Builder;, "Lcom/google/glass/sync/UploadResult$Builder<TT;>;"
    iput-wide p1, p0, Lcom/google/glass/sync/UploadResult$Builder;->bytesUploaded:J

    .line 67
    return-object p0
.end method

.method public withErrorCode(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)Lcom/google/glass/sync/UploadResult$Builder;
    .locals 2
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;",
            ")",
            "Lcom/google/glass/sync/UploadResult$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/glass/sync/UploadResult$Builder;, "Lcom/google/glass/sync/UploadResult$Builder<TT;>;"
    iget-object v0, p0, Lcom/google/glass/sync/UploadResult$Builder;->prdErrorCodesBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 54
    return-object p0
.end method

.method public withErrorCodes(Ljava/util/List;)Lcom/google/glass/sync/UploadResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;",
            ">;)",
            "Lcom/google/glass/sync/UploadResult$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/glass/sync/UploadResult$Builder;, "Lcom/google/glass/sync/UploadResult$Builder<TT;>;"
    .local p1, "errorCodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;>;"
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 60
    iget-object v0, p0, Lcom/google/glass/sync/UploadResult$Builder;->prdErrorCodesBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 62
    return-object p0
.end method

.method public withTimeTaken(J)Lcom/google/glass/sync/UploadResult$Builder;
    .locals 0
    .param p1, "timeTakenMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/glass/sync/UploadResult$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/glass/sync/UploadResult$Builder;, "Lcom/google/glass/sync/UploadResult$Builder<TT;>;"
    iput-wide p1, p0, Lcom/google/glass/sync/UploadResult$Builder;->timeTakenMillis:J

    .line 72
    return-object p0
.end method

.method public withUpdatedItem(Ljava/lang/Object;)Lcom/google/glass/sync/UploadResult$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/glass/sync/UploadResult$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/google/glass/sync/UploadResult$Builder;, "Lcom/google/glass/sync/UploadResult$Builder<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/glass/sync/UploadResult$Builder;->updatedItem:Ljava/lang/Object;

    .line 44
    return-object p0
.end method
