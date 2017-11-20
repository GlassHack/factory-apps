.class public final Lcom/google/android/maps/driveabout/model/az;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[I

.field private final b:[I


# direct methods
.method private constructor <init>([I[I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    .line 36
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/az;->b:[I

    .line 37
    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/az;
    .locals 4

    .prologue
    .line 80
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 81
    rem-int/lit8 v0, v1, 0x3

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Malformed TriangleList, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vertices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    mul-int/lit8 v0, v1, 0x3

    new-array v2, v0, [I

    .line 86
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 87
    invoke-static {p0, p1, v2, v0}, Lcom/google/android/maps/driveabout/model/ab;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;[II)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/model/az;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/model/az;-><init>([I[I)V

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;I)Lcom/google/android/maps/driveabout/model/az;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 104
    rem-int/lit8 v0, v2, 0x3

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Malformed TriangleList, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vertices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    mul-int/lit8 v0, v2, 0x3

    new-array v3, v0, [I

    move v0, v1

    .line 109
    :goto_0
    if-ge v0, v2, :cond_1

    .line 110
    invoke-static {p0, p1, v3, v0}, Lcom/google/android/maps/driveabout/model/ab;->b(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;[II)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    .line 113
    const/16 v2, 0x9

    if-ne p2, v2, :cond_2

    .line 114
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 115
    new-array v0, v2, [I

    .line 116
    :goto_1
    if-ge v1, v2, :cond_2

    .line 117
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v0, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    :cond_2
    new-instance v1, Lcom/google/android/maps/driveabout/model/az;

    invoke-direct {v1, v3, v0}, Lcom/google/android/maps/driveabout/model/az;-><init>([I[I)V

    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x9

    return v0
.end method

.method public final a(ILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 3

    .prologue
    .line 207
    mul-int/lit8 v0, p1, 0x9

    .line 208
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    iget v1, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 209
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v0, v2

    iput v0, p3, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 210
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Lcom/google/android/maps/driveabout/model/ab;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 211
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v2

    iput v0, p4, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 212
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v0, v1

    iput v0, p4, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 213
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lcom/google/android/maps/driveabout/model/ab;->c:I

    sub-int/2addr v0, v2

    iput v0, p4, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 214
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    iput v0, p5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 215
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v0, v2

    iput v0, p5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 216
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    aget v0, v0, v1

    iget v1, p2, Lcom/google/android/maps/driveabout/model/ab;->c:I

    sub-int/2addr v0, v1

    iput v0, p5, Lcom/google/android/maps/driveabout/model/ab;->c:I

    .line 217
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 221
    instance-of v1, p1, Lcom/google/android/maps/driveabout/model/az;

    if-eqz v1, :cond_0

    .line 222
    check-cast p1, Lcom/google/android/maps/driveabout/model/az;

    .line 223
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/az;->a:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/az;->b:[I

    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/az;->b:[I

    .line 224
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 226
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/az;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/az;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
