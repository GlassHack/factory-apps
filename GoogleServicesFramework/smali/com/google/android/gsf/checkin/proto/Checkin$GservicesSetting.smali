.class public final Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Checkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/proto/Checkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GservicesSetting"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasName:Z

.field private hasValue:Z

.field private name_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private value_:Lcom/google/protobuf/micro/ByteStringMicro;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->name_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 32
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->value_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->cachedSize:I

    if-gez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->getSerializedSize()I

    .line 77
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->cachedSize:I

    return v0
.end method

.method public getName()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->name_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->getName()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->getValue()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_1
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->cachedSize:I

    .line 92
    return v0
.end method

.method public getValue()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->value_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->hasName:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->hasValue:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 101
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    :sswitch_0
    return-object p0

    .line 111
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->setName(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;

    goto :goto_0

    .line 115
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->setValue(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;

    goto :goto_0

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;

    move-result-object v0

    return-object v0
.end method

.method public setName(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->hasName:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->name_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 21
    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->hasValue:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->value_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 38
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->getName()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->getValue()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 68
    :cond_1
    return-void
.end method
