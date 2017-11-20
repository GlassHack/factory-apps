.class final Lcom/google/common/collect/ki;
.super Lcom/google/common/collect/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/kh;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kh;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/google/common/collect/ki;->b:Lcom/google/common/collect/kh;

    iput-object p2, p0, Lcom/google/common/collect/ki;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/google/common/collect/ki;->b:Lcom/google/common/collect/kh;

    iget-object v0, v0, Lcom/google/common/collect/kh;->a:Lcom/google/common/collect/kg;

    iget-object v0, v0, Lcom/google/common/collect/kg;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v1, p0, Lcom/google/common/collect/ki;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/google/common/collect/ki;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1236
    invoke-direct {p0}, Lcom/google/common/collect/ki;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
