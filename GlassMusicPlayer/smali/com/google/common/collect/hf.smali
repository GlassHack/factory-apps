.class final Lcom/google/common/collect/hf;
.super Lcom/google/common/collect/gy;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/collect/hk;

.field b:Lcom/google/common/collect/hk;

.field final synthetic c:Lcom/google/common/collect/he;


# direct methods
.method constructor <init>(Lcom/google/common/collect/he;)V
    .locals 0

    .prologue
    .line 3141
    iput-object p1, p0, Lcom/google/common/collect/hf;->c:Lcom/google/common/collect/he;

    invoke-direct {p0}, Lcom/google/common/collect/gy;-><init>()V

    .line 3151
    iput-object p0, p0, Lcom/google/common/collect/hf;->a:Lcom/google/common/collect/hk;

    .line 3163
    iput-object p0, p0, Lcom/google/common/collect/hf;->b:Lcom/google/common/collect/hk;

    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    .prologue
    .line 3145
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/google/common/collect/hf;->a:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/google/common/collect/hf;->b:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 0

    .prologue
    .line 3149
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 3160
    iput-object p1, p0, Lcom/google/common/collect/hf;->a:Lcom/google/common/collect/hk;

    .line 3161
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 3172
    iput-object p1, p0, Lcom/google/common/collect/hf;->b:Lcom/google/common/collect/hk;

    .line 3173
    return-void
.end method
