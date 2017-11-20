.class final Lcom/google/c/b/t;
.super Lcom/google/c/c/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/b/r;


# direct methods
.method constructor <init>(Lcom/google/c/b/r;Lcom/google/c/b/am;)V
    .locals 0

    .prologue
    .line 3875
    iput-object p1, p0, Lcom/google/c/b/t;->a:Lcom/google/c/b/r;

    invoke-direct {p0, p2}, Lcom/google/c/c/e;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3875
    check-cast p1, Lcom/google/c/b/am;

    invoke-interface {p1}, Lcom/google/c/b/am;->f()Lcom/google/c/b/am;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/b/t;->a:Lcom/google/c/b/r;

    iget-object v1, v1, Lcom/google/c/b/r;->a:Lcom/google/c/b/am;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
