.class final Lcom/google/c/b/av;
.super Lcom/google/c/b/aw;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/b/am;


# instance fields
.field volatile a:J

.field b:Lcom/google/c/b/am;

.field c:Lcom/google/c/b/am;

.field volatile d:J

.field e:Lcom/google/c/b/am;

.field f:Lcom/google/c/b/am;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/c/b/am;)V
    .locals 4

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 1258
    invoke-direct {p0, p1, p2, p3}, Lcom/google/c/b/aw;-><init>(Ljava/lang/Object;ILcom/google/c/b/am;)V

    .line 1263
    iput-wide v2, p0, Lcom/google/c/b/av;->a:J

    .line 1275
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/av;->b:Lcom/google/c/b/am;

    .line 1288
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/av;->c:Lcom/google/c/b/am;

    .line 1303
    iput-wide v2, p0, Lcom/google/c/b/av;->d:J

    .line 1315
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/av;->e:Lcom/google/c/b/am;

    .line 1328
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/av;->f:Lcom/google/c/b/am;

    .line 1259
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 1272
    iput-wide p1, p0, Lcom/google/c/b/av;->a:J

    .line 1273
    return-void
.end method

.method public final a(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/google/c/b/av;->b:Lcom/google/c/b/am;

    .line 1286
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 1312
    iput-wide p1, p0, Lcom/google/c/b/av;->d:J

    .line 1313
    return-void
.end method

.method public final b(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/google/c/b/av;->c:Lcom/google/c/b/am;

    .line 1299
    return-void
.end method

.method public final c(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/google/c/b/av;->e:Lcom/google/c/b/am;

    .line 1326
    return-void
.end method

.method public final d(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/google/c/b/av;->f:Lcom/google/c/b/am;

    .line 1339
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 1267
    iget-wide v0, p0, Lcom/google/c/b/av;->a:J

    return-wide v0
.end method

.method public final f()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/c/b/av;->b:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final g()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/google/c/b/av;->c:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 1307
    iget-wide v0, p0, Lcom/google/c/b/av;->d:J

    return-wide v0
.end method

.method public final i()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/google/c/b/av;->e:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final j()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/google/c/b/av;->f:Lcom/google/c/b/am;

    return-object v0
.end method
