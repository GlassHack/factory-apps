.class Lcom/google/protobuf/Int2ObjectHashMap$2;
.super Ljava/util/AbstractCollection;
.source "Int2ObjectHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/Int2ObjectHashMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/protobuf/Int2ObjectHashMap;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/protobuf/Int2ObjectHashMap;

    .prologue
    .line 218
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$2;, "Lcom/google/protobuf/Int2ObjectHashMap$2;"
    iput-object p1, p0, Lcom/google/protobuf/Int2ObjectHashMap$2;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$2;, "Lcom/google/protobuf/Int2ObjectHashMap$2;"
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap$2$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/Int2ObjectHashMap$2$1;-><init>(Lcom/google/protobuf/Int2ObjectHashMap$2;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 243
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$2;, "Lcom/google/protobuf/Int2ObjectHashMap$2;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$2;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->access$300(Lcom/google/protobuf/Int2ObjectHashMap;)I

    move-result v0

    return v0
.end method
