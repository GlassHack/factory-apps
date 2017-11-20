.class Lcom/google/common/collect/AbstractMapBasedMultimap$1;
.super Lcom/google/common/collect/AbstractMapBasedMultimap$Itr;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;->valueIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapBasedMultimap",
        "<TK;TV;>.Itr<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/AbstractMapBasedMultimap;

    .prologue
    .line 1195
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$1;, "Lcom/google/common/collect/AbstractMapBasedMultimap$1;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$Itr;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;)V

    return-void
.end method


# virtual methods
.method output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1198
    .local p0, "this":Lcom/google/common/collect/AbstractMapBasedMultimap$1;, "Lcom/google/common/collect/AbstractMapBasedMultimap$1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    return-object p2
.end method
