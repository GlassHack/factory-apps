.class Lcom/google/common/collect/ObjectCountLinkedHashMap$2$1;
.super Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;
.source "ObjectCountLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ObjectCountLinkedHashMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ObjectCountLinkedHashMap",
        "<TK;>.",
        "LinkedItr",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/ObjectCountLinkedHashMap$2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ObjectCountLinkedHashMap$2;)V
    .locals 2
    .param p1, "this$1"    # Lcom/google/common/collect/ObjectCountLinkedHashMap$2;

    .prologue
    .line 243
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap$2$1;, "Lcom/google/common/collect/ObjectCountLinkedHashMap$2$1;"
    iput-object p1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$2$1;->this$1:Lcom/google/common/collect/ObjectCountLinkedHashMap$2;

    iget-object v0, p1, Lcom/google/common/collect/ObjectCountLinkedHashMap$2;->this$0:Lcom/google/common/collect/ObjectCountLinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ObjectCountLinkedHashMap$LinkedItr;-><init>(Lcom/google/common/collect/ObjectCountLinkedHashMap;Lcom/google/common/collect/ObjectCountLinkedHashMap$1;)V

    return-void
.end method


# virtual methods
.method getOutput(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .param p1, "entry"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap$2$1;, "Lcom/google/common/collect/ObjectCountLinkedHashMap$2$1;"
    new-instance v0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;

    iget-object v1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap$2$1;->this$1:Lcom/google/common/collect/ObjectCountLinkedHashMap$2;

    iget-object v1, v1, Lcom/google/common/collect/ObjectCountLinkedHashMap$2;->this$0:Lcom/google/common/collect/ObjectCountLinkedHashMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;I)V

    return-object v0
.end method

.method bridge synthetic getOutput(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    .local p0, "this":Lcom/google/common/collect/ObjectCountLinkedHashMap$2$1;, "Lcom/google/common/collect/ObjectCountLinkedHashMap$2$1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap$2$1;->getOutput(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
