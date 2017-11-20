.class final Lcom/google/c/c/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/c/da;


# instance fields
.field private final a:Ljava/util/Iterator;

.field private b:Z

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/c/c/cc;->a:Ljava/util/Iterator;

    .line 1159
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1185
    iget-boolean v0, p0, Lcom/google/c/c/cc;->b:Z

    if-nez v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/google/c/c/cc;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/cc;->c:Ljava/lang/Object;

    .line 1187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/c/cc;->b:Z

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/cc;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 1163
    iget-boolean v0, p0, Lcom/google/c/c/cc;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/c/c/cc;->a:Ljava/util/Iterator;

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
    .line 1168
    iget-boolean v0, p0, Lcom/google/c/c/cc;->b:Z

    if-nez v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/google/c/c/cc;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1174
    :goto_0
    return-object v0

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/cc;->c:Ljava/lang/Object;

    .line 1172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/c/c/cc;->b:Z

    .line 1173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/c/c/cc;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 1179
    iget-boolean v0, p0, Lcom/google/c/c/cc;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t remove after you\'ve peeked at next"

    invoke-static {v0, v1}, Lcom/google/c/a/ah;->b(ZLjava/lang/Object;)V

    .line 1180
    iget-object v0, p0, Lcom/google/c/c/cc;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1181
    return-void

    .line 1179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
