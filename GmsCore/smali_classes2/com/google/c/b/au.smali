.class final Lcom/google/c/b/au;
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
    .line 1164
    invoke-direct {p0, p1, p2, p3}, Lcom/google/c/b/aw;-><init>(Ljava/lang/Object;ILcom/google/c/b/am;)V

    .line 1169
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/c/b/au;->a:J

    .line 1181
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/au;->b:Lcom/google/c/b/am;

    .line 1194
    invoke-static {}, Lcom/google/c/b/n;->k()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/au;->c:Lcom/google/c/b/am;

    .line 1165
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 1178
    iput-wide p1, p0, Lcom/google/c/b/au;->a:J

    .line 1179
    return-void
.end method

.method public final a(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/google/c/b/au;->b:Lcom/google/c/b/am;

    .line 1192
    return-void
.end method

.method public final b(Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/google/c/b/au;->c:Lcom/google/c/b/am;

    .line 1205
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 1173
    iget-wide v0, p0, Lcom/google/c/b/au;->a:J

    return-wide v0
.end method

.method public final f()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/c/b/au;->b:Lcom/google/c/b/am;

    return-object v0
.end method

.method public final g()Lcom/google/c/b/am;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/c/b/au;->c:Lcom/google/c/b/am;

    return-object v0
.end method
