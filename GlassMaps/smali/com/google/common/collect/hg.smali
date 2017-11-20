.class final Lcom/google/common/collect/hg;
.super Lcom/google/common/collect/ai;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/he;


# direct methods
.method constructor <init>(Lcom/google/common/collect/he;Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 3252
    iput-object p1, p0, Lcom/google/common/collect/hg;->a:Lcom/google/common/collect/he;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ai;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/google/common/collect/hk;)Lcom/google/common/collect/hk;
    .locals 2

    .prologue
    .line 3256
    invoke-interface {p1}, Lcom/google/common/collect/hk;->getNextExpirable()Lcom/google/common/collect/hk;

    move-result-object v0

    .line 3257
    iget-object v1, p0, Lcom/google/common/collect/hg;->a:Lcom/google/common/collect/he;

    iget-object v1, v1, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3252
    check-cast p1, Lcom/google/common/collect/hk;

    invoke-direct {p0, p1}, Lcom/google/common/collect/hg;->a(Lcom/google/common/collect/hk;)Lcom/google/common/collect/hk;

    move-result-object v0

    return-object v0
.end method
