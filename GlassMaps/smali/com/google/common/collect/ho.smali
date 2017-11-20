.class final Lcom/google/common/collect/ho;
.super Lcom/google/common/collect/hm;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hk;


# instance fields
.field volatile e:J

.field f:Lcom/google/common/collect/hk;

.field g:Lcom/google/common/collect/hk;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/hk;)V
    .locals 2

    .prologue
    .line 974
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/hm;-><init>(Ljava/lang/Object;ILcom/google/common/collect/hk;)V

    .line 979
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/ho;->e:J

    .line 991
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ho;->f:Lcom/google/common/collect/hk;

    .line 1004
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ho;->g:Lcom/google/common/collect/hk;

    .line 975
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    .prologue
    .line 983
    iget-wide v0, p0, Lcom/google/common/collect/ho;->e:J

    return-wide v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/common/collect/ho;->f:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/google/common/collect/ho;->g:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 0

    .prologue
    .line 988
    iput-wide p1, p0, Lcom/google/common/collect/ho;->e:J

    .line 989
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/google/common/collect/ho;->f:Lcom/google/common/collect/hk;

    .line 1002
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/google/common/collect/ho;->g:Lcom/google/common/collect/hk;

    .line 1015
    return-void
.end method
