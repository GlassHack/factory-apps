.class final Lcom/google/protobuf/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Utf8$UnsafeProcessor;,
        Lcom/google/protobuf/Utf8$SafeProcessor;,
        Lcom/google/protobuf/Utf8$Processor;,
        Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    }
.end annotation


# static fields
.field private static final ASCII_MASK_LONG:J = -0x7f7f7f7f7f7f7f80L

.field public static final COMPLETE:I = 0x0

.field public static final MALFORMED:I = -0x1

.field static final MAX_BYTES_PER_CHAR:I = 0x3

.field private static final UNSAFE_COUNT_ASCII_THRESHOLD:I = 0x10

.field private static final processor:Lcom/google/protobuf/Utf8$Processor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;

    invoke-direct {v0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;-><init>()V

    :goto_0
    sput-object v0, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$Processor;

    .line 57
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/google/protobuf/Utf8$SafeProcessor;

    invoke-direct {v0}, Lcom/google/protobuf/Utf8$SafeProcessor;-><init>()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(III)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/nio/ByteBuffer;II)I
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/nio/ByteBuffer;III)I
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I

    move-result v0

    return v0
.end method

.method static synthetic access$400([BII)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/protobuf/Utf8;->incompleteStateFor(I)I

    move-result v0

    return v0
.end method

.method static encode(Ljava/lang/CharSequence;[BII)I
    .locals 1
    .param p0, "in"    # Ljava/lang/CharSequence;
    .param p1, "out"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 275
    sget-object v0, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->encodeUtf8(Ljava/lang/CharSequence;[BII)I

    move-result v0

    return v0
.end method

.method static encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "in"    # Ljava/lang/CharSequence;
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 316
    sget-object v0, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/Utf8$Processor;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 317
    return-void
.end method

.method static encodedLength(Ljava/lang/CharSequence;)I
    .locals 10
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 223
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 224
    .local v2, "utf16Length":I
    move v3, v2

    .line 225
    .local v3, "utf8Length":I
    const/4 v1, 0x0

    .line 228
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_0
    :goto_1
    if-ge v1, v2, :cond_2

    .line 234
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 235
    .local v0, "c":C
    const/16 v4, 0x800

    if-ge v0, v4, :cond_1

    .line 236
    rsub-int/lit8 v4, v0, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    :cond_1
    invoke-static {p0, v1}, Lcom/google/protobuf/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/2addr v3, v4

    .line 243
    .end local v0    # "c":C
    :cond_2
    if-ge v3, v2, :cond_3

    .line 245
    new-instance v4, Ljava/lang/IllegalArgumentException;

    int-to-long v6, v3

    const-wide v8, 0x100000000L

    add-long/2addr v6, v8

    const/16 v5, 0x36

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "UTF-8 length does not fit in int: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    :cond_3
    return v3
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .locals 6
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .prologue
    .line 252
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 253
    .local v3, "utf16Length":I
    const/4 v4, 0x0

    .line 254
    .local v4, "utf8Length":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 255
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 256
    .local v0, "c":C
    const/16 v5, 0x800

    if-ge v0, v5, :cond_1

    .line 257
    rsub-int/lit8 v5, v0, 0x7f

    ushr-int/lit8 v5, v5, 0x1f

    add-int/2addr v4, v5

    .line 254
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_1
    add-int/lit8 v4, v4, 0x2

    .line 261
    const v5, 0xd800

    if-gt v5, v0, :cond_0

    const v5, 0xdfff

    if-gt v0, v5, :cond_0

    .line 263
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 264
    .local v1, "cp":I
    const/high16 v5, 0x10000

    if-ge v1, v5, :cond_2

    .line 265
    new-instance v5, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v5, v2, v3}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v5

    .line 267
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 271
    .end local v0    # "c":C
    .end local v1    # "cp":I
    :cond_3
    return v4
.end method

.method private static estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .prologue
    .line 331
    move v0, p1

    .line 332
    .local v0, "i":I
    add-int/lit8 v1, p2, -0x7

    .line 336
    .local v1, "lim":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 337
    :cond_0
    sub-int v2, v0, p1

    return v2
.end method

.method private static incompleteStateFor(I)I
    .locals 1
    .param p0, "byte1"    # I

    .prologue
    .line 162
    const/16 v0, -0xc

    if-le p0, v0, :cond_0

    .line 163
    const/4 p0, -0x1

    .line 162
    .end local p0    # "byte1":I
    :cond_0
    return p0
.end method

.method private static incompleteStateFor(II)I
    .locals 1
    .param p0, "byte1"    # I
    .param p1, "byte2"    # I

    .prologue
    .line 167
    const/16 v0, -0xc

    if-gt p0, v0, :cond_0

    const/16 v0, -0x41

    if-le p1, v0, :cond_1

    .line 169
    :cond_0
    const/4 v0, -0x1

    .line 167
    :goto_0
    return v0

    .line 169
    :cond_1
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    goto :goto_0
.end method

.method private static incompleteStateFor(III)I
    .locals 2
    .param p0, "byte1"    # I
    .param p1, "byte2"    # I
    .param p2, "byte3"    # I

    .prologue
    const/16 v1, -0x41

    .line 173
    const/16 v0, -0xc

    if-gt p0, v0, :cond_0

    if-gt p1, v1, :cond_0

    if-le p2, v1, :cond_1

    .line 176
    :cond_0
    const/4 v0, -0x1

    .line 173
    :goto_0
    return v0

    .line 176
    :cond_1
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x10

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method private static incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "byte1"    # I
    .param p2, "index"    # I
    .param p3, "remaining"    # I

    .prologue
    .line 191
    packed-switch p3, :pswitch_data_0

    .line 199
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :pswitch_0
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->incompleteStateFor(I)I

    move-result v0

    .line 197
    :goto_0
    return v0

    .line 195
    :pswitch_1
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {p1, v0}, Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v0

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v0

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static incompleteStateFor([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .prologue
    .line 180
    add-int/lit8 v1, p1, -0x1

    aget-byte v0, p0, v1

    .line 181
    .local v0, "byte1":I
    sub-int v1, p2, p1

    packed-switch v1, :pswitch_data_0

    .line 185
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 182
    :pswitch_0
    invoke-static {v0}, Lcom/google/protobuf/Utf8;->incompleteStateFor(I)I

    move-result v1

    .line 184
    :goto_0
    return v1

    .line 183
    :pswitch_1
    aget-byte v1, p0, p1

    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v1

    goto :goto_0

    .line 184
    :pswitch_2
    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v1

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static isValidUtf8(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 289
    sget-object v0, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$Processor;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/Utf8$Processor;->isValidUtf8(Ljava/nio/ByteBuffer;II)Z

    move-result v0

    return v0
.end method

.method public static isValidUtf8([B)Z
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 123
    sget-object v0, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$Processor;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method public static isValidUtf8([BII)Z
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .prologue
    .line 136
    sget-object v0, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method static partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .locals 1
    .param p0, "state"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "limit"    # I

    .prologue
    .line 302
    sget-object v0, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public static partialIsValidUtf8(I[BII)I
    .locals 1
    .param p0, "state"    # I
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "limit"    # I

    .prologue
    .line 158
    sget-object v0, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result v0

    return v0
.end method
