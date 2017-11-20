.class final Lcom/google/c/c/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Lcom/google/c/c/co;

.field private final b:Ljava/util/Iterator;

.field private c:Lcom/google/c/c/cp;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/google/c/c/co;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-object p1, p0, Lcom/google/c/c/cw;->a:Lcom/google/c/c/co;

    .line 895
    iput-object p2, p0, Lcom/google/c/c/cw;->b:Ljava/util/Iterator;

    .line 896
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 900
    iget v0, p0, Lcom/google/c/c/cw;->d:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/c/cw;->b:Ljava/util/Iterator;

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
    .line 905
    invoke-virtual {p0}, Lcom/google/c/c/cw;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 908
    :cond_0
    iget v0, p0, Lcom/google/c/c/cw;->d:I

    if-nez v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/google/c/c/cw;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/cp;

    iput-object v0, p0, Lcom/google/c/c/cw;->c:Lcom/google/c/c/cp;

    .line 910
    iget-object v0, p0, Lcom/google/c/c/cw;->c:Lcom/google/c/c/cp;

    invoke-interface {v0}, Lcom/google/c/c/cp;->b()I

    move-result v0

    iput v0, p0, Lcom/google/c/c/cw;->d:I

    iput v0, p0, Lcom/google/c/c/cw;->e:I

    .line 912
    :cond_1
    iget v0, p0, Lcom/google/c/c/cw;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/c/c/cw;->d:I

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/c/cw;->f:Z

    .line 914
    iget-object v0, p0, Lcom/google/c/c/cw;->c:Lcom/google/c/c/cp;

    invoke-interface {v0}, Lcom/google/c/c/cp;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/google/c/c/cw;->f:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/c/a/ah;->b(ZLjava/lang/Object;)V

    .line 921
    iget v0, p0, Lcom/google/c/c/cw;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 922
    iget-object v0, p0, Lcom/google/c/c/cw;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 926
    :goto_0
    iget v0, p0, Lcom/google/c/c/cw;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/c/c/cw;->e:I

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/c/c/cw;->f:Z

    .line 928
    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/cw;->a:Lcom/google/c/c/co;

    iget-object v1, p0, Lcom/google/c/c/cw;->c:Lcom/google/c/c/cp;

    invoke-interface {v1}, Lcom/google/c/c/cp;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/c/c/co;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
