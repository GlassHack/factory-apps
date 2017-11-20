.class final Lcom/google/common/cache/af;
.super Lcom/google/common/cache/ad;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/y;


# instance fields
.field volatile a:J

.field b:Lcom/google/common/cache/y;

.field c:Lcom/google/common/cache/y;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/y;)V
    .locals 2

    .prologue
    .line 1166
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/ad;-><init>(Ljava/lang/Object;ILcom/google/common/cache/y;)V

    .line 1171
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/af;->a:J

    .line 1183
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/af;->b:Lcom/google/common/cache/y;

    .line 1196
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/af;->c:Lcom/google/common/cache/y;

    .line 1167
    return-void
.end method


# virtual methods
.method public final getNextInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/google/common/cache/af;->b:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/google/common/cache/af;->c:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getWriteTime()J
    .locals 2

    .prologue
    .line 1175
    iget-wide v0, p0, Lcom/google/common/cache/af;->a:J

    return-wide v0
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/google/common/cache/af;->b:Lcom/google/common/cache/y;

    .line 1194
    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/google/common/cache/af;->c:Lcom/google/common/cache/y;

    .line 1207
    return-void
.end method

.method public final setWriteTime(J)V
    .locals 0

    .prologue
    .line 1180
    iput-wide p1, p0, Lcom/google/common/cache/af;->a:J

    .line 1181
    return-void
.end method
