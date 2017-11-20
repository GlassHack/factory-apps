.class Lcom/google/protobuf/Int2ObjectHashMap$1;
.super Ljava/lang/Object;
.source "Int2ObjectHashMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Int2ObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/protobuf/Int2ObjectHashMap;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/protobuf/Int2ObjectHashMap;

    .prologue
    .line 64
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$1;, "Lcom/google/protobuf/Int2ObjectHashMap$1;"
    iput-object p1, p0, Lcom/google/protobuf/Int2ObjectHashMap$1;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$1;, "Lcom/google/protobuf/Int2ObjectHashMap$1;"
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;

    iget-object v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$1;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap$1;)V

    return-object v0
.end method
