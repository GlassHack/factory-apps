.class final Lcom/google/protobuf/ExtensionSchemaLite;
.super Lcom/google/protobuf/ExtensionSchema;
.source "ExtensionSchemaLite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/ExtensionSchema",
        "<",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/ExtensionSchema;-><init>()V

    return-void
.end method


# virtual methods
.method extensionNumber(Ljava/util/Map$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 253
    .line 254
    .local p1, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 255
    .local v0, "descriptor":Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    return v1
.end method

.method findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;
    .locals 1
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p2, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p3, "number"    # I

    .prologue
    .line 441
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    return-object v0
.end method

.method getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .end local p1    # "message":Ljava/lang/Object;
    iget-object v0, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    return-object v0
.end method

.method hasExtensions(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method parseExtension(Lcom/google/protobuf/Reader;Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 17
    .param p1, "reader"    # Lcom/google/protobuf/Reader;
    .param p2, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p3, "extensionObject"    # Ljava/lang/Object;
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/MessageLite;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;TU;",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    .local p5, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p6, "unknownFields":Ljava/lang/Object;, "TU;"
    .local p7, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TU;>;"
    move-object/from16 v3, p3

    check-cast v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 39
    .local v3, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v4

    .line 41
    .local v4, "fieldNumber":I
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v13

    if-eqz v13, :cond_0

    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 42
    const/4 v12, 0x0

    .line 43
    .local v12, "value":Ljava/lang/Object;
    sget-object v13, Lcom/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 150
    new-instance v13, Ljava/lang/IllegalStateException;

    iget-object v14, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 151
    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x17

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Type cannot be packed: "

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 46
    :pswitch_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 48
    move-object v12, v6

    .line 153
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v12, "value":Ljava/util/List;
    :goto_0
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v12}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .end local v12    # "value":Ljava/util/List;
    :goto_1
    move-object/from16 v13, p6

    .line 248
    :goto_2
    return-object v13

    .line 53
    .local v12, "value":Ljava/lang/Object;
    :pswitch_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 55
    move-object v12, v7

    .line 56
    .local v12, "value":Ljava/util/List;
    goto :goto_0

    .line 60
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v12, "value":Ljava/lang/Object;
    :pswitch_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 62
    move-object v12, v9

    .line 63
    .local v12, "value":Ljava/util/List;
    goto :goto_0

    .line 67
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v12, "value":Ljava/lang/Object;
    :pswitch_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 69
    move-object v12, v9

    .line 70
    .local v12, "value":Ljava/util/List;
    goto :goto_0

    .line 74
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v12, "value":Ljava/lang/Object;
    :pswitch_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 76
    move-object v12, v8

    .line 77
    .local v12, "value":Ljava/util/List;
    goto :goto_0

    .line 81
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "value":Ljava/lang/Object;
    :pswitch_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 83
    move-object v12, v9

    .line 84
    .local v12, "value":Ljava/util/List;
    goto :goto_0

    .line 88
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v12, "value":Ljava/lang/Object;
    :pswitch_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 90
    move-object v12, v8

    .line 91
    .local v12, "value":Ljava/util/List;
    goto :goto_0

    .line 95
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "value":Ljava/lang/Object;
    :pswitch_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 97
    move-object v12, v5

    .line 98
    .local v12, "value":Ljava/util/List;
    goto :goto_0

    .line 102
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v12, "value":Ljava/lang/Object;
    :pswitch_8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 104
    move-object v12, v8

    .line 105
    .local v12, "value":Ljava/util/List;
    goto :goto_0

    .line 109
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "value":Ljava/lang/Object;
    :pswitch_9
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 111
    move-object v12, v8

    .line 112
    .local v12, "value":Ljava/util/List;
    goto :goto_0

    .line 116
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "value":Ljava/lang/Object;
    :pswitch_a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 118
    move-object v12, v9

    .line 119
    .local v12, "value":Ljava/util/List;
    goto/16 :goto_0

    .line 123
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v12, "value":Ljava/lang/Object;
    :pswitch_b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 125
    move-object v12, v8

    .line 126
    .local v12, "value":Ljava/util/List;
    goto/16 :goto_0

    .line 130
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "value":Ljava/lang/Object;
    :pswitch_c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 132
    move-object v12, v9

    .line 133
    .local v12, "value":Ljava/util/List;
    goto/16 :goto_0

    .line 137
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v12, "value":Ljava/lang/Object;
    :pswitch_d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 139
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 143
    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v13

    .line 140
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-static {v4, v8, v13, v0, v1}, Lcom/google/protobuf/Proto2Schema;->filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p6

    .line 146
    move-object v12, v8

    .line 147
    .local v12, "value":Ljava/util/List;
    goto/16 :goto_0

    .line 155
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "value":Ljava/util/List;
    :cond_0
    const/4 v12, 0x0

    .line 157
    .local v12, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    sget-object v14, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v13, v14, :cond_2

    .line 158
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v10

    .line 159
    .local v10, "number":I
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v13

    invoke-interface {v13, v10}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v2

    .line 160
    .local v2, "enumValue":Lcom/google/protobuf/Internal$EnumLite;
    if-nez v2, :cond_1

    .line 161
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-static {v4, v10, v0, v1}, Lcom/google/protobuf/Proto2Schema;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_2

    .line 166
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 231
    .end local v2    # "enumValue":Lcom/google/protobuf/Internal$EnumLite;
    .end local v10    # "number":I
    .end local v12    # "value":Ljava/lang/Object;
    :goto_3
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 232
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v12}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 168
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_2
    sget-object v13, Lcom/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_1

    goto :goto_3

    .line 170
    :pswitch_e
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 171
    .local v12, "value":Ljava/lang/Double;
    goto :goto_3

    .line 173
    .local v12, "value":Ljava/lang/Object;
    :pswitch_f
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 174
    .local v12, "value":Ljava/lang/Float;
    goto :goto_3

    .line 176
    .local v12, "value":Ljava/lang/Object;
    :pswitch_10
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 177
    .local v12, "value":Ljava/lang/Long;
    goto :goto_3

    .line 179
    .local v12, "value":Ljava/lang/Object;
    :pswitch_11
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 180
    .local v12, "value":Ljava/lang/Long;
    goto :goto_3

    .line 182
    .local v12, "value":Ljava/lang/Object;
    :pswitch_12
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 183
    .local v12, "value":Ljava/lang/Integer;
    goto :goto_3

    .line 185
    .local v12, "value":Ljava/lang/Object;
    :pswitch_13
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 186
    .local v12, "value":Ljava/lang/Long;
    goto :goto_3

    .line 188
    .local v12, "value":Ljava/lang/Object;
    :pswitch_14
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 189
    .local v12, "value":Ljava/lang/Integer;
    goto :goto_3

    .line 191
    .local v12, "value":Ljava/lang/Object;
    :pswitch_15
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 192
    .local v12, "value":Ljava/lang/Boolean;
    goto :goto_3

    .line 194
    .local v12, "value":Ljava/lang/Object;
    :pswitch_16
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v12

    .line 195
    .local v12, "value":Lcom/google/protobuf/ByteString;
    goto :goto_3

    .line 197
    .local v12, "value":Ljava/lang/Object;
    :pswitch_17
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 198
    .local v12, "value":Ljava/lang/Integer;
    goto :goto_3

    .line 200
    .local v12, "value":Ljava/lang/Object;
    :pswitch_18
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 201
    .local v12, "value":Ljava/lang/Integer;
    goto :goto_3

    .line 203
    .local v12, "value":Ljava/lang/Object;
    :pswitch_19
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 204
    .local v12, "value":Ljava/lang/Long;
    goto/16 :goto_3

    .line 206
    .local v12, "value":Ljava/lang/Object;
    :pswitch_1a
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 207
    .local v12, "value":Ljava/lang/Integer;
    goto/16 :goto_3

    .line 209
    .local v12, "value":Ljava/lang/Object;
    :pswitch_1b
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 210
    .local v12, "value":Ljava/lang/Long;
    goto/16 :goto_3

    .line 213
    .local v12, "value":Ljava/lang/Object;
    :pswitch_1c
    invoke-interface/range {p1 .. p1}, Lcom/google/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v12

    .line 214
    .local v12, "value":Ljava/lang/String;
    goto/16 :goto_3

    .line 218
    .local v12, "value":Ljava/lang/Object;
    :pswitch_1d
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 217
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v0, v13, v1}, Lcom/google/protobuf/Reader;->readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v12

    .line 219
    goto/16 :goto_3

    .line 224
    :pswitch_1e
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 223
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v0, v13, v1}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v12

    .line 225
    goto/16 :goto_3

    .line 228
    :pswitch_1f
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Shouldn\'t reach here."

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 234
    .end local v12    # "value":Ljava/lang/Object;
    :cond_3
    sget-object v13, Lcom/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_2

    .line 245
    :cond_4
    :goto_4
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v12}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 237
    :pswitch_20
    iget-object v13, v3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v11

    .line 238
    .local v11, "oldValue":Ljava/lang/Object;
    if-eqz v11, :cond_4

    .line 239
    invoke-static {v11, v12}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .restart local v12    # "value":Ljava/lang/Object;
    goto :goto_4

    .line 43
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
    .end packed-switch

    .line 168
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1f
        :pswitch_16
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    .line 234
    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/Reader;Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V
    .locals 3
    .param p1, "reader"    # Lcom/google/protobuf/Reader;
    .param p2, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p3, "extensionObject"    # Ljava/lang/Object;
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/MessageLite;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    .local p5, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    move-object v0, p3

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 455
    .local v0, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1, v2, p4}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    .line 456
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, v2, v1}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 457
    return-void
