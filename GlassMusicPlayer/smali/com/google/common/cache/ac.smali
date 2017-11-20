.class final Lcom/google/common/cache/ac;
.super Lcom/google/common/cache/ad;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/y;


# instance fields
.field volatile a:J

.field b:Lcom/google/common/cache/y;

.field c:Lcom/google/common/cache/y;

.field volatile d:J

.field e:Lcom/google/common/cache/y;

.field f:Lcom/google/common/cache/y;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/y;)V
    .locals 3

    .prologue
    const-wide v1, 0x7fffffffffffffffL

    .line 1213
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/ad;-><init>(Ljava/lang/Object;ILcom/google/common/cache/y;)V

    .line 1218
    iput-wide v1, p0, Lcom/google/common/cache/ac;->a:J

    .line 1230
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ac;->b:Lcom/google/common/cache/y;

    .line 1243
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ac;->c:Lcom/google/common/cache/y;

    .line 1258
    iput-wide v1, p0, Lcom/google/common/cache/ac;->d:J

    .line 1270
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ac;->e:Lcom/google/common/cache/y;

    .line 1283
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ac;->f:Lcom/google/common/cache/y;

    .line 1214
    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .locals 2

    .prologue
    .line 1222
    iget-wide v0, p0, Lcom/google/common/cache/ac;->a:J

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/google/common/cache/ac;->b:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getNextInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/google/common/cache/ac;->e:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/google/common/cache/ac;->c:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/google/common/cache/ac;->f:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getWriteTime()J
    .locals 2

    .prologue
    .line 1262
    iget-wide v0, p0, Lcom/google/common/cache/ac;->d:J

    return-wide v0
.end method

.method public final setAccessTime(J)V
    .locals 0

    .prologue
    .line 1227
    iput-wide p1, p0, Lcom/google/common/cache/ac;->a:J

    .line 1228
    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/google/common/cache/ac;->b:Lcom/google/common/cache/y;

    .line 1241
    return-void
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/google/common/cache/ac;->e:Lcom/google/common/cache/y;

    .line 1281
    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/google/common/cache/ac;->c:Lcom/google/common/cache/y;

    .line 1254
    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/google/common/cache/ac;->f:Lcom/google/common/cache/y;

    .line 1294
    return-void
.end method

.method public final setWriteTime(J)V
    .locals 0

    .prologue
    .line 1267
    iput-wide p1, p0, Lcom/google/common/cache/ac;->d:J

    .line 1268
    return-void
.end method
