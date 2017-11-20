.class final Lcom/google/common/collect/or;
.super Lcom/google/common/collect/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/oq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/oq;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/common/collect/or;->b:Lcom/google/common/collect/oq;

    iput-object p2, p0, Lcom/google/common/collect/or;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/common/collect/or;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/collect/or;->b:Lcom/google/common/collect/oq;

    iget-object v0, v0, Lcom/google/common/collect/oq;->a:Lcom/google/common/collect/op;

    iget-object v0, v0, Lcom/google/common/collect/op;->a:Lcom/google/common/collect/on;

    iget-object v1, p0, Lcom/google/common/collect/or;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/on;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/or;->b:Lcom/google/common/collect/oq;

    iget-object v0, v0, Lcom/google/common/collect/oq;->a:Lcom/google/common/collect/op;

    iget-object v0, v0, Lcom/google/common/collect/op;->a:Lcom/google/common/collect/on;

    iget-object v1, p0, Lcom/google/common/collect/or;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/on;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
