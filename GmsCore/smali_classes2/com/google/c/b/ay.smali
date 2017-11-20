.class final Lcom/google/c/b/ay;
.super Lcom/google/c/b/aw;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/b/am;


# instance fields
.field volatile a:J

.field b:Lcom/google/c/b/am;

.field c:Lcom/google/c/b/am;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/c/b/am;)V
    .locals 2

    .prologue
    .line 1211
    invoke-direct {p0, p1, p2, p3}, Lcom/google/c/b/aw;-><init>(Ljava/lang/Object;ILcom/google/c/b/am;)V

    .line 1216
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/c/b/ay;->a:J

    .line 1228
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ay;->b:Lcom/google/c/b/am;

    .line 1241
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ay;->c:Lcom/google/c/b/am;

    .line 1212
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 1

    .prologue
    .line 1225
    iput-wide p1, p0, Lcom/google/c/b/ay;->a:J

    .line 1226
    return-void
.end method

.method public final c(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/google/c/b/ay;->b:Lcom/google/c/b/am;

    .line 1239
    return-void
.end method

.method public final d(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/google/c/b/ay;->c:Lcom/google/c/b/am;

    .line 1252
    return-void
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 1220
    iget-wide v0, p0, Lcom/google/c/b/ay;->a:J

    return-wide v0
.end method

.method public final i()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/c/b/ay;->b:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final j()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/google/c/b/ay;->c:Lcom/google/c/b/am;

    return-object v0
.end method
