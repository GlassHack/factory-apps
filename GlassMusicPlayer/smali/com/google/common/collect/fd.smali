.class final Lcom/google/common/collect/fd;
.super Lcom/google/common/collect/ob;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/fr;

.field final synthetic b:Lcom/google/common/collect/fc;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fc;Ljava/util/ListIterator;Lcom/google/common/collect/fr;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/google/common/collect/fd;->b:Lcom/google/common/collect/fc;

    iput-object p3, p0, Lcom/google/common/collect/fd;->a:Lcom/google/common/collect/fr;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ob;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method

.method private static a(Lcom/google/common/collect/fq;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/common/collect/fq;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 848
    check-cast p1, Lcom/google/common/collect/fq;

    invoke-static {p1}, Lcom/google/common/collect/fd;->a(Lcom/google/common/collect/fq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/google/common/collect/fd;->a:Lcom/google/common/collect/fr;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/fr;->a(Ljava/lang/Object;)V

    .line 858
    return-void
.end method
