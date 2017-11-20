.class final Lcom/google/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
        "<TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/FieldSet;


# instance fields
.field private final fields:Lcom/google/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SmallSortedMap",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hasLazyField:Z

.field private isImmutable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/google/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/google/protobuf/FieldSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 54
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 55
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "dummy"    # Z

    .prologue
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 62
    invoke-static {v0}, Lcom/google/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 63
    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->makeImmutable()V

    .line 64
    return-void
.end method

.method private cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TFieldDescriptorType;Ljava/lang/Object;>;"
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 298
    .local v0, "key":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 299
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/protobuf/LazyField;

    if-eqz v2, :cond_0

    .line 300
    check-cast v1, Lcom/google/protobuf/LazyField;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :goto_0
    return-void

    .line 302
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v3, 0x0

    .line 620
    instance-of v2, p1, Lcom/google/protobuf/MutableMessageLite;

    if-eqz v2, :cond_0

    .line 621
    check-cast p1, Lcom/google/protobuf/MutableMessageLite;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/google/protobuf/MutableMessageLite;->clone()Lcom/google/protobuf/MutableMessageLite;

    move-result-object v1

    .line 630
    :goto_0
    return-object v1

    .line 624
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, [B

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 625
    check-cast v0, [B

    .line 626
    .local v0, "bytes":[B
    array-length v2, v0

    new-array v1, v2, [B

    .line 627
    .local v1, "copy":[B
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .end local v0    # "bytes":[B
    .end local v1    # "copy":[B
    :cond_1
    move-object v1, p1

    .line 630
    goto :goto_0
.end method

.method static computeElementSize(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 2
    .param p0, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p1, "number"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 960
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    .line 961
    .local v0, "tagSize":I
    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p0, v1, :cond_0

    move-object v1, p2

    .line 965
    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-static {v1}, Lcom/google/protobuf/Internal;->isProto1Group(Lcom/google/protobuf/MessageLite;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 967
    mul-int/lit8 v0, v0, 0x2

    .line 972
    :cond_0
    invoke-static {p0, p2}, Lcom/google/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method static computeElementSizeNoTag(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .locals 2
    .param p0, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 987
    sget-object v0, Lcom/google/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1033
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :pswitch_0
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v0

    .line 1029
    :goto_0
    return v0

    .line 991
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v0

    goto :goto_0

    .line 992
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    goto :goto_0

    .line 993
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    goto :goto_0

    .line 994
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    goto :goto_0

    .line 995
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v0

    goto :goto_0

    .line 996
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v0

    goto :goto_0

    .line 997
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v0

    goto :goto_0

    .line 998
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p1, Lcom/google/protobuf/MessageLite;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v0

    goto :goto_0

    .line 1000
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_9
    instance-of v0, p1, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 1001
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v0

    goto :goto_0

    .line 1003
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p1, [B

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v0

    goto :goto_0

    .line 1006
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_a
    instance-of v0, p1, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 1007
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v0

    goto :goto_0

    .line 1009
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1011
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    goto/16 :goto_0

    .line 1012
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v0

    goto/16 :goto_0

    .line 1013
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v0

    goto/16 :goto_0

    .line 1014
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_e
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v0

    goto/16 :goto_0

    .line 1015
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v0

    goto/16 :goto_0

    .line 1018
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_10
    instance-of v0, p1, Lcom/google/protobuf/LazyField;

    if-eqz v0, :cond_2

    .line 1019
    check-cast p1, Lcom/google/protobuf/LazyField;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/google/protobuf/LazyFieldLite;)I

    move-result v0

    goto/16 :goto_0

    .line 1021
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p1, Lcom/google/protobuf/MessageLite;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v0

    goto/16 :goto_0

    .line 1025
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_11
    instance-of v0, p1, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_3

    .line 1026
    check-cast p1, Lcom/google/protobuf/Internal$EnumLite;

    .line 1027
    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    .line 1026
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    goto/16 :goto_0

    .line 1029
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    goto/16 :goto_0

    .line 987
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method public static computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1042
    .local p0, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v4

    .line 1043
    .local v4, "type":Lcom/google/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    .line 1044
    .local v2, "number":I
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1045
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1046
    const/4 v0, 0x0

    .line 1047
    .local v0, "dataSize":I
    check-cast p1, Ljava/util/List;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1048
    .local v1, "element":Ljava/lang/Object;
    invoke-static {v4, v1}, Lcom/google/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    .line 1049
    goto :goto_0

    .line 1051
    .end local v1    # "element":Ljava/lang/Object;
    :cond_0
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    add-int/2addr v5, v0

    .line 1052
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v6

    add-int v3, v5, v6

    .line 1061
    .end local v0    # "dataSize":I
    :cond_1
    :goto_1
    return v3

    .line 1054
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    .line 1055
    .local v3, "size":I
    check-cast p1, Ljava/util/List;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1056
    .restart local v1    # "element":Ljava/lang/Object;
    invoke-static {v4, v2, v1}, Lcom/google/protobuf/FieldSet;->computeElementSize(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v6

    add-int/2addr v3, v6

    .line 1057
    goto :goto_2

    .line 1061
    .end local v1    # "element":Ljava/lang/Object;
    .end local v3    # "size":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {v4, v2, p1}, Lcom/google/protobuf/FieldSet;->computeElementSize(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v3

    goto :goto_1
.end method

.method private convertToImmutable(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v6

    sget-object v7, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v6, v7, :cond_3

    .line 150
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v5, p2

    .line 151
    check-cast v5, Ljava/util/List;

    .line 152
    .local v5, "mutableMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "immutableMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 154
    .local v4, "mutableMessage":Ljava/lang/Object;
    check-cast v4, Lcom/google/protobuf/MutableMessageLite;

    .line 155
    .end local v4    # "mutableMessage":Ljava/lang/Object;
    invoke-interface {v4}, Lcom/google/protobuf/MutableMessageLite;->immutableCopy()Lcom/google/protobuf/MessageLite;

    move-result-object v7

    .line 154
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v1    # "immutableMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "mutableMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    instance-of v6, p2, Lcom/google/protobuf/LazyField;

    if-eqz v6, :cond_2

    .line 160
    check-cast p2, Lcom/google/protobuf/LazyField;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MutableMessageLite;

    .line 161
    invoke-interface {v6}, Lcom/google/protobuf/MutableMessageLite;->immutableCopy()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    .line 178
    :cond_1
    :goto_1
    return-object v1

    .line 163
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p2, Lcom/google/protobuf/MutableMessageLite;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p2}, Lcom/google/protobuf/MutableMessageLite;->immutableCopy()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    goto :goto_1

    .line 165
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v6

    sget-object v7, Lcom/google/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v6, v7, :cond_6

    .line 167
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v3, p2

    .line 168
    check-cast v3, Ljava/util/List;

    .line 169
    .local v3, "mutableFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "immutableFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 171
    .local v2, "mutableField":Ljava/lang/Object;
    check-cast v2, [B

    .end local v2    # "mutableField":Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 173
    goto :goto_1

    .line 175
    .end local v0    # "immutableFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "mutableFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_1

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    move-object v1, p2

    .line 178
    goto :goto_1
.end method

.method private convertToMutable(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v6

    sget-object v7, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v6, v7, :cond_3

    .line 186
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 187
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "mutableMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v3, p2

    .line 188
    check-cast v3, Ljava/util/List;

    .line 189
    .local v3, "immutableMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 190
    .local v2, "immutableMessage":Ljava/lang/Object;
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .end local v2    # "immutableMessage":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/google/protobuf/MessageLite;->mutableCopy()Lcom/google/protobuf/MutableMessageLite;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v3    # "immutableMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "mutableMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    instance-of v6, p2, Lcom/google/protobuf/LazyField;

    if-eqz v6, :cond_2

    .line 195
    check-cast p2, Lcom/google/protobuf/LazyField;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/protobuf/MessageLite;->mutableCopy()Lcom/google/protobuf/MutableMessageLite;

    move-result-object v5

    .line 212
    :cond_1
    :goto_1
    return-object v5

    .line 197
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p2, Lcom/google/protobuf/MessageLite;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p2}, Lcom/google/protobuf/MessageLite;->mutableCopy()Lcom/google/protobuf/MutableMessageLite;

    move-result-object v5

    goto :goto_1

    .line 199
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v6

    sget-object v7, Lcom/google/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v6, v7, :cond_6

    .line 201
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v1, p2

    .line 202
    check-cast v1, Ljava/util/List;

    .line 203
    .local v1, "immutableFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v4, "mutableFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, "immutableField":Ljava/lang/Object;
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "immutableField":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v5, v4

    .line 207
    goto :goto_1

    .line 209
    .end local v1    # "immutableFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "mutableFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    goto :goto_1

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    move-object v5, p2

    .line 212
    goto :goto_1
.end method

.method public static emptySet()Lcom/google/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<TT;>;>()",
            "Lcom/google/protobuf/FieldSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/google/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/google/protobuf/FieldSet;

    return-object v0
.end method

.method private getMessageSetSerializedSize(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 931
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 932
    .local v0, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 933
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_1

    .line 934
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 935
    instance-of v2, v1, Lcom/google/protobuf/LazyField;

    if-eqz v2, :cond_0

    .line 937
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    check-cast v1, Lcom/google/protobuf/LazyField;

    .line 936
    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeLazyFieldMessageSetExtensionSize(ILcom/google/protobuf/LazyFieldLite;)I

    move-result v2

    .line 943
    :goto_0
    return v2

    .line 940
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 939
    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    goto :goto_0

    .line 943
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    invoke-static {v0, v1}, Lcom/google/protobuf/FieldSet;->computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method

.method static getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I
    .locals 1
    .param p0, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p1, "isPacked"    # Z

    .prologue
    .line 597
    if-eqz p1, :cond_0

    .line 598
    const/4 v0, 0x2

    .line 600
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    goto :goto_0
.end method

.method private isInitialized(Ljava/util/Map$Entry;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 563
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 564
    .local v0, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v6, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v3, v6, :cond_4

    .line 565
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 567
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 568
    .local v1, "element":Lcom/google/protobuf/MessageLite;
    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    .line 586
    .end local v1    # "element":Lcom/google/protobuf/MessageLite;
    :goto_0
    return v3

    .line 573
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 574
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lcom/google/protobuf/MessageLite;

    if-eqz v3, :cond_2

    .line 575
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/google/protobuf/MessageLite;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    .line 576
    goto :goto_0

    .line 578
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Lcom/google/protobuf/LazyField;

    if-eqz v3, :cond_3

    move v3, v5

    .line 579
    goto :goto_0

    .line 581
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wrong object type used with protocol message reflection."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2    # "value":Ljava/lang/Object;
    :cond_4
    move v3, v5

    .line 586
    goto :goto_0
.end method

.method private mergeFromField(Ljava/util/Map$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 638
    .local v0, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 639
    .local v2, "otherValue":Ljava/lang/Object;
    instance-of v4, v2, Lcom/google/protobuf/LazyField;

    if-eqz v4, :cond_0

    .line 640
    check-cast v2, Lcom/google/protobuf/LazyField;

    .end local v2    # "otherValue":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    .line 643
    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 644
    invoke-virtual {p0, v0}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v3

    .line 645
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 646
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 648
    :cond_1
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element":Ljava/lang/Object;
    move-object v4, v3

    .line 649
    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 651
    .end local v1    # "element":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4, v0, v3}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    :goto_1
    return-void

    .line 652
    :cond_3
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v4, v5, :cond_6

    .line 653
    invoke-virtual {p0, v0}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v3

    .line 654
    .restart local v3    # "value":Ljava/lang/Object;
    if-nez v3, :cond_4

    .line 655
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-direct {p0, v2}, Lcom/google/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 659
    :cond_4
    instance-of v4, v3, Lcom/google/protobuf/MutableMessageLite;

    if-eqz v4, :cond_5

    .line 660
    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    .end local v3    # "value":Ljava/lang/Object;
    check-cast v2, Lcom/google/protobuf/MutableMessageLite;

    invoke-interface {v0, v3, v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v3

    .line 671
    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4, v0, v3}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 664
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_5
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 665
    .end local v3    # "value":Ljava/lang/Object;
    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v4

    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 664
    invoke-interface {v0, v4, v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v4

    .line 666
    invoke-interface {v4}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    .local v3, "value":Lcom/google/protobuf/MessageLite;
    goto :goto_2

    .line 674
    .end local v3    # "value":Lcom/google/protobuf/MessageLite;
    :cond_6
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-direct {p0, v2}, Lcom/google/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static newFieldSet()Lcom/google/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<TT;>;>()",
            "Lcom/google/protobuf/FieldSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/google/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/google/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p2, "checkUtf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    if-eqz p2, :cond_0

    .line 699
    sget-object v0, Lcom/google/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/google/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/WireFormat;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object v0

    .line 702
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/google/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/WireFormat;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static readPrimitiveFieldForMutable(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p2, "checkUtf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->BYTES:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v0

    .line 719
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 5
    .param p0, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 498
    invoke-static {p1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "isValid":Z
    sget-object v3, Lcom/google/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 523
    :goto_0
    if-nez v0, :cond_6

    .line 531
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong object type used with protocol message reflection."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :pswitch_0
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    .line 503
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 504
    :pswitch_2
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 505
    :pswitch_3
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 506
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 507
    :pswitch_5
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 509
    :pswitch_6
    instance-of v3, p1, Lcom/google/protobuf/ByteString;

    if-nez v3, :cond_0

    instance-of v3, p1, [B

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 510
    :goto_1
    goto :goto_0

    :cond_1
    move v0, v1

    .line 509
    goto :goto_1

    .line 513
    :pswitch_7
    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_2

    instance-of v3, p1, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    .line 515
    :goto_2
    goto :goto_0

    :cond_3
    move v0, v1

    .line 513
    goto :goto_2

    .line 518
    :pswitch_8
    instance-of v3, p1, Lcom/google/protobuf/MessageLite;

    if-nez v3, :cond_4

    instance-of v3, p1, Lcom/google/protobuf/LazyField;

    if-eqz v3, :cond_5

    :cond_4
    move v0, v2

    :goto_3
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_3

    .line 534
    :cond_6
    return-void

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static writeElement(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 1
    .param p0, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .param p1, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p2, "number"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 787
    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_1

    move-object v0, p3

    .line 789
    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v0}, Lcom/google/protobuf/Internal;->isProto1Group(Lcom/google/protobuf/MessageLite;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 791
    check-cast p3, Lcom/google/protobuf/MessageLite;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 804
    :goto_0
    return-void

    .line 796
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p3, Lcom/google/protobuf/MessageLite;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 801
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 802
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/FieldSet;->writeElementNoTag(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static writeElementNoTag(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 2
    .param p0, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .param p1, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    sget-object v0, Lcom/google/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 859
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 821
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    goto :goto_0

    .line 822
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    goto :goto_0

    .line 823
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    goto :goto_0

    .line 824
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    goto :goto_0

    .line 825
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    goto :goto_0

    .line 826
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    goto :goto_0

    .line 827
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    goto :goto_0

    .line 828
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    goto :goto_0

    .line 829
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Lcom/google/protobuf/MessageLite;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 830
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Lcom/google/protobuf/MessageLite;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 832
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    instance-of v0, p2, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 833
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 835
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    goto :goto_0

    .line 839
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    instance-of v0, p2, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 840
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 842
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    goto :goto_0

    .line 845
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    goto/16 :goto_0

    .line 846
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    goto/16 :goto_0

    .line 847
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    goto/16 :goto_0

    .line 848
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_f
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    goto/16 :goto_0

    .line 849
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_10
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    goto/16 :goto_0

    .line 852
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_11
    instance-of v0, p2, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_2

    .line 853
    check-cast p2, Lcom/google/protobuf/Internal$EnumLite;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p2}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_0

    .line 855
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_0

    .line 820
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<*>;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 866
    .local p0, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v3

    .line 867
    .local v3, "type":Lcom/google/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    .line 868
    .local v2, "number":I
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 869
    check-cast v4, Ljava/util/List;

    .line 870
    .local v4, "valueList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 871
    const/4 v5, 0x2

    invoke-virtual {p2, v2, v5}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, "dataSize":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 875
    .local v1, "element":Ljava/lang/Object;
    invoke-static {v3, v1}, Lcom/google/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    .line 876
    goto :goto_0

    .line 877
    .end local v1    # "element":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 879
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 880
    .restart local v1    # "element":Ljava/lang/Object;
    invoke-static {p2, v3, v1}, Lcom/google/protobuf/FieldSet;->writeElementNoTag(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_1

    .line 883
    .end local v0    # "dataSize":I
    .end local v1    # "element":Ljava/lang/Object;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 884
    .restart local v1    # "element":Ljava/lang/Object;
    invoke-static {p2, v3, v2, v1}, Lcom/google/protobuf/FieldSet;->writeElement(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_2

    .line 888
    .end local v1    # "element":Ljava/lang/Object;
    .end local v4    # "valueList":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_2
    instance-of v5, p1, Lcom/google/protobuf/LazyField;

    if-eqz v5, :cond_4

    .line 889
    check-cast p1, Lcom/google/protobuf/LazyField;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-static {p2, v3, v2, v5}, Lcom/google/protobuf/FieldSet;->writeElement(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 894
    :cond_3
    :goto_3
    return-void

    .line 891
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_4
    invoke-static {p2, v3, v2, p1}, Lcom/google/protobuf/FieldSet;->writeElement(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_3
.end method

.method private writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p2, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 756
    .local v0, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_1

    .line 757
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 758
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 759
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/protobuf/LazyField;

    if-eqz v2, :cond_0

    .line 760
    check-cast v1, Lcom/google/protobuf/LazyField;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    .line 762
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p2, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/google/protobuf/MessageLite;)V

    .line 767
    :goto_0
    return-void

    .line 765
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/google/protobuf/FieldSet;->writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 4
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 475
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/protobuf/FieldSet;->verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 477
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 479
    .local v0, "existingValue":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2, p1, v1}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    return-void

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    move-object v1, v0

    .line 483
    check-cast v1, Ljava/util/List;

    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 269
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->clear()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 271
    return-void
.end method

.method public clearField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 401
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/protobuf/FieldSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/FieldSet",
            "<TFieldDescriptorType;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 131
    .local v0, "clone":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 132
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4, v3}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 133
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 134
    .local v1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 138
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 139
    .restart local v1    # "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    .line 141
    .end local v1    # "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_1
    iget-boolean v4, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    iput-boolean v4, v0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 142
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->clone()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method public cloneWithAllFieldsToImmutable()Lcom/google/protobuf/FieldSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/FieldSet",
            "<TFieldDescriptorType;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 225
    .local v0, "clone":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4, v3}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 227
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 228
    .local v1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/FieldSet;->convertToImmutable(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 232
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 233
    .restart local v1    # "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/google/protobuf/FieldSet;->convertToImmutable(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    .line 236
    .end local v1    # "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 237
    return-object v0
.end method

.method public cloneWithAllFieldsToMutable()Lcom/google/protobuf/FieldSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/FieldSet",
            "<TFieldDescriptorType;>;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 249
    .local v0, "clone":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 250
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4, v3}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 251
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 252
    .local v1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/google/protobuf/FieldSet;->convertToMutable(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 256
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 257
    .restart local v1    # "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/google/protobuf/FieldSet;->convertToMutable(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    .line 260
    .end local v1    # "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 261
    return-object v0
.end method

.method descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Lcom/google/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 328
    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    .line 330
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 103
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    if-ne p0, p1, :cond_0

    .line 104
    const/4 v1, 0x1

    .line 112
    :goto_0
    return v1

    .line 107
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/FieldSet;

    if-nez v1, :cond_1

    .line 108
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 111
    check-cast v0, Lcom/google/protobuf/FieldSet;

    .line 112
    .local v0, "other":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    iget-object v2, v0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/SmallSortedMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v3, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v3, :cond_3

    .line 278
    const/16 v3, 0x10

    .line 279
    invoke-static {v3}, Lcom/google/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/protobuf/SmallSortedMap;

    move-result-object v2

    .line 280
    .local v2, "result":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TFieldDescriptorType;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 281
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 285
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v2, v0}, Lcom/google/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 287
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->makeImmutable()V

    .line 292
    .end local v1    # "i":I
    .end local v2    # "result":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_2
    :goto_2
    return-object v2

    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    :goto_3
    move-object v2, v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    goto :goto_3
.end method

.method public getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 355
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/protobuf/LazyField;

    if-eqz v1, :cond_0

    .line 356
    check-cast v0, Lcom/google/protobuf/LazyField;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    .line 358
    :cond_0
    return-object v0
.end method

.method public getMessageSetSerializedSize()I
    .locals 5

    .prologue
    .line 918
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v2, 0x0

    .line 919
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 920
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    .line 919
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 924
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v4

    add-int/2addr v2, v4

    .line 925
    goto :goto_1

    .line 926
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_1
    return v2
.end method

.method public getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 434
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 435
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 437
    :cond_1
    check-cast v0, Ljava/util/List;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)I"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 414
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 415
    const/4 v1, 0x0

    .line 417
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    check-cast v0, Ljava/util/List;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 901
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v2, 0x0

    .line 902
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 903
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 904
    invoke-virtual {v3, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 905
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/FieldSet;->computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 902
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 908
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 909
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/protobuf/FieldSet;->computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 910
    goto :goto_1

    .line 911
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_1
    return v2
.end method

.method public hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)Z"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isImmutable()Z
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/FieldSet;->isImmutable:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v2, 0x0

    .line 546
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 547
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 557
    :goto_1
    return v2

    .line 546
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 553
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 557
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lcom/google/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 314
    invoke-virtual {v1}, Lcom/google/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    .line 316
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public makeImmutable()V
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/FieldSet;->isImmutable:Z

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->makeImmutable()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/FieldSet;->isImmutable:Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/FieldSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet",
            "<TFieldDescriptorType;>;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "other":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 610
    iget-object v2, p1, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 613
    :cond_0
    iget-object v2, p1, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 614
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 616
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 4
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    instance-of v2, p2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 370
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong object type used with protocol message reflection."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v1, "newList":Ljava/util/List;
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 379
    .local v0, "element":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/protobuf/FieldSet;->verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_0

    .line 381
    .end local v0    # "element":Ljava/lang/Object;
    :cond_1
    move-object p2, v1

    .line 386
    .end local v1    # "newList":Ljava/util/List;
    :goto_1
    instance-of v2, p2, Lcom/google/protobuf/LazyField;

    if-eqz v2, :cond_2

    .line 387
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/protobuf/FieldSet;->hasLazyField:Z

    .line 389
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2, p1, p2}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    return-void

    .line 383
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/protobuf/FieldSet;->verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .locals 3
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/google/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 455
    .local v0, "list":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 456
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 459
    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/google/protobuf/FieldSet;->verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 460
    check-cast v0, Ljava/util/List;

    .end local v0    # "list":Ljava/lang/Object;
    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 461
    return-void
.end method

.method public writeMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 744
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/google/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V

    .line 743
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 748
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_1

    .line 750
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    .local p0, "this":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 728
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 729
    invoke-virtual {v2, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 730
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/google/protobuf/FieldSet;->writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 734
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4, p1}, Lcom/google/protobuf/FieldSet;->writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_1

    .line 736
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method
