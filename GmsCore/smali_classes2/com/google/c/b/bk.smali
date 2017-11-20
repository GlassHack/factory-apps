.class final Lcom/google/c/b/bk;
.super Lcom/google/c/c/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/b/bi;


# direct methods
.method constructor <init>(Lcom/google/c/b/bi;Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 3738
    iput-object p1, p0, Lcom/google/c/b/bk;->a:Lcom/google/c/b/bi;

    invoke-direct {p0, p2}, Lcom/google/c/c/e;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3738
    check-cast p1, Lcom/google/c/b/am;

    invoke-interface {p1}, Lcom/google/c/b/am;->i()Lcom/google/c/b/am;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/b/bk;->a:Lcom/google/c/b/bi;

    iget-object v1, v1, Lcom/google/c/b/bi;->a:Lcom/google/c/b/am;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
