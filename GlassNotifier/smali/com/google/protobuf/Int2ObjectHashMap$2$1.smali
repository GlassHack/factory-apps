.class Lcom/google/protobuf/Int2ObjectHashMap$2$1;
.super Ljava/lang/Object;
.source "Int2ObjectHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/Int2ObjectHashMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final iter:Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<TV;>.PrimitiveIterator;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/protobuf/Int2ObjectHashMap$2;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap$2;)V
    .locals 3
    .param p1, "this$1"    # Lcom/google/protobuf/Int2ObjectHashMap$2;

    .prologue
    .line 221
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$2$1;, "Lcom/google/protobuf/Int2ObjectHashMap$2$1;"
    iput-object p1, p0, Lcom/google/protobuf/Int2ObjectHashMap$2$1;->this$1:Lcom/google/protobuf/Int2ObjectHashMap$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;

    iget-object v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$2$1;->this$1:Lcom/google/protobuf/Int2ObjectHashMap$2;

    iget-object v1, v1, Lcom/google/protobuf/Int2ObjectHashMap$2;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap$1;)V

    iput-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$2$1;->iter:Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 226
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$2$1;, "Lcom/google/protobuf/Int2ObjectHashMap$2$1;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$2$1;->iter:Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$2$1;, "Lcom/google/protobuf/Int2ObjectHashMap$2$1;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$2$1;->iter:Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->next()Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$2$1;, "Lcom/google/protobuf/Int2ObjectHashMap$2$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
