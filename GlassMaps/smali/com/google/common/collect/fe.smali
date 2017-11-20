.class final Lcom/google/common/collect/fe;
.super Lcom/google/common/collect/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/fq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fq;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/google/common/collect/fe;->a:Lcom/google/common/collect/fq;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/common/collect/fe;->a:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/google/common/collect/fe;->a:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/google/common/collect/fe;->a:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->b:Ljava/lang/Object;

    .line 881
    iget-object v1, p0, Lcom/google/common/collect/fe;->a:Lcom/google/common/collect/fq;

    iput-object p1, v1, Lcom/google/common/collect/fq;->b:Ljava/lang/Object;

    .line 882
    return-object v0
.end method
