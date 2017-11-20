.class final Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;
.super Ljava/lang/Object;
.source "SchemaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/SchemaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HashCodeAccumulator"
.end annotation


# instance fields
.field hashCode:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 435
    return-void
.end method


# virtual methods
.method hashBoolean(Z)V
    .locals 2
    .param p1, "data"    # Z

    .prologue
    .line 458
    iget v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-static {p1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 459
    return-void
.end method

.method hashByteString(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "data"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 477
    iget v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 478
    return-void
.end method

.method hashDouble(D)V
    .locals 5
    .param p1, "data"    # D

    .prologue
    .line 438
    iget v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 439
    return-void
.end method

.method hashExtensions(Lcom/google/protobuf/FieldSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "data":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    iget v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 486
    return-void
.end method

.method hashFloat(F)V
    .locals 2
    .param p1, "data"    # F

    .prologue
    .line 442
    iget v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 443
    return-void
.end method

.method hashInt(I)V
    .locals 1
    .param p1, "data"    # I

    .prologue
    .line 450
    iget v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 451
    return-void
.end method

.method hashList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<*>;"
    iget v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-interface {p1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 463
    return-void
.end method

.method hashLong(J)V
    .locals 3
    .param p1, "data"    # J

    .prologue
    .line 446
    iget v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-static {p1, p2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 447
    return-void
.end method

.method hashMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-interface {p1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 490
    return-void
.end method

.method hashMessage(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 467
    if-eqz p1, :cond_0

    .line 469
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 473
    .local v0, "protoHash":I
    :goto_0
    iget v1, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    mul-int/lit8 v1, v1, 0x35

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 474
    return-void

    .line 471
    .end local v0    # "protoHash":I
    :cond_0
    const/16 v0, 0x25

    .restart local v0    # "protoHash":I
    goto :goto_0
.end method

.method hashString(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 454
    iget v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 455
    return-void
.end method

.method hashUnknown(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 481
    iget v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    .line 482
    return-void
.end method
