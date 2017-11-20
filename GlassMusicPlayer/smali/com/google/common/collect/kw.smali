.class final Lcom/google/common/collect/kw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Lcom/google/common/collect/kp;

.field private final b:Ljava/util/Iterator;

.field private c:Lcom/google/common/collect/kq;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/google/common/collect/kp;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    iput-object p1, p0, Lcom/google/common/collect/kw;->a:Lcom/google/common/collect/kp;

    .line 1028
    iput-object p2, p0, Lcom/google/common/collect/kw;->b:Ljava/util/Iterator;

    .line 1029
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 1032
    iget v0, p0, Lcom/google/common/collect/kw;->d:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/kw;->b:Ljava/util/Iterator;

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
    .locals 1

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/google/common/collect/kw;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1039
    :cond_0
    iget v0, p0, Lcom/google/common/collect/kw;->d:I

    if-nez v0, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/google/common/collect/kw;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    iput-object v0, p0, Lcom/google/common/collect/kw;->c:Lcom/google/common/collect/kq;

    .line 1041
    iget-object v0, p0, Lcom/google/common/collect/kw;->c:Lcom/google/common/collect/kq;

    invoke-interface {v0}, Lcom/google/common/collect/kq;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/kw;->d:I

    iput v0, p0, Lcom/google/common/collect/kw;->e:I

    .line 1043
    :cond_1
    iget v0, p0, Lcom/google/common/collect/kw;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/kw;->d:I

    .line 1044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/kw;->f:Z

    .line 1045
    iget-object v0, p0, Lcom/google/common/collect/kw;->c:Lcom/google/common/collect/kq;

    invoke-interface {v0}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 1049
    iget-boolean v0, p0, Lcom/google/common/collect/kw;->f:Z

    invoke-static {v0}, Lcom/google/common/collect/ej;->a(Z)V

    .line 1050
    iget v0, p0, Lcom/google/common/collect/kw;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/google/common/collect/kw;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1055
    :goto_0
    iget v0, p0, Lcom/google/common/collect/kw;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/kw;->e:I

    .line 1056
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/kw;->f:Z

    .line 1057
    return-void

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/kw;->a:Lcom/google/common/collect/kp;

    iget-object v1, p0, Lcom/google/common/collect/kw;->c:Lcom/google/common/collect/kq;

    invoke-interface {v1}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/kp;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
