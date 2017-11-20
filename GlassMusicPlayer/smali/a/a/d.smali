.class public final La/a/d;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static final a:[La/a/d;


# instance fields
.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    new-array v0, v0, [La/a/d;

    sput-object v0, La/a/d;->a:[La/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 298
    iput v0, p0, La/a/d;->c:I

    .line 317
    iput v0, p0, La/a/d;->d:I

    .line 293
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)La/a/d;
    .locals 1

    .prologue
    .line 381
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 382
    sparse-switch v0, :sswitch_data_0

    .line 386
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    :sswitch_0
    return-object p0

    .line 392
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    move-result v0

    iput v0, p0, La/a/d;->c:I

    .line 393
    iget v0, p0, La/a/d;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/d;->b:I

    goto :goto_0

    .line 397
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    move-result v0

    iput v0, p0, La/a/d;->d:I

    .line 398
    iget v0, p0, La/a/d;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, La/a/d;->b:I

    goto :goto_0

    .line 382
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final a(I)La/a/d;
    .locals 1

    .prologue
    .line 303
    iput p1, p0, La/a/d;->c:I

    .line 304
    iget v0, p0, La/a/d;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/d;->b:I

    .line 305
    return-object p0
.end method

.method public final b(I)La/a/d;
    .locals 1

    .prologue
    .line 322
    iput p1, p0, La/a/d;->d:I

    .line 323
    iget v0, p0, La/a/d;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, La/a/d;->b:I

    .line 324
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 337
    if-ne p1, p0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    instance-of v2, p1, La/a/d;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 339
    :cond_2
    check-cast p1, La/a/d;

    .line 340
    iget v2, p0, La/a/d;->c:I

    iget v3, p1, La/a/d;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, La/a/d;->d:I

    iget v3, p1, La/a/d;->d:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 364
    iget v1, p0, La/a/d;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 365
    const/4 v1, 0x1

    iget v2, p0, La/a/d;->c:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    :cond_0
    iget v1, p0, La/a/d;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 369
    const/4 v1, 0x2

    iget v2, p0, La/a/d;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    :cond_1
    iput v0, p0, La/a/d;->cachedSize:I

    .line 373
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 345
    .line 346
    iget v0, p0, La/a/d;->c:I

    add-int/lit16 v0, v0, 0x20f

    .line 347
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/a/d;->d:I

    add-int/2addr v0, v1

    .line 348
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0, p1}, La/a/d;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)La/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 353
    iget v0, p0, La/a/d;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x1

    iget v1, p0, La/a/d;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32(II)V

    .line 356
    :cond_0
    iget v0, p0, La/a/d;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 357
    const/4 v0, 0x2

    iget v1, p0, La/a/d;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32(II)V

    .line 359
    :cond_1
    return-void
.end method
