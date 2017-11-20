.class public final Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Logs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extra"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasName:Z

.field private hasValue:Z

.field private name_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1198
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1203
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->name_:Ljava/lang/String;

    .line 1220
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->value_:Ljava/lang/String;

    .line 1257
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->cachedSize:I

    .line 1198
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1260
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->cachedSize:I

    if-gez v0, :cond_0

    .line 1262
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->getSerializedSize()I

    .line 1264
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->cachedSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1269
    const/4 v0, 0x0

    .line 1270
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1271
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1274
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1275
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1278
    :cond_1
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->cachedSize:I

    .line 1279
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1205
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->hasName:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->hasValue:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1287
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1288
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1292
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1293
    :sswitch_0
    return-object p0

    .line 1298
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->setName(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;

    goto :goto_0

    .line 1302
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->setValue(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;

    goto :goto_0

    .line 1288
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_1
        0x3a -> :sswitch_2
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
    .line 1195
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->hasName:Z

    .line 1208
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->name_:Ljava/lang/String;

    .line 1209
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->hasValue:Z

    .line 1225
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->value_:Ljava/lang/String;

    .line 1226
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
    .line 1249
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1252
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1255
    :cond_1
    return-void
.end method
