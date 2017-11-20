.class public final Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationProvenanceProto"
.end annotation


# static fields
.field public static final LOCATION_PROVENANCE_GWS_MOBILE_CLIENT:I = 0x6

.field public static final LOCATION_PROVENANCE_LEGACY_MOBILE_FRONTEND_GLL_PARAM:I = 0x3

.field public static final LOCATION_PROVENANCE_LEGACY_MOBILE_FRONTEND_NEAR_PARAM:I = 0x5

.field public static final LOCATION_PROVENANCE_MAPS_FRONTEND_IL_DEBUG_IP:I = 0x4

.field public static final LOCATION_PROVENANCE_MOBILE_FE:I = 0x2

.field public static final LOCATION_PROVENANCE_TOOLBAR:I = 0x1

.field public static final LOCATION_PROVENANCE_UNREMARKABLE:I = 0x0

.field public static final LOCATION_PROVENANCE_XFF_HEADER:I = 0x7

.field public static final LOCATION_PROVENANCE_XGEO_HEADER:I = 0x8

.field private static volatile _emptyArray:[Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 302
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->clear()Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    .line 303
    return-void
.end method

.method public static emptyArray()[Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 2

    .prologue
    .line 290
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    if-nez v0, :cond_1

    .line 291
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    sput-object v0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    .line 296
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_1
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object v0

    .line 296
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    return-object v0
.end method


# virtual methods
.method public clear()Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 1

    .prologue
    .line 306
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->cachedSize:I

    .line 307
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationProvenanceProto;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 320
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 324
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    :pswitch_0
    return-object p0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 312
    return-void
.end method
