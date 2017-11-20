.class public final Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProtoNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProtoNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationProvenanceProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto$LocationProvenance;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;

    sput-object v0, Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;->EMPTY_ARRAY:[Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProtoNano$LocationProvenanceProto;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 263
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 267
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    :pswitch_0
    return-object p0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 255
    return-void
.end method
