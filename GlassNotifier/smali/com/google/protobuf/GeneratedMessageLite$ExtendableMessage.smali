.class public abstract Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/GeneratedMessageLite",
        "<TMessageType;TBuilderType;>;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected extensions:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 448
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 458
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    return-void
.end method

.method private eagerlyMergeMessageSetExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/google/protobuf/ExtensionRegistryLite;I)V
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p4, "typeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<**>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p2, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    move v5, p4

    .line 723
    .local v5, "fieldNumber":I
    const/4 v0, 0x2

    invoke-static {p4, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v4

    .local v4, "tag":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    .line 724
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z

    .line 725
    return-void
.end method

.method private mergeMessageSetExtensionFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 6
    .param p1, "rawBytes"    # Lcom/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p3, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    const/4 v1, 0x0

    .line 733
    .local v1, "subBuilder":Lcom/google/protobuf/MessageLite$Builder;
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v4, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 734
    .local v0, "existingValue":Lcom/google/protobuf/MessageLite;
    if-eqz v0, :cond_0

    .line 735
    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    .line 737
    :cond_0
    if-nez v1, :cond_1

    .line 738
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    .line 740
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/CodedInputStream;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 741
    invoke-interface {v1}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    .line 743
    .local v2, "value":Lcom/google/protobuf/MessageLite;
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v4, p3, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p3, v2}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 744
    return-void
.end method

