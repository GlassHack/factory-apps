.class public final Lcom/google/common/logging/Cw$CwSearchLog;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Cw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/Cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CwSearchLog"
.end annotation


# static fields
.field public static final CW_QUERY_RESULT_ACTION_TYPE_CANCEL:I = 0x2

.field public static final CW_QUERY_RESULT_ACTION_TYPE_CONFIRM:I = 0x1

.field public static final CW_QUERY_RESULT_ACTION_TYPE_OPEN_ON_PHONE:I = 0x3

.field public static final CW_QUERY_RESULT_ACTION_TYPE_UNKNOWN:I = 0x0

.field public static final CW_QUERY_RESULT_TYPE_ASK_GOOGLE:I = 0xb

.field public static final CW_QUERY_RESULT_TYPE_CALCULATOR:I = 0x7

.field public static final CW_QUERY_RESULT_TYPE_DICTONARY:I = 0x5

.field public static final CW_QUERY_RESULT_TYPE_FINANCE:I = 0x8

.field public static final CW_QUERY_RESULT_TYPE_FLIGHTS:I = 0x6

.field public static final CW_QUERY_RESULT_TYPE_IMAGES:I = 0x1

.field public static final CW_QUERY_RESULT_TYPE_KNOWLEDGE:I = 0xa

.field public static final CW_QUERY_RESULT_TYPE_LOCAL:I = 0x2

.field public static final CW_QUERY_RESULT_TYPE_OTHER:I = 0x0

.field public static final CW_QUERY_RESULT_TYPE_PERSONAL_FLIGHTS:I = 0xf

.field public static final CW_QUERY_RESULT_TYPE_QUESTION_ANSWER:I = 0xc

.field public static final CW_QUERY_RESULT_TYPE_SPORTS:I = 0x4

.field public static final CW_QUERY_RESULT_TYPE_SUNRISE_SUNSET:I = 0xe

.field public static final CW_QUERY_RESULT_TYPE_TIME_DATE:I = 0xd

.field public static final CW_QUERY_RESULT_TYPE_WEATHER:I = 0x3

.field public static final CW_QUERY_RESULT_TYPE_WEB_SEARCH:I = 0x10

.field public static final CW_QUERY_RESULT_TYPE_WHEN_IS:I = 0x9

.field private static volatile _emptyArray:[Lcom/google/common/logging/Cw$CwSearchLog;


# instance fields
.field public action:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 951
    invoke-virtual {p0}, Lcom/google/common/logging/Cw$CwSearchLog;->clear()Lcom/google/common/logging/Cw$CwSearchLog;

    .line 952
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/Cw$CwSearchLog;
    .locals 2

    .prologue
    .line 933
    sget-object v0, Lcom/google/common/logging/Cw$CwSearchLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwSearchLog;

    if-nez v0, :cond_1

    .line 934
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 936
    :try_start_0
    sget-object v0, Lcom/google/common/logging/Cw$CwSearchLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwSearchLog;

    if-nez v0, :cond_0

    .line 937
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/Cw$CwSearchLog;

    sput-object v0, Lcom/google/common/logging/Cw$CwSearchLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwSearchLog;

    .line 939
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    :cond_1
    sget-object v0, Lcom/google/common/logging/Cw$CwSearchLog;->_emptyArray:[Lcom/google/common/logging/Cw$CwSearchLog;

    return-object v0

    .line 939
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwSearchLog;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1051
    new-instance v0, Lcom/google/common/logging/Cw$CwSearchLog;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwSearchLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/Cw$CwSearchLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwSearchLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/Cw$CwSearchLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1045
    new-instance v0, Lcom/google/common/logging/Cw$CwSearchLog;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwSearchLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/Cw$CwSearchLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/Cw$CwSearchLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 955
    iput v0, p0, Lcom/google/common/logging/Cw$CwSearchLog;->type:I

    .line 956
    iput v0, p0, Lcom/google/common/logging/Cw$CwSearchLog;->action:I

    .line 957
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/Cw$CwSearchLog;->cachedSize:I

    .line 958
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 975
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 976
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/Cw$CwSearchLog;->type:I

    if-eqz v1, :cond_0

    .line 977
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/Cw$CwSearchLog;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 980
    :cond_0
    iget v1, p0, Lcom/google/common/logging/Cw$CwSearchLog;->action:I

    if-eqz v1, :cond_1

    .line 981
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/Cw$CwSearchLog;->action:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 984
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwSearchLog;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 993
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 997
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 998
    :sswitch_0
    return-object p0

    .line 1003
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1004
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1022
    :pswitch_0
    iput v1, p0, Lcom/google/common/logging/Cw$CwSearchLog;->type:I

    goto :goto_0

    .line 1028
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1029
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1034
    :pswitch_1
    iput v1, p0, Lcom/google/common/logging/Cw$CwSearchLog;->action:I

    goto :goto_0

    .line 993
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 1004
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1029
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 902
    invoke-virtual {p0, p1}, Lcom/google/common/logging/Cw$CwSearchLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/Cw$CwSearchLog;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    iget v0, p0, Lcom/google/common/logging/Cw$CwSearchLog;->type:I

    if-eqz v0, :cond_0

    .line 965
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/Cw$CwSearchLog;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 967
    :cond_0
    iget v0, p0, Lcom/google/common/logging/Cw$CwSearchLog;->action:I

    if-eqz v0, :cond_1

    .line 968
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/Cw$CwSearchLog;->action:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 970
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 971
    return-void
.end method
