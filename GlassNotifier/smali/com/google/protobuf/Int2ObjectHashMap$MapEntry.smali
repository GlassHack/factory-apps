.class final Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;
.super Ljava/lang/Object;
.source "Int2ObjectHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Int2ObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final entryIndex:I

.field final synthetic this$0:Lcom/google/protobuf/Int2ObjectHashMap;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/protobuf/Int2ObjectHashMap;
    .param p2, "entryIndex"    # I

    .prologue
    .line 680
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.MapEntry;"
    iput-object p1, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput p2, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->entryIndex:I

    .line 682
    return-void
.end method

.method private verifyExists()V
    .locals 2

    .prologue
    .line 705
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.MapEntry;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->access$600(Lcom/google/protobuf/Int2ObjectHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->entryIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The map entry has been removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 686
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.MapEntry;"
    invoke-direct {p0}, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->verifyExists()V

    .line 687
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->access$700(Lcom/google/protobuf/Int2ObjectHashMap;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->entryIndex:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 677
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.MapEntry;"
    invoke-virtual {p0}, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->getKey()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 692
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.MapEntry;"
    invoke-direct {p0}, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->verifyExists()V

    .line 693
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->access$600(Lcom/google/protobuf/Int2ObjectHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->entryIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->access$900(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 698
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.MapEntry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->verifyExists()V

    .line 699
    iget-object v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v1}, Lcom/google/protobuf/Int2ObjectHashMap;->access$600(Lcom/google/protobuf/Int2ObjectHashMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->entryIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/protobuf/Int2ObjectHashMap;->access$900(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 700
    .local v0, "prevValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-static {v1}, Lcom/google/protobuf/Int2ObjectHashMap;->access$600(Lcom/google/protobuf/Int2ObjectHashMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/Int2ObjectHashMap$MapEntry;->entryIndex:I

    invoke-static {p1}, Lcom/google/protobuf/Int2ObjectHashMap;->access$1000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 701
    return-object v0
.end method