.method private mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .param p2, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Lcom/google/protobuf/MessageLite;, "TMessageType;"
    const/4 v3, 0x0

    .line 666
    .local v3, "typeId":I
    const/4 v1, 0x0

    .line 667
    .local v1, "rawBytes":Lcom/google/protobuf/ByteString;
    const/4 v0, 0x0

    .line 672
    .local v0, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 673
    .local v2, "tag":I
    if-nez v2, :cond_2

    .line 702
    :goto_1
    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-virtual {p2, v4}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 705
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 706
    if-eqz v0, :cond_6

    .line 707
    invoke-direct {p0, v1, p3, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeMessageSetExtensionFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 714
    :cond_1
    :goto_2
    return-void

    .line 677
    :cond_2
    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v2, v4, :cond_3

    .line 678
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    .line 679
    if-eqz v3, :cond_0

    .line 680
    invoke-virtual {p3, p1, v3}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    goto :goto_0

    .line 683
    :cond_3
    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v2, v4, :cond_5

    .line 684
    if-eqz v3, :cond_4

    .line 685
    if-eqz v0, :cond_4

    .line 688
    invoke-direct {p0, p2, v0, p3, v3}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->eagerlyMergeMessageSetExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/google/protobuf/ExtensionRegistryLite;I)V

    .line 689
    const/4 v1, 0x0

    .line 690
    goto :goto_0

    .line 694
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    .line 697
    :cond_5
    invoke-virtual {p2, v2}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 709
    :cond_6
    if-eqz v1, :cond_1

    .line 710
    invoke-virtual {p0, v3, v1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeLengthDelimitedField(ILcom/google/protobuf/ByteString;)V

    goto :goto_2
.end method

.method private parseExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z
    .locals 13
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p4, "tag"    # I
    .param p5, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<**>;II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p3, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v9

    .line 504
    .local v9, "wireType":I
    const/4 v7, 0x0

    .line 505
    .local v7, "unknown":Z
    const/4 v4, 0x0

    .line 506
    .local v4, "packed":Z
    if-nez p3, :cond_0

    .line 507
    const/4 v7, 0x1

    .line 522
    :goto_0
    if-eqz v7, :cond_3

    .line 523
    move/from16 v0, p4

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v10

    .line 604
    :goto_1
    return v10

    .line 508
    :cond_0
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 509
    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v10

    const/4 v11, 0x0

    .line 508
    invoke-static {v10, v11}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 511
    const/4 v4, 0x0

    goto :goto_0

    .line 512
    :cond_1
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v10, v10, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v10, :cond_2

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v10, v10, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    .line 513
    invoke-virtual {v10}, Lcom/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 515
    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v10

    const/4 v11, 0x1

    .line 514
    invoke-static {v10, v11}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 517
    const/4 v4, 0x1

    goto :goto_0

    .line 519
    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    .line 526
    :cond_3
    if-eqz v4, :cond_7

    .line 527
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 528
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 529
    .local v3, "limit":I
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v10

    sget-object v11, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v10, v11, :cond_5

    .line 530
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_6

    .line 531
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 532
    .local v5, "rawValue":I
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 533
    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v10

    invoke-interface {v10, v5}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v8

    .line 534
    .local v8, "value":Lcom/google/protobuf/Internal$EnumLite;
    if-nez v8, :cond_4

    .line 537
    const/4 v10, 0x1

    goto :goto_1

    .line 539
    :cond_4
    iget-object v10, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 540
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 539
    invoke-virtual {v10, v11, v12}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    .line 543
    .end local v5    # "rawValue":I
    .end local v8    # "value":Lcom/google/protobuf/Internal$EnumLite;
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_6

    .line 544
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 546
    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v10

    const/4 v11, 0x0

    .line 545
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v8

    .line 548
    .local v8, "value":Ljava/lang/Object;
    iget-object v10, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v10, v11, v8}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 551
    .end local v8    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 604
    .end local v2    # "length":I
    .end local v3    # "limit":I
    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 554
    :cond_7
    sget-object v10, Lcom/google/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 590
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 591
    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v10

    const/4 v11, 0x0

    .line 590
    invoke-static {p1, v10, v11}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v8

    .line 596
    :cond_8
    :goto_5
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 597
    iget-object v10, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 598
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 597
    invoke-virtual {v10, v11, v12}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_4

    .line 556
    :pswitch_0
    const/4 v6, 0x0

    .line 557
    .local v6, "subBuilder":Lcom/google/protobuf/MessageLite$Builder;
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v10

    if-nez v10, :cond_9

    .line 558
    iget-object v10, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 559
    invoke-virtual {v10, v11}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 560
    .local v1, "existingValue":Lcom/google/protobuf/MessageLite;
    if-eqz v1, :cond_9

    .line 561
    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v6

    .line 564
    .end local v1    # "existingValue":Lcom/google/protobuf/MessageLite;
    :cond_9
    if-nez v6, :cond_a

    .line 565
    invoke-virtual/range {p3 .. p3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v10

    .line 566
    invoke-interface {v10}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v6

    .line 568
    :cond_a
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v10

    sget-object v11, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v10, v11, :cond_b

    .line 570
    invoke-virtual/range {p3 .. p3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v10

    invoke-virtual {p1, v10, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 575
    :goto_6
    invoke-interface {v6}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v8

    .line 576
    .local v8, "value":Lcom/google/protobuf/MessageLite;
    goto :goto_5

    .line 573
    .end local v8    # "value":Lcom/google/protobuf/MessageLite;
    :cond_b
    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_6

    .line 579
    .end local v6    # "subBuilder":Lcom/google/protobuf/MessageLite$Builder;
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 580
    .restart local v5    # "rawValue":I
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v10

    .line 581
    invoke-interface {v10, v5}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v8

    .line 584
    .local v8, "value":Lcom/google/protobuf/Internal$EnumLite;
    if-nez v8, :cond_8

    .line 585
    move/from16 v0, p5

    invoke-virtual {p0, v0, v5}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeVarintField(II)V

    .line 586
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 600
    .end local v5    # "rawValue":I
    .end local v8    # "value":Lcom/google/protobuf/Internal$EnumLite;
    :cond_c
    iget-object v10, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 601
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 600
    invoke-virtual {v10, v11, v12}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;*>;)V"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    .line 749
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 751
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_0
    return-void
.end method


# virtual methods
.method protected extensionsAreInitialized()Z
    .locals 1

    .prologue
    .line 809
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSize()I
    .locals 1

    .prologue
    .line 871
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSizeAsMessageSet()I
    .locals 1

    .prologue
    .line 874
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    return v0
.end method

.method public final getExtension(Lcom/google/protobuf/ExtensionLite;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/ExtensionLite",
            "<TMessageType;TType;>;)TType;"
        }
    .end annotation

    .prologue
    .line 782
    .line 783
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/google/protobuf/ExtensionLite;, "Lcom/google/protobuf/ExtensionLite<TMessageType;TType;>;"
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->access$000(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 785
    .local v0, "extensionLite":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 786
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v3, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    .line 787
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 788
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    .line 790
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->fromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public final getExtension(Lcom/google/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/ExtensionLite",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;I)TType;"
        }
    .end annotation

    .prologue
    .line 799
    .line 800
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/google/protobuf/ExtensionLite;, "Lcom/google/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->access$000(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 802
    .local v0, "extensionLite":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 803
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 804
    invoke-virtual {v1, v2, p2}, Lcom/google/protobuf/FieldSet;->getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v1

    .line 803
    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final getExtensionCount(Lcom/google/protobuf/ExtensionLite;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/ExtensionLite",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;)I"
        }
    .end annotation

    .prologue
    .line 771
    .line 772
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/google/protobuf/ExtensionLite;, "Lcom/google/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->access$000(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 774
    .local v0, "extensionLite":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 775
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v1

    return v1
.end method

.method public final hasExtension(Lcom/google/protobuf/ExtensionLite;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/ExtensionLite",
            "<TMessageType;TType;>;)Z"
        }
    .end annotation

    .prologue
    .line 760
    .line 761
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Lcom/google/protobuf/ExtensionLite;, "Lcom/google/protobuf/ExtensionLite<TMessageType;TType;>;"
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->access$000(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 763
    .local v0, "extensionLite":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 764
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v1

    return v1
.end method

.method protected final makeImmutable()V
    .locals 1

    .prologue
    .line 814
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    .line 816
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->makeImmutable()V

    .line 817
    return-void
.end method

.method protected final mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "other":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "TMessageType;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->clone()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 466
    return-void
.end method

.method protected newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
            "<TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .prologue
    .line 863
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/google/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected newMessageSetExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
            "<TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .prologue
    .line 866
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/google/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected parseUnknownField(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 6
    .param p2, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p4, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Lcom/google/protobuf/MessageLite;, "TMessageType;"
    invoke-static {p4}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v5

    .line 490
    .local v5, "fieldNumber":I
    invoke-virtual {p3, p1, v5}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v3

    .local v3, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    .line 493
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z

    move-result v0

    return v0
.end method

.method protected parseUnknownFieldAsMessageSet(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 2
    .param p2, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p4, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TMessageType;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Lcom/google/protobuf/MessageLite;, "TMessageType;"
    sget v1, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    if-ne p4, v1, :cond_0

    .line 622
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 623
    const/4 v1, 0x1

    .line 633
    :goto_0
    return v1

    .line 628
    :cond_0
    invoke-static {p4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    .line 629
    .local v0, "wireType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 630
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {p2, p4}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    goto :goto_0
.end method

.method final visit(Lcom/google/protobuf/GeneratedMessageLite$Visitor;Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 2
    .param p1, "visitor"    # Lcom/google/protobuf/GeneratedMessageLite$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$Visitor;",
            "TMessageType;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p2, "other":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "TMessageType;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->visit(Lcom/google/protobuf/GeneratedMessageLite$Visitor;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 471
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v1, p2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-interface {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitExtensions(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/FieldSet;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 472
    return-void
.end method

.method bridge synthetic visit(Lcom/google/protobuf/GeneratedMessageLite$Visitor;Lcom/google/protobuf/GeneratedMessageLite;)V
    .locals 0

    .prologue
    .line 448
    .local p0, "this":Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->visit(Lcom/google/protobuf/GeneratedMessageLite$Visitor;Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void
.end method
