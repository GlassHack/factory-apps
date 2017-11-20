.class public final Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DeviceCheckinNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/DeviceCheckinNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceCheckinResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    return-object v0
.end method


# virtual methods
.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 277
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 281
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->unknownFieldData:Ljava/util/List;

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    :pswitch_0
    return-object p0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 269
    return-void
.end method
