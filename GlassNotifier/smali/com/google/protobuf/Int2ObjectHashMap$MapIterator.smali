.class final Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;
.super Ljava/lang/Object;
.source "Int2ObjectHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Int2ObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final iter:Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<TV;>.PrimitiveIterator;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/protobuf/Int2ObjectHashMap;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap;)V
    .locals 3

    .prologue
    .line 651
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.MapIterator;"
    iput-object p1, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;

    iget-object v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap$1;)V

    iput-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;->iter:Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/Int2ObjectHashMap;
    .param p2, "x1"    # Lcom/google/protobuf/Int2ObjectHashMap$1;

    .prologue
    .line 651
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.MapIterator;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 656
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.MapIterator;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;->iter:Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 651
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.MapIterator;"
    invoke-virtual {p0}, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 661
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.MapIterator;"
    invoke-virtual {p0}, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;->iter:Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->next()Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 667
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;

    iget-object v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    iget-object v2, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;->iter:Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;

    invoke-static {v2}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->access$1100(Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;I)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 672
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.MapIterator;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;->iter:Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveIterator;->remove()V

    .line 673
    return-void
.end method
