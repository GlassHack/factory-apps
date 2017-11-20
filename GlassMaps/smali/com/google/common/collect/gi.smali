.class final Lcom/google/common/collect/gi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/bs;


# instance fields
.field final synthetic a:Lcom/google/common/collect/gh;


# direct methods
.method constructor <init>(Lcom/google/common/collect/gh;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/common/collect/gi;->a:Lcom/google/common/collect/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/common/collect/gi;->a:Lcom/google/common/collect/gh;

    iget-object v0, v0, Lcom/google/common/collect/gh;->b:Lcom/google/common/collect/gf;

    iget-object v1, p0, Lcom/google/common/collect/gi;->a:Lcom/google/common/collect/gh;

    invoke-virtual {v1}, Lcom/google/common/collect/gh;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/gf;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    return-object p1
.end method
