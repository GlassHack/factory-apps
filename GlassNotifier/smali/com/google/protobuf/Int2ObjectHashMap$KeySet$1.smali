.class Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;
.super Ljava/lang/Object;
.source "Int2ObjectHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/Int2ObjectHashMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/protobuf/Int2ObjectHashMap$KeySet;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap$KeySet;)V
    .locals 1
    .param p1, "this$1"    # Lcom/google/protobuf/Int2ObjectHashMap$KeySet;

    .prologue
    .line 556
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;, "Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;"
    iput-object p1, p0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;->this$1:Lcom/google/protobuf/Int2ObjectHashMap$KeySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;->this$1:Lcom/google/protobuf/Int2ObjectHashMap$KeySet;

    iget-object v0, v0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->access$500(Lcom/google/protobuf/Int2ObjectHashMap;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;->iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 561
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;, "Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 566
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;, "Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 556
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;, "Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;"
    invoke-virtual {p0}, Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 571
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;, "Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$KeySet$1;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 572
    return-void
.end method
