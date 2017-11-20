.class final Lcom/google/common/collect/fv;
.super Lcom/google/common/collect/fw;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1135
    invoke-direct {p0, p1}, Lcom/google/common/collect/fw;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/google/common/collect/fv;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method
