.class public final Lcom/google/protobuf/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field b:I

.field final c:Ljava/io/OutputStream;

.field private final d:[B


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/protobuf/a/c;->c:Ljava/io/OutputStream;

    .line 73
    iput-object p2, p0, Lcom/google/protobuf/a/c;->d:[B

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/a/c;->b:I

    .line 75
    array-length v0, p2

    iput v0, p0, Lcom/google/protobuf/a/c;->a:I

    .line 76
    return-void
.end method

.method constructor <init>([BII)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/a/c;->c:Ljava/io/OutputStream;

    .line 66
    iput-object p1, p0, Lcom/google/protobuf/a/c;->d:[B

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/a/c;->b:I

    .line 68
    add-int/lit8 v0, p3, 0x0

    iput v0, p0, Lcom/google/protobuf/a/c;->a:I

    .line 69
    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 626
    if-ltz p0, :cond_0

    .line 627
    invoke-static {p0}, Lcom/google/protobuf/a/c;->d(I)I

    move-result v0

    .line 630
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static a(J)I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 618
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 664
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 665
    array-length v1, v0

    invoke-static {v1}, Lcom/google/protobuf/a/c;->d(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    .line 668
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/google/protobuf/a/c;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/google/protobuf/a/c;

    const/16 v1, 0x1000

    new-array v1, v1, [B

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/a/c;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private a([B)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 839
    array-length v0, p1

    iget v1, p0, Lcom/google/protobuf/a/c;->a:I

    iget v2, p0, Lcom/google/protobuf/a/c;->b:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/a/c;->d:[B

    iget v2, p0, Lcom/google/protobuf/a/c;->b:I

    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/protobuf/a/c;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/a/c;->b:I

    .line 840
    :goto_0
    return-void

    .line 839
    :cond_0
    iget v1, p0, Lcom/google/protobuf/a/c;->a:I

    iget v2, p0, Lcom/google/protobuf/a/c;->b:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/protobuf/a/c;->d:[B

    iget v3, p0, Lcom/google/protobuf/a/c;->b:I

    invoke-static {p1, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/a/c;->a:I

    iput v1, p0, Lcom/google/protobuf/a/c;->b:I

    invoke-direct {p0}, Lcom/google/protobuf/a/c;->b()V

    iget v1, p0, Lcom/google/protobuf/a/c;->a:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/a/c;->d:[B

    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/google/protobuf/a/c;->b:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/a/c;->c:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 881
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/a/g;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/a/c;->d(I)I

    move-result v0

    return v0
.end method

.method public static b(ILcom/google/protobuf/a/a;)I
    .locals 3

    .prologue
    .line 500
    invoke-static {p0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/a/a;->a()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/a/c;->d(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/a/a;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/protobuf/a/f;)I
    .locals 3

    .prologue
    .line 491
    invoke-static {p0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/a/f;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/a/c;->d(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 473
    invoke-static {p0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 760
    iget-object v0, p0, Lcom/google/protobuf/a/c;->c:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 762
    new-instance v0, Lcom/google/protobuf/a/d;

    invoke-direct {v0}, Lcom/google/protobuf/a/d;-><init>()V

    throw v0

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/a/c;->c:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/a/c;->d:[B

    iget v2, p0, Lcom/google/protobuf/a/c;->b:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 768
    iput v3, p0, Lcom/google/protobuf/a/c;->b:I

    .line 769
    return-void
.end method

.method private b(J)V
    .locals 5

    .prologue
    .line 916
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 917
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 918
    return-void

    .line 920
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 921
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static c(II)I
    .locals 2

    .prologue
    .line 437
    invoke-static {p0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/a/c;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(IJ)I
    .locals 3

    .prologue
    .line 429
    invoke-static {p0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/a/c;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private c(J)V
    .locals 3

    .prologue
    .line 952
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 953
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 954
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 955
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 956
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 957
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 958
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 959
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 960
    return-void
.end method

.method public static d(I)I
    .locals 1

    .prologue
    .line 906
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 910
    :goto_0
    return v0

    .line 907
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 908
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 909
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 910
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static d(II)I
    .locals 2

    .prologue
    .line 552
    invoke-static {p0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/a/c;->e(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/a/c;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static e(I)I
    .locals 2

    .prologue
    .line 976
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/protobuf/a/c;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 777
    invoke-direct {p0}, Lcom/google/protobuf/a/c;->b()V

    .line 779
    :cond_0
    return-void
.end method

.method public final a(B)V
    .locals 3

    .prologue
    .line 825
    iget v0, p0, Lcom/google/protobuf/a/c;->b:I

    iget v1, p0, Lcom/google/protobuf/a/c;->a:I

    if-ne v0, v1, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/google/protobuf/a/c;->b()V

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/a/c;->d:[B

    iget v1, p0, Lcom/google/protobuf/a/c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/a/c;->b:I

    aput-byte p1, v0, v1

    .line 830
    return-void
.end method

.method public final a(ID)V
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a/c;->e(II)V

    .line 123
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/a/c;->c(J)V

    .line 124
    return-void
.end method

.method public final a(IF)V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a/c;->e(II)V

    .line 130
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/a/c;->a(B)V

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/a/c;->a(B)V

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/a/c;->a(B)V

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 131
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a/c;->e(II)V

    .line 151
    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/a/c;->c(I)V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/a/c;->b(J)V

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a/c;->e(II)V

    .line 144
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/a/c;->b(J)V

    .line 145
    return-void
.end method

.method public final a(ILcom/google/protobuf/a/a;)V
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a/c;->e(II)V

    .line 201
    invoke-virtual {p2}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/a/c;->c(I)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/a/c;->a([B)V

    .line 202
    return-void
.end method

.method public final a(ILcom/google/protobuf/a/f;)V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a/c;->e(II)V

    .line 194
    invoke-virtual {p2}, Lcom/google/protobuf/a/f;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->c(I)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/a/f;->a(Lcom/google/protobuf/a/c;)V

    .line 195
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 178
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a/c;->e(II)V

    .line 179
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/a/c;->c(I)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/a/c;->a([B)V

    .line 180
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a/c;->e(II)V

    .line 172
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 173
    return-void
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a/c;->e(II)V

    .line 247
    invoke-static {p2}, Lcom/google/protobuf/a/c;->e(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->c(I)V

    .line 248
    return-void
.end method

.method public final b(IJ)V
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/a/c;->e(II)V

    .line 158
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/a/c;->c(J)V

    .line 159
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 890
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 891
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 892
    return-void

    .line 894
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->a(B)V

    .line 895
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final e(II)V
    .locals 1

    .prologue
    .line 876
    invoke-static {p1, p2}, Lcom/google/protobuf/a/g;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/a/c;->c(I)V

    .line 877
    return-void
.end method
