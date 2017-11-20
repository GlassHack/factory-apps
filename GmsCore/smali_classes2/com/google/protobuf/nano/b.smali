.class public final Lcom/google/protobuf/nano/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/protobuf/nano/b;->a:[B

    .line 58
    iput p2, p0, Lcom/google/protobuf/nano/b;->c:I

    .line 59
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/nano/b;->b:I

    .line 60
    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 569
    if-ltz p0, :cond_0

    .line 570
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->d(I)I

    move-result v0

    .line 573
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 607
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 608
    array-length v1, v0

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->d(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    .line 611
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([B)Lcom/google/protobuf/nano/b;
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/nano/b;->a([BII)Lcom/google/protobuf/nano/b;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/google/protobuf/nano/b;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/google/protobuf/nano/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/google/protobuf/nano/b;-><init>([BII)V

    return-object v0
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/m;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/b;->d(I)I

    move-result v0

    return v0
.end method

.method public static b(ILcom/google/protobuf/nano/j;)I
    .locals 2

    .prologue
    .line 443
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->b(Lcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 425
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(I[B)I
    .locals 2

    .prologue
    .line 452
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->b([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(J)I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 814
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 823
    :goto_0
    return v0

    .line 815
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 816
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 817
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 818
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 819
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 820
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 821
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 822
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 823
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static b(Lcom/google/protobuf/nano/j;)I
    .locals 2

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/google/protobuf/nano/j;->e()I

    move-result v0

    .line 629
    invoke-static {v0}, Lcom/google/protobuf/nano/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b([B)I
    .locals 2

    .prologue
    .line 637
    array-length v0, p0

    invoke-static {v0}, Lcom/google/protobuf/nano/b;->d(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(J)J
    .locals 4

    .prologue
    .line 877
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static d(I)I
    .locals 1

    .prologue
    .line 792
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 796
    :goto_0
    return v0

    .line 793
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 794
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 795
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 796
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static d(IJ)I
    .locals 3

    .prologue
    .line 373
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/nano/b;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private d(J)V
    .locals 3

    .prologue
    .line 838
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 839
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 840
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 841
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 842
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 843
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 844
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 845
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 846
    return-void
.end method

.method public static e(IJ)I
    .locals 3

    .prologue
    .line 381
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/nano/b;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private e(I)V
    .locals 4

    .prologue
    .line 738
    int-to-byte v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/b;->c:I

    iget v2, p0, Lcom/google/protobuf/nano/b;->b:I

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/google/protobuf/nano/c;

    iget v1, p0, Lcom/google/protobuf/nano/b;->c:I

    iget v2, p0, Lcom/google/protobuf/nano/b;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/c;-><init>(II)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/b;->a:[B

    iget v2, p0, Lcom/google/protobuf/nano/b;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/nano/b;->c:I

    aput-byte v0, v1, v2

    .line 739
    return-void
.end method

.method public static f(II)I
    .locals 2

    .prologue
    .line 389
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private f(I)V
    .locals 1

    .prologue
    .line 828
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 829
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 830
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 831
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 832
    return-void
.end method

.method private static g(I)I
    .locals 2

    .prologue
    .line 862
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static g(II)I
    .locals 2

    .prologue
    .line 460
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static h(II)I
    .locals 2

    .prologue
    .line 495
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->g(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 695
    iget v0, p0, Lcom/google/protobuf/nano/b;->b:I

    iget v1, p0, Lcom/google/protobuf/nano/b;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(ID)V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 90
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/nano/b;->d(J)V

    .line 91
    return-void
.end method

.method public final a(IF)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 97
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->f(I)V

    .line 98
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 118
    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/b;->c(I)V

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/nano/b;->a(J)V

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 104
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/b;->a(J)V

    .line 105
    return-void
.end method

.method public final a(ILcom/google/protobuf/nano/j;)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 161
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/j;)V

    .line 162
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 146
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/b;->c(I)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->c([B)V

    .line 147
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 139
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 140
    return-void
.end method

.method public final a(I[B)V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 168
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->c(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/b;->c([B)V

    .line 169
    return-void
.end method

.method public final a(J)V
    .locals 5

    .prologue
    .line 802
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 803
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 804
    return-void

    .line 806
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 807
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public final a(Lcom/google/protobuf/nano/j;)V
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/google/protobuf/nano/j;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->c(I)V

    .line 307
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 308
    return-void
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 132
    invoke-direct {p0, p2}, Lcom/google/protobuf/nano/b;->f(I)V

    .line 133
    return-void
.end method

.method public final b(IJ)V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 111
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/b;->a(J)V

    .line 112
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 776
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 777
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 778
    return-void

    .line 780
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;->e(I)V

    .line 781
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final c(II)V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 175
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/b;->c(I)V

    .line 176
    return-void
.end method

.method public final c(IJ)V
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 125
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/nano/b;->d(J)V

    .line 126
    return-void
.end method

.method public final c([B)V
    .locals 4

    .prologue
    .line 743
    array-length v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/b;->b:I

    iget v2, p0, Lcom/google/protobuf/nano/b;->c:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/protobuf/nano/b;->a:[B

    iget v3, p0, Lcom/google/protobuf/nano/b;->c:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/protobuf/nano/b;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/b;->c:I

    return-void

    :cond_0
    new-instance v0, Lcom/google/protobuf/nano/c;

    iget v1, p0, Lcom/google/protobuf/nano/b;->c:I

    iget v2, p0, Lcom/google/protobuf/nano/b;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/c;-><init>(II)V

    throw v0
.end method

.method public final d(II)V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 192
    invoke-direct {p0, p2}, Lcom/google/protobuf/nano/b;->f(I)V

    .line 193
    return-void
.end method

.method public final e(II)V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 206
    invoke-static {p2}, Lcom/google/protobuf/nano/b;->g(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->c(I)V

    .line 207
    return-void
.end method

.method public final i(II)V
    .locals 1

    .prologue
    .line 762
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/m;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->c(I)V

    .line 763
    return-void
.end method
