.class public final Lcom/google/e/a/ag;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9376
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9377
    invoke-direct {p0}, Lcom/google/e/a/ag;->a()Lcom/google/e/a/ag;

    .line 9378
    return-void
.end method

.method private a()Lcom/google/e/a/ag;
    .locals 1

    .prologue
    .line 9381
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/ag;->cachedSize:I

    .line 9382
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ag;
    .locals 1

    .prologue
    .line 9394
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9395
    packed-switch v0, :pswitch_data_0

    .line 9399
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9400
    :pswitch_0
    return-object p0

    .line 9395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 9359
    invoke-direct {p0, p1}, Lcom/google/e/a/ag;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0

    .prologue
    .line 9387
    return-void
.end method
