.class final Lcom/google/c/b/bb;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/b/n;


# direct methods
.method constructor <init>(Lcom/google/c/b/n;)V
    .locals 0

    .prologue
    .line 4497
    iput-object p1, p0, Lcom/google/c/b/bb;->a:Lcom/google/c/b/n;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 4521
    iget-object v0, p0, Lcom/google/c/b/bb;->a:Lcom/google/c/b/n;

    invoke-virtual {v0}, Lcom/google/c/b/n;->clear()V

    .line 4522
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 4516
    iget-object v0, p0, Lcom/google/c/b/bb;->a:Lcom/google/c/b/n;

    invoke-virtual {v0, p1}, Lcom/google/c/b/n;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 4511
    iget-object v0, p0, Lcom/google/c/b/bb;->a:Lcom/google/c/b/n;

    invoke-virtual {v0}, Lcom/google/c/b/n;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 4501
    new-instance v0, Lcom/google/c/b/az;

    iget-object v1, p0, Lcom/google/c/b/bb;->a:Lcom/google/c/b/n;

    invoke-direct {v0, v1}, Lcom/google/c/b/az;-><init>(Lcom/google/c/b/n;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 4506
    iget-object v0, p0, Lcom/google/c/b/bb;->a:Lcom/google/c/b/n;

    invoke-virtual {v0}, Lcom/google/c/b/n;->size()I

    move-result v0

    return v0
.end method
