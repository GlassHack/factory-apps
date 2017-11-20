.class final Lcom/google/protobuf/Int2ObjectHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "Int2ObjectHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Int2ObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/protobuf/Int2ObjectHashMap;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap;)V
    .locals 0

    .prologue
    .line 507
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$EntrySet;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/protobuf/Int2ObjectHashMap$EntrySet;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/Int2ObjectHashMap;
    .param p2, "x1"    # Lcom/google/protobuf/Int2ObjectHashMap$1;

    .prologue
    .line 507
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$EntrySet;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Int2ObjectHashMap$EntrySet;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;)V

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
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$EntrySet;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.EntrySet;"
    new-instance v0, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;

    iget-object v1, p0, Lcom/google/protobuf/Int2ObjectHashMap$EntrySet;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Int2ObjectHashMap$MapIterator;-><init>(Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 515
    .local p0, "this":Lcom/google/protobuf/Int2ObjectHashMap$EntrySet;, "Lcom/google/protobuf/Int2ObjectHashMap<TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/protobuf/Int2ObjectHashMap$EntrySet;->this$0:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-virtual {v0}, Lcom/google/protobuf/Int2ObjectHashMap;->size()I

    move-result v0

    return v0
.end method
