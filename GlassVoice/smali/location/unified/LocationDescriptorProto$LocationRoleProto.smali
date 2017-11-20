.class public final Llocation/unified/LocationDescriptorProto$LocationRoleProto;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationRoleProto"
.end annotation


# static fields
.field public static final LOCATION_ROLE_CURRENT_LOCATION:I = 0x1

.field public static final LOCATION_ROLE_DEFAULT_LOCATION:I = 0x2

.field public static final LOCATION_ROLE_HISTORICAL_LOCATION:I = 0x6

.field public static final LOCATION_ROLE_HISTORICAL_QUERY:I = 0x5

.field public static final LOCATION_ROLE_QUERY:I = 0x3

.field public static final LOCATION_ROLE_UNKNOWN_ROLE:I = 0x0

.field public static final LOCATION_ROLE_USER_SPECIFIED_FOR_REQUEST:I = 0x4

.field public static final LOCATION_ROLE_VIEWPORT:I = 0x7

.field public static final WILDCARD_ROLE:I = -0x1

.field private static volatile _emptyArray:[Llocation/unified/LocationDescriptorProto$LocationRoleProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 117
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->clear()Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    .line 118
    return-void
.end method

.method public static emptyArray()[Llocation/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    if-nez v0, :cond_1

    .line 106
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    new-array v0, v0, [Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    sput-object v0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    .line 111
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_1
    sget-object v0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->_emptyArray:[Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationRoleProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationRoleProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    return-object v0
.end method


# virtual methods
.method public clear()Llocation/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 1

    .prologue
    .line 121
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->cachedSize:I

    .line 122
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
    .line 88
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LocationRoleProto;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationRoleProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Llocation/unified/LocationDescriptorProto$LocationRoleProto;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 135
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 139
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    :pswitch_0
    return-object p0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 127
    return-void
.end method
