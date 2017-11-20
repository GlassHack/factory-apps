.class final Lcom/google/common/collect/fj;
.super Lcom/google/common/collect/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/fi;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fi;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 954
    iput-object p1, p0, Lcom/google/common/collect/fj;->b:Lcom/google/common/collect/fi;

    iput-object p2, p0, Lcom/google/common/collect/fj;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/common/collect/fj;->b:Lcom/google/common/collect/fi;

    iget-object v0, v0, Lcom/google/common/collect/fi;->a:Lcom/google/common/collect/fh;

    iget-object v0, v0, Lcom/google/common/collect/fh;->a:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fj;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/common/collect/fj;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 954
    invoke-direct {p0}, Lcom/google/common/collect/fj;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
