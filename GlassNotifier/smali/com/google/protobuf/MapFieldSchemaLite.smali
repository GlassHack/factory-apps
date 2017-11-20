.class Lcom/google/protobuf/MapFieldSchemaLite;
.super Ljava/lang/Object;
.source "MapFieldSchemaLite.java"

# interfaces
.implements Lcom/google/protobuf/MapFieldSchema;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;
    .locals 3
    .param p0, "destMapField"    # Ljava/lang/Object;
    .param p1, "srcMapField"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/MapFieldLite",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/MapFieldLite;

    .local v0, "mine":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    move-object v1, p1

    .line 42
    check-cast v1, Lcom/google/protobuf/MapFieldLite;

    .line 43
    .local v1, "other":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {v1}, Lcom/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 47
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/protobuf/MapFieldLite;->mergeFrom(Lcom/google/protobuf/MapFieldLite;)V

    .line 49
    :cond_1
    return-object v0
.end method


# virtual methods
.method public forMapData(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .param p1, "mapField"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/google/protobuf/MapFieldLite;

    .end local p1    # "mapField":Ljava/lang/Object;
    return-object p1
.end method

.method public forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;
    .locals 1
    .param p1, "mapDefaultEntry"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/MapEntryLite$Metadata",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 15
    check-cast p1, Lcom/google/protobuf/MapEntryLite;

    .end local p1    # "mapDefaultEntry":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/protobuf/MapEntryLite;->getMetadata()Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .param p1, "mapField"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 10
    check-cast p1, Lcom/google/protobuf/MapFieldLite;

    .end local p1    # "mapField":Ljava/lang/Object;
    return-object p1
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "destMapField"    # Ljava/lang/Object;
    .param p2, "srcMapField"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-static {p1, p2}, Lcom/google/protobuf/MapFieldSchemaLite;->mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method public newMapField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "unused"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method public toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "mapField"    # Ljava/lang/Object;

    .prologue
    .line 25
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->makeImmutable()V

    .line 26
    return-object p1
.end method
