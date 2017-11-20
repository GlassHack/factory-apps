.class Lcom/google/common/collect/ObjectCountHashMap$HashEntrySetView;
.super Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;
.source "ObjectCountHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ObjectCountHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HashEntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractObjectCountMap",
        "<TK;>.EntrySetView;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ObjectCountHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ObjectCountHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/ObjectCountHashMap;

    .prologue
    .line 396
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap$HashEntrySetView;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>.HashEntrySetView;"
    iput-object p1, p0, Lcom/google/common/collect/ObjectCountHashMap$HashEntrySetView;->this$0:Lcom/google/common/collect/ObjectCountHashMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Lcom/google/common/collect/ObjectCountHashMap$HashEntrySetView;, "Lcom/google/common/collect/ObjectCountHashMap<TK;>.HashEntrySetView;"
    new-instance v0, Lcom/google/common/collect/ObjectCountHashMap$HashEntrySetView$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ObjectCountHashMap$HashEntrySetView$1;-><init>(Lcom/google/common/collect/ObjectCountHashMap$HashEntrySetView;)V

    return-object v0
.end method
