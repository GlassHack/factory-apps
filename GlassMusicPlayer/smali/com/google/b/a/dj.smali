.class public final Lcom/google/b/a/dj;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile d:[Lcom/google/b/a/dj;


# instance fields
.field public a:Lcom/google/b/a/ec;

.field public b:Lcom/google/b/a/dn;

.field public c:Lcom/google/b/a/do;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1054
    invoke-direct {p0}, Lcom/google/b/a/dj;->b()Lcom/google/b/a/dj;

    .line 1055
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dj;
    .locals 1

    .prologue
    .line 1103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1104
    sparse-switch v0, :sswitch_data_0

    .line 1108
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    :sswitch_0
    return-object p0

    .line 1114
    :sswitch_1
    iget-object v0, p0, Lcom/google/b/a/dj;->a:Lcom/google/b/a/ec;

    if-nez v0, :cond_1

    .line 1115
    new-instance v0, Lcom/google/b/a/ec;

    invoke-direct {v0}, Lcom/google/b/a/ec;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/dj;->a:Lcom/google/b/a/ec;

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/dj;->a:Lcom/google/b/a/ec;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1121
    :sswitch_2
    iget-object v0, p0, Lcom/google/b/a/dj;->b:Lcom/google/b/a/dn;

    if-nez v0, :cond_2

    .line 1122
    new-instance v0, Lcom/google/b/a/dn;

    invoke-direct {v0}, Lcom/google/b/a/dn;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/dj;->b:Lcom/google/b/a/dn;

    .line 1124
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/dj;->b:Lcom/google/b/a/dn;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1128
    :sswitch_3
    iget-object v0, p0, Lcom/google/b/a/dj;->c:Lcom/google/b/a/do;

    if-nez v0, :cond_3

    .line 1129
    new-instance v0, Lcom/google/b/a/do;

    invoke-direct {v0}, Lcom/google/b/a/do;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/dj;->c:Lcom/google/b/a/do;

    .line 1131
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/dj;->c:Lcom/google/b/a/do;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1104
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/dj;
    .locals 2

    .prologue
    .line 1033
    sget-object v0, Lcom/google/b/a/dj;->d:[Lcom/google/b/a/dj;

    if-nez v0, :cond_1

    .line 1034
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1036
    :try_start_0
    sget-object v0, Lcom/google/b/a/dj;->d:[Lcom/google/b/a/dj;

    if-nez v0, :cond_0

    .line 1037
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/dj;

    sput-object v0, Lcom/google/b/a/dj;->d:[Lcom/google/b/a/dj;

    .line 1039
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    :cond_1
    sget-object v0, Lcom/google/b/a/dj;->d:[Lcom/google/b/a/dj;

    return-object v0

    .line 1039
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/dj;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1058
    iput-object v0, p0, Lcom/google/b/a/dj;->a:Lcom/google/b/a/ec;

    .line 1059
    iput-object v0, p0, Lcom/google/b/a/dj;->b:Lcom/google/b/a/dn;

    .line 1060
    iput-object v0, p0, Lcom/google/b/a/dj;->c:Lcom/google/b/a/do;

    .line 1061
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/dj;->cachedSize:I

    .line 1062
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1081
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1082
    iget-object v1, p0, Lcom/google/b/a/dj;->a:Lcom/google/b/a/ec;

    if-eqz v1, :cond_0

    .line 1083
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/dj;->a:Lcom/google/b/a/ec;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1086
    :cond_0
    iget-object v1, p0, Lcom/google/b/a/dj;->b:Lcom/google/b/a/dn;

    if-eqz v1, :cond_1

    .line 1087
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/dj;->b:Lcom/google/b/a/dn;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1090
    :cond_1
    iget-object v1, p0, Lcom/google/b/a/dj;->c:Lcom/google/b/a/do;

    if-eqz v1, :cond_2

    .line 1091
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/dj;->c:Lcom/google/b/a/do;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1094
    :cond_2
    iput v0, p0, Lcom/google/b/a/dj;->cachedSize:I

    .line 1095
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/google/b/a/dj;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/google/b/a/dj;->a:Lcom/google/b/a/ec;

    if-eqz v0, :cond_0

    .line 1069
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/dj;->a:Lcom/google/b/a/ec;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/dj;->b:Lcom/google/b/a/dn;

    if-eqz v0, :cond_1

    .line 1072
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/dj;->b:Lcom/google/b/a/dn;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1074
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/dj;->c:Lcom/google/b/a/do;

    if-eqz v0, :cond_2

    .line 1075
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/dj;->c:Lcom/google/b/a/do;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1077
    :cond_2
    return-void
.end method
