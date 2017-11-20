.class public Lcom/google/glass/sync/UploadResult;
.super Ljava/lang/Object;
.source "UploadResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/UploadResult$1;,
        Lcom/google/glass/sync/UploadResult$Builder;
    }
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
.field public final bytesUploaded:J

.field public final prdErrorCodes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;",
            ">;"
        }
    .end annotation
.end field

.field public final shouldHaltSync:Z

.field public final timeTakenMillis:J

.field public final updatedItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;ZLcom/google/common/collect/ImmutableList$Builder;JJ)V
    .locals 1
    .param p2, "shouldHaltSync"    # Z
    .param p4, "bytesUploaded"    # J
    .param p6, "timeTakenMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<TT;>;"
    .local p1, "updatedItem":Ljava/lang/Object;, "TT;"
    .local p3, "prdErrorCodesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    .line 85
    iput-boolean p2, p0, Lcom/google/glass/sync/UploadResult;->shouldHaltSync:Z

    .line 86
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/UploadResult;->prdErrorCodes:Lcom/google/common/collect/ImmutableList;

    .line 87
    iput-wide p4, p0, Lcom/google/glass/sync/UploadResult;->bytesUploaded:J

    .line 88
    iput-wide p6, p0, Lcom/google/glass/sync/UploadResult;->timeTakenMillis:J

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ZLcom/google/common/collect/ImmutableList$Builder;JJLcom/google/glass/sync/UploadResult$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/google/common/collect/ImmutableList$Builder;
    .param p4, "x3"    # J
    .param p6, "x4"    # J
    .param p8, "x5"    # Lcom/google/glass/sync/UploadResult$1;

    .prologue
    .line 14
    .local p0, "this":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<TT;>;"
    invoke-direct/range {p0 .. p7}, Lcom/google/glass/sync/UploadResult;-><init>(Ljava/lang/Object;ZLcom/google/common/collect/ImmutableList$Builder;JJ)V

    return-void
.end method

.method public static newBuilder()Lcom/google/glass/sync/UploadResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/glass/sync/UploadResult$Builder",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcom/google/glass/sync/UploadResult$Builder;

    invoke-direct {v0}, Lcom/google/glass/sync/UploadResult$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    instance-of v3, p1, Lcom/google/glass/sync/UploadResult;

    if-nez v3, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 129
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/google/glass/sync/UploadResult;

    .line 134
    .local v0, "result":Lcom/google/glass/sync/UploadResult;
    iget-object v3, p0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/sync/UploadResult;->shouldHaltSync:Z

    iget-boolean v4, v0, Lcom/google/glass/sync/UploadResult;->shouldHaltSync:Z

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/sync/UploadResult;->prdErrorCodes:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v0, Lcom/google/glass/sync/UploadResult;->prdErrorCodes:Lcom/google/common/collect/ImmutableList;

    .line 137
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/google/glass/sync/UploadResult;->bytesUploaded:J

    iget-wide v5, v0, Lcom/google/glass/sync/UploadResult;->bytesUploaded:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, p0, Lcom/google/glass/sync/UploadResult;->timeTakenMillis:J

    iget-wide v5, v0, Lcom/google/glass/sync/UploadResult;->timeTakenMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 140
    goto :goto_0
.end method

.method public getPrdErrorCodesAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    .local p0, "this":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<TT;>;"
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/sync/UploadResult;->prdErrorCodes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPrdErrorCodes()Z
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<TT;>;"
    iget-object v0, p0, Lcom/google/glass/sync/UploadResult;->prdErrorCodes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 153
    .local p0, "this":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<TT;>;"
    const/16 v0, 0x1f

    .line 155
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x193

    .line 159
    :cond_0
    mul-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lcom/google/glass/sync/UploadResult;->prdErrorCodes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 160
    mul-int/lit8 v1, v0, 0xb

    iget-boolean v2, p0, Lcom/google/glass/sync/UploadResult;->shouldHaltSync:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 161
    mul-int/lit8 v1, v0, 0x5

    iget-wide v2, p0, Lcom/google/glass/sync/UploadResult;->bytesUploaded:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 162
    mul-int/lit8 v1, v0, 0x7

    iget-wide v2, p0, Lcom/google/glass/sync/UploadResult;->timeTakenMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 164
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 93
    .local p0, "this":Lcom/google/glass/sync/UploadResult;, "Lcom/google/glass/sync/UploadResult<TT;>;"
    const-string v0, "null"

    .line 95
    .local v0, "updatedItemString":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/google/glass/sync/UploadResult;->updatedItem:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_0
    const-string v1, "UploadResult@%s { updatedItem: %s, shouldHaltSync: %s, prdErrorCodes: (%s), bytesUploaded: %d, timeTakenMillis: %d }"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/google/glass/sync/UploadResult;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/glass/sync/UploadResult;->shouldHaltSync:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 102
    invoke-virtual {p0}, Lcom/google/glass/sync/UploadResult;->getPrdErrorCodesAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/glass/sync/UploadResult;->bytesUploaded:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/google/glass/sync/UploadResult;->timeTakenMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 99
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
