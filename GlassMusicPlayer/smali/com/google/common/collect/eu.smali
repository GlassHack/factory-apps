.class final Lcom/google/common/collect/eu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/lb;


# instance fields
.field private final a:Ljava/util/Iterator;

.field private b:Z

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/eu;->a:Ljava/util/Iterator;

    .line 1177
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1199
    iget-boolean v0, p0, Lcom/google/common/collect/eu;->b:Z

    if-nez v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/google/common/collect/eu;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/eu;->c:Ljava/lang/Object;

    .line 1201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/eu;->b:Z

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/eu;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 1180
    iget-boolean v0, p0, Lcom/google/common/collect/eu;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/eu;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1184
    iget-boolean v0, p0, Lcom/google/common/collect/eu;->b:Z

    if-nez v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/google/common/collect/eu;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1190
    :goto_0
    return-object v0

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/eu;->c:Ljava/lang/Object;

    .line 1188
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/collect/eu;->b:Z

    .line 1189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/eu;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 1194
    iget-boolean v0, p0, Lcom/google/common/collect/eu;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t remove after you\'ve peeked at next"

    invoke-static {v0, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    .line 1195
    iget-object v0, p0, Lcom/google/common/collect/eu;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1196
    return-void

    .line 1194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
