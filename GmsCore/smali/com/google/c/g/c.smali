.class public final Lcom/google/c/g/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[J

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x25

    new-array v0, v0, [J

    sput-object v0, Lcom/google/c/g/c;->a:[J

    const/16 v0, 0x25

    new-array v0, v0, [I

    sput-object v0, Lcom/google/c/g/c;->b:[I

    const/16 v0, 0x25

    new-array v0, v0, [I

    sput-object v0, Lcom/google/c/g/c;->c:[I

    new-instance v5, Ljava/math/BigInteger;

    const-string v0, "10000000000000000"

    const/16 v1, 0x10

    invoke-direct {v5, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x2

    move v4, v0

    :goto_0
    const/16 v0, 0x24

    if-gt v4, v0, :cond_8

    sget-object v2, Lcom/google/c/g/c;->a:[J

    int-to-long v0, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-gez v3, :cond_1

    const-wide/16 v6, -0x1

    invoke-static {v6, v7, v0, v1}, Lcom/google/c/g/c;->a(JJ)I

    move-result v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_1
    aput-wide v0, v2, v4

    sget-object v6, Lcom/google/c/g/c;->b:[I

    int-to-long v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    const-wide/16 v2, -0x1

    invoke-static {v2, v3, v0, v1}, Lcom/google/c/g/c;->a(JJ)I

    move-result v2

    if-gez v2, :cond_4

    const-wide/16 v0, -0x1

    :goto_2
    long-to-int v0, v0

    aput v0, v6, v4

    sget-object v0, Lcom/google/c/g/c;->c:[I

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v6, -0x1

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-ltz v3, :cond_2

    const-wide/16 v6, -0x1

    div-long v0, v6, v0

    goto :goto_1

    :cond_2
    const-wide v6, 0x7fffffffffffffffL

    div-long/2addr v6, v0

    const/4 v3, 0x1

    shl-long/2addr v6, v3

    const-wide/16 v8, -0x1

    mul-long v10, v6, v0

    sub-long/2addr v8, v10

    invoke-static {v8, v9, v0, v1}, Lcom/google/c/g/c;->a(JJ)I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    int-to-long v0, v0

    add-long/2addr v0, v6

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const-wide/16 v2, -0x1

    :cond_5
    :goto_4
    sub-long v0, v2, v0

    goto :goto_2

    :cond_6
    const-wide/16 v2, -0x1

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-ltz v2, :cond_7

    const-wide/16 v2, -0x1

    rem-long v0, v2, v0

    goto :goto_2

    :cond_7
    const-wide v2, 0x7fffffffffffffffL

    div-long/2addr v2, v0

    const/4 v7, 0x1

    shl-long/2addr v2, v7

    const-wide/16 v8, -0x1

    mul-long/2addr v2, v0

    sub-long v2, v8, v2

    invoke-static {v2, v3, v0, v1}, Lcom/google/c/g/c;->a(JJ)I

    move-result v7

    if-gez v7, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_4

    :cond_8
    return-void
.end method

.method private static a(JJ)I
    .locals 6

    const-wide/high16 v2, -0x8000000000000000L

    xor-long v0, p0, v2

    xor-long/2addr v2, p2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)J
    .locals 13

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/16 v12, 0xa

    invoke-static {p0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/c/g/c;->c:[I

    aget v0, v0, v12

    add-int/lit8 v7, v0, -0x1

    move-wide v0, v2

    move v4, v5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    const/4 v6, -0x1

    if-ne v8, v6, :cond_1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-le v4, v7, :cond_4

    cmp-long v6, v0, v2

    if-ltz v6, :cond_3

    sget-object v6, Lcom/google/c/g/c;->a:[J

    aget-wide v10, v6, v12

    cmp-long v6, v0, v10

    if-gez v6, :cond_2

    move v6, v5

    :goto_1
    if-eqz v6, :cond_4

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too large for unsigned long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v6, Lcom/google/c/g/c;->a:[J

    aget-wide v10, v6, v12

    cmp-long v6, v0, v10

    if-gtz v6, :cond_3

    sget-object v6, Lcom/google/c/g/c;->b:[I

    aget v6, v6, v12

    if-gt v8, v6, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const-wide/16 v10, 0xa

    mul-long/2addr v0, v10

    int-to-long v8, v8

    add-long/2addr v0, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-wide v0
.end method