.end method

.method parseMessageSetItem(Lcom/google/protobuf/Reader;Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V
    .locals 3
    .param p1, "reader"    # Lcom/google/protobuf/Reader;
    .param p2, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p3, "extensionObject"    # Ljava/lang/Object;
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/MessageLite;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    .local p5, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    move-object v0, p3

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 469
    .local v0, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    .line 470
    .local v1, "value":Lcom/google/protobuf/MessageLite;
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p4}, Lcom/google/protobuf/Protobuf;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 471
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, v2, v1}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 472
    return-void
.end method

.method serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V
    .locals 6
    .param p1, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Writer;",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 260
    .line 261
    .local p2, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 262
    .local v0, "descriptor":Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    sget-object v1, Lcom/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 436
    :goto_0
    return-void

    .line 266
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 267
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 269
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 265
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto :goto_0

    .line 273
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 274
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 276
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 272
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto :goto_0

    .line 280
    :pswitch_2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 281
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 283
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 279
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto :goto_0

    .line 287
    :pswitch_3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 288
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 290
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 286
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto :goto_0

    .line 294
    :pswitch_4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 295
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 297
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 293
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto :goto_0

    .line 301
    :pswitch_5
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 302
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 304
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 300
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto :goto_0

    .line 308
    :pswitch_6
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 309
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 311
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 307
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto :goto_0

    .line 315
    :pswitch_7
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 316
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 318
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 314
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    .line 322
    :pswitch_8
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 321
    invoke-static {v2, v1, p1}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_0

    .line 326
    :pswitch_9
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 327
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 329
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 325
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    .line 333
    :pswitch_a
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 334
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 336
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 332
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    .line 340
    :pswitch_b
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 341
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 343
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 339
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    .line 347
    :pswitch_c
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 348
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 350
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 346
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    .line 354
    :pswitch_d
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 355
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 357
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 353
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    .line 361
    :pswitch_e
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    .line 362
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 364
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 360
    invoke-static {v2, v1, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_0

    .line 368
    :pswitch_f
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 367
    invoke-static {v2, v1, p1}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_0

    .line 371
    :pswitch_10
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1, p1}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_0

    .line 375
    :pswitch_11
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 374
    invoke-static {v2, v1, p1}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_0

    .line 379
    :cond_0
    sget-object v1, Lcom/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 381
    :pswitch_12
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_0

    .line 384
    :pswitch_13
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_0

    .line 387
    :pswitch_14
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_0

    .line 390
    :pswitch_15
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_0

    .line 393
    :pswitch_16
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_0

    .line 396
    :pswitch_17
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_0

    .line 399
    :pswitch_18
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_0

    .line 402
    :pswitch_19
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_0

    .line 405
    :pswitch_1a
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-interface {p1, v2, v1}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 408
    :pswitch_1b
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_0

    .line 411
    :pswitch_1c
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_0

    .line 414
    :pswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_0

    .line 417
    :pswitch_1e
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_0

    .line 420
    :pswitch_1f
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_0

    .line 423
    :pswitch_20
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_0

    .line 426
    :pswitch_21
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 429
    :pswitch_22
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 432
    :pswitch_23
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 263
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 379
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_1a
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method setExtensions(Ljava/lang/Object;Lcom/google/protobuf/FieldSet;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .end local p1    # "message":Ljava/lang/Object;
    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 25
    return-void
.end method
