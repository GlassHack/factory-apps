.class final Lcom/a/a/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/a/a/a/m;


# direct methods
.method constructor <init>(Lcom/a/a/a/m;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/a/a/a/n;->b:Lcom/a/a/a/m;

    iput-object p2, p0, Lcom/a/a/a/n;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/a/a/a/n;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/a/a/a/n;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 404
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not allowed due to the internal contraints"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
