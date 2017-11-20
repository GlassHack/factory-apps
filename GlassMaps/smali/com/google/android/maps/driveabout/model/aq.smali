.class public final Lcom/google/android/maps/driveabout/model/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[F

.field private static c:Lcom/google/android/maps/driveabout/model/aq;


# instance fields
.field private final d:I

.field private final e:[I

.field private final f:[I

.field private final g:[F

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:[Lcom/google/android/maps/driveabout/model/ap;

.field private final l:Lcom/google/android/maps/driveabout/model/au;

.field private final m:Lcom/google/android/maps/driveabout/model/at;

.field private final n:Lcom/google/android/maps/driveabout/model/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 33
    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/maps/driveabout/model/aq;->a:[I

    .line 34
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/maps/driveabout/model/aq;->b:[F

    .line 35
    new-instance v0, Lcom/google/android/maps/driveabout/model/aq;

    sget-object v2, Lcom/google/android/maps/driveabout/model/aq;->a:[I

    sget-object v3, Lcom/google/android/maps/driveabout/model/aq;->a:[I

    sget-object v4, Lcom/google/android/maps/driveabout/model/aq;->b:[F

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/model/aq;-><init>(I[I[I[FII)V

    sput-object v0, Lcom/google/android/maps/driveabout/model/aq;->c:Lcom/google/android/maps/driveabout/model/aq;

    return-void
.end method

.method private constructor <init>(II[I[Lcom/google/android/maps/driveabout/model/ap;Lcom/google/android/maps/driveabout/model/au;Lcom/google/android/maps/driveabout/model/at;Lcom/google/android/maps/driveabout/model/ap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Lcom/google/android/maps/driveabout/model/aq;->d:I

    .line 211
    iput p2, p0, Lcom/google/android/maps/driveabout/model/aq;->j:I

    .line 212
    iput-object p3, p0, Lcom/google/android/maps/driveabout/model/aq;->e:[I

    .line 213
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/aq;->k:[Lcom/google/android/maps/driveabout/model/ap;

    .line 214
    iput-object p5, p0, Lcom/google/android/maps/driveabout/model/aq;->l:Lcom/google/android/maps/driveabout/model/au;

    .line 215
    iput-object p6, p0, Lcom/google/android/maps/driveabout/model/aq;->m:Lcom/google/android/maps/driveabout/model/at;

    .line 216
    iput-object p7, p0, Lcom/google/android/maps/driveabout/model/aq;->n:Lcom/google/android/maps/driveabout/model/ap;

    .line 219
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/aq;->f:[I

    .line 220
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/aq;->g:[F

    .line 221
    iput v0, p0, Lcom/google/android/maps/driveabout/model/aq;->h:I

    .line 222
    iput v0, p0, Lcom/google/android/maps/driveabout/model/aq;->i:I

    .line 223
    return-void
.end method

.method private constructor <init>(I[I[I[FII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput p1, p0, Lcom/google/android/maps/driveabout/model/aq;->d:I

    .line 235
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/aq;->e:[I

    .line 236
    iput-object p3, p0, Lcom/google/android/maps/driveabout/model/aq;->f:[I

    .line 237
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/aq;->g:[F

    .line 238
    iput p5, p0, Lcom/google/android/maps/driveabout/model/aq;->h:I

    .line 239
    iput p6, p0, Lcom/google/android/maps/driveabout/model/aq;->i:I

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/model/aq;->j:I

    .line 243
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/aq;->k:[Lcom/google/android/maps/driveabout/model/ap;

    .line 244
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/aq;->l:Lcom/google/android/maps/driveabout/model/au;

    .line 245
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/aq;->m:Lcom/google/android/maps/driveabout/model/at;

    .line 246
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/aq;->n:Lcom/google/android/maps/driveabout/model/ap;

    .line 247
    return-void
.end method

.method public static a()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/google/android/maps/driveabout/model/aq;->c:Lcom/google/android/maps/driveabout/model/aq;

    return-object v0
.end method

.method public static a(ILjava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/aq;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    const/16 v2, 0x9

    if-ge p2, v2, :cond_5

    .line 83
    invoke-static {p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 84
    if-lez v3, :cond_0

    new-array v2, v3, [I

    :goto_0
    move v0, v1

    .line 86
    :goto_1
    if-ge v0, v3, :cond_1

    .line 87
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    aput v4, v2, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_0
    sget-object v2, Lcom/google/android/maps/driveabout/model/aq;->a:[I

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 92
    if-lez v0, :cond_2

    new-array v3, v0, [I

    .line 94
    :goto_2
    if-lez v0, :cond_3

    new-array v4, v0, [F

    .line 96
    :goto_3
    if-ge v1, v0, :cond_4

    .line 97
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    aput v5, v3, v1

    .line 98
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/maps/driveabout/model/z;->a(I)F

    move-result v5

    aput v5, v4, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 92
    :cond_2
    sget-object v3, Lcom/google/android/maps/driveabout/model/aq;->a:[I

    goto :goto_2

    .line 94
    :cond_3
    sget-object v4, Lcom/google/android/maps/driveabout/model/aq;->b:[F

    goto :goto_3

    .line 102
    :cond_4
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 103
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    .line 105
    new-instance v0, Lcom/google/android/maps/driveabout/model/aq;

    move v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/model/aq;-><init>(I[I[I[FII)V

    .line 149
    :goto_4
    return-object v0

    .line 110
    :cond_5
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 114
    invoke-static {v2}, Lcom/google/android/maps/driveabout/model/aq;->d(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    invoke-static {p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v5

    .line 116
    new-array v3, v5, [I

    move v4, v1

    .line 117
    :goto_5
    if-ge v4, v5, :cond_7

    .line 118
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    aput v6, v3, v4

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    move-object v3, v0

    .line 124
    :cond_7
    invoke-static {v2}, Lcom/google/android/maps/driveabout/model/aq;->e(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 125
    invoke-static {p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v5

    .line 126
    new-array v4, v5, [Lcom/google/android/maps/driveabout/model/ap;

    .line 127
    :goto_6
    if-ge v1, v5, :cond_9

    .line 128
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/model/ap;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/ap;

    move-result-object v6

    aput-object v6, v4, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    move-object v4, v0

    .line 134
    :cond_9
    invoke-static {v2}, Lcom/google/android/maps/driveabout/model/aq;->f(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 135
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/model/au;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/au;

    move-result-object v5

    .line 140
    :goto_7
    invoke-static {v2}, Lcom/google/android/maps/driveabout/model/aq;->g(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 141
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/model/at;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/at;

    move-result-object v6

    .line 146
    :goto_8
    invoke-static {v2}, Lcom/google/android/maps/driveabout/model/aq;->h(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 147
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/model/ap;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/ap;

    move-result-object v7

    .line 149
    :goto_9
    new-instance v0, Lcom/google/android/maps/driveabout/model/aq;

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/model/aq;-><init>(II[I[Lcom/google/android/maps/driveabout/model/ap;Lcom/google/android/maps/driveabout/model/au;Lcom/google/android/maps/driveabout/model/at;Lcom/google/android/maps/driveabout/model/ap;)V

    goto :goto_4

    :cond_a
    move-object v7, v0

    goto :goto_9

    :cond_b
    move-object v6, v0

    goto :goto_8

    :cond_c
    move-object v5, v0

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 428
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    if-nez p1, :cond_0

    .line 430
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    :goto_0
    return-void

    .line 433
    :cond_0
    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const/4 v0, 0x1

    .line 435
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, p1, v2

    .line 436
    if-eqz v0, :cond_1

    move v0, v1

    .line 441
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 439
    :cond_1
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 443
    :cond_2
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static d(I)Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static e(I)Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aq;->j:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(I)Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static g(I)Z
    .locals 1

    .prologue
    .line 330
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static h(I)Z
    .locals 1

    .prologue
    .line 334
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/aq;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->k:[Lcom/google/android/maps/driveabout/model/ap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ap;->b()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->g:[F

    aget v0, v0, p1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/aq;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->k:[Lcom/google/android/maps/driveabout/model/ap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->k:[Lcom/google/android/maps/driveabout/model/ap;

    array-length v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->f:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public final b(I)I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->e:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->e:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public final c(I)Lcom/google/android/maps/driveabout/model/ap;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->k:[Lcom/google/android/maps/driveabout/model/ap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->k:[Lcom/google/android/maps/driveabout/model/ap;

    array-length v0, v0

    return v0
.end method

.method public final e()Lcom/google/android/maps/driveabout/model/au;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->l:Lcom/google/android/maps/driveabout/model/au;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 454
    if-ne p0, p1, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 455
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 457
    :cond_3
    check-cast p1, Lcom/google/android/maps/driveabout/model/aq;

    .line 458
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->n:Lcom/google/android/maps/driveabout/model/ap;

    if-nez v2, :cond_4

    .line 459
    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/aq;->n:Lcom/google/android/maps/driveabout/model/ap;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 460
    :cond_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->n:Lcom/google/android/maps/driveabout/model/ap;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/aq;->n:Lcom/google/android/maps/driveabout/model/ap;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 461
    :cond_5
    iget v2, p0, Lcom/google/android/maps/driveabout/model/aq;->j:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/aq;->j:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 462
    :cond_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->e:[I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/aq;->e:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 463
    :cond_7
    iget v2, p0, Lcom/google/android/maps/driveabout/model/aq;->d:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/aq;->d:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    .line 464
    :cond_8
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->f:[I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/aq;->f:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 465
    :cond_9
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->g:[F

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/aq;->g:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 466
    :cond_a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->k:[Lcom/google/android/maps/driveabout/model/ap;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/aq;->k:[Lcom/google/android/maps/driveabout/model/ap;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    .line 467
    :cond_b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->m:Lcom/google/android/maps/driveabout/model/at;

    if-nez v2, :cond_c

    .line 468
    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/aq;->m:Lcom/google/android/maps/driveabout/model/at;

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 469
    :cond_c
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->m:Lcom/google/android/maps/driveabout/model/at;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/aq;->m:Lcom/google/android/maps/driveabout/model/at;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/at;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 470
    :cond_d
    iget v2, p0, Lcom/google/android/maps/driveabout/model/aq;->h:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/aq;->h:I

    if-eq v2, v3, :cond_e

    move v0, v1

    goto/16 :goto_0

    .line 471
    :cond_e
    iget v2, p0, Lcom/google/android/maps/driveabout/model/aq;->i:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/aq;->i:I

    if-eq v2, v3, :cond_f

    move v0, v1

    goto/16 :goto_0

    .line 472
    :cond_f
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->l:Lcom/google/android/maps/driveabout/model/au;

    if-nez v2, :cond_10

    .line 473
    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/aq;->l:Lcom/google/android/maps/driveabout/model/au;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 474
    :cond_10
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->l:Lcom/google/android/maps/driveabout/model/au;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/aq;->l:Lcom/google/android/maps/driveabout/model/au;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/au;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 384
    .line 386
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->n:Lcom/google/android/maps/driveabout/model/ap;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 387
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/model/aq;->j:I

    add-int/2addr v0, v2

    .line 388
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->e:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 389
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/model/aq;->d:I

    add-int/2addr v0, v2

    .line 390
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->f:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 391
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->g:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    .line 392
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->k:[Lcom/google/android/maps/driveabout/model/ap;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 393
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->m:Lcom/google/android/maps/driveabout/model/at;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 394
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/model/aq;->h:I

    add-int/2addr v0, v2

    .line 395
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/maps/driveabout/model/aq;->i:I

    add-int/2addr v0, v2

    .line 396
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->l:Lcom/google/android/maps/driveabout/model/au;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 397
    return v0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->n:Lcom/google/android/maps/driveabout/model/ap;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ap;->hashCode()I

    move-result v0

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->m:Lcom/google/android/maps/driveabout/model/at;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/at;->hashCode()I

    move-result v0

    goto :goto_1

    .line 396
    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/aq;->l:Lcom/google/android/maps/driveabout/model/au;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/au;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    const-string v0, "Style{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "id="

    .line 404
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/model/aq;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v0, "fillColors"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->e:[I

    invoke-static {v0, v2, v1}, Lcom/google/android/maps/driveabout/model/aq;->a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V

    .line 406
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v0, "strokeColors"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->f:[I

    invoke-static {v0, v2, v1}, Lcom/google/android/maps/driveabout/model/aq;->a(Ljava/lang/String;[ILjava/lang/StringBuilder;)V

    .line 408
    const-string v0, ", strokeWidths="

    .line 409
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->g:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textColor="

    .line 410
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/model/aq;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textSize="

    .line 411
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/model/aq;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", components="

    .line 412
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/model/aq;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", strokes="

    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->k:[Lcom/google/android/maps/driveabout/model/ap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textStyle="

    .line 414
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->l:Lcom/google/android/maps/driveabout/model/au;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", textBoxStyle="

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->m:Lcom/google/android/maps/driveabout/model/at;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", arrowStyle="

    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/aq;->n:Lcom/google/android/maps/driveabout/model/ap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x7d

    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aq;->k:[Lcom/google/android/maps/driveabout/model/ap;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
