.class public final Lcom/google/android/maps/driveabout/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/maps/driveabout/f/f;

.field private static final b:[Lcom/google/android/maps/driveabout/f/a;


# instance fields
.field private final c:I

.field private final d:J

.field private final e:[Lcom/google/android/maps/driveabout/f/f;

.field private final f:Lcom/google/android/maps/driveabout/model/ag;

.field private final g:I

.field private h:[Lcom/google/android/maps/driveabout/f/a;

.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/google/android/maps/driveabout/f/f;

    const-string v1, "Unknown Road"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/f/f;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/maps/driveabout/f/e;->a:Lcom/google/android/maps/driveabout/f/f;

    .line 24
    new-array v0, v3, [Lcom/google/android/maps/driveabout/f/a;

    sput-object v0, Lcom/google/android/maps/driveabout/f/e;->b:[Lcom/google/android/maps/driveabout/f/a;

    return-void
.end method

.method public constructor <init>(J[Lcom/google/android/maps/driveabout/f/f;Lcom/google/android/maps/driveabout/model/ag;IIII)V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    array-length v0, p3

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Segments must have at least one name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iput p5, p0, Lcom/google/android/maps/driveabout/f/e;->c:I

    .line 152
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/f/e;->d:J

    .line 153
    iput-object p3, p0, Lcom/google/android/maps/driveabout/f/e;->e:[Lcom/google/android/maps/driveabout/f/f;

    .line 154
    iput-object p4, p0, Lcom/google/android/maps/driveabout/f/e;->f:Lcom/google/android/maps/driveabout/model/ag;

    .line 155
    iput p6, p0, Lcom/google/android/maps/driveabout/f/e;->g:I

    .line 156
    sget-object v0, Lcom/google/android/maps/driveabout/f/e;->b:[Lcom/google/android/maps/driveabout/f/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->h:[Lcom/google/android/maps/driveabout/f/a;

    .line 157
    iput p7, p0, Lcom/google/android/maps/driveabout/f/e;->i:I

    .line 158
    iput p8, p0, Lcom/google/android/maps/driveabout/f/e;->j:I

    .line 159
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/aw;I)J
    .locals 5

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/google/android/maps/driveabout/f/e;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/maps/driveabout/f/a;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->h:[Lcom/google/android/maps/driveabout/f/a;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(ILcom/google/android/maps/driveabout/model/ab;)V
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/google/android/maps/driveabout/f/e;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->f:Lcom/google/android/maps/driveabout/model/ag;

    .line 230
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->f:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 232
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->f:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/maps/driveabout/f/e;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 242
    return-void
.end method

.method public final varargs a([Lcom/google/android/maps/driveabout/f/a;)V
    .locals 1

    .prologue
    .line 198
    array-length v0, p1

    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lcom/google/android/maps/driveabout/f/e;->b:[Lcom/google/android/maps/driveabout/f/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->h:[Lcom/google/android/maps/driveabout/f/a;

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/e;->h:[Lcom/google/android/maps/driveabout/f/a;

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/google/android/maps/driveabout/f/e;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lcom/google/android/maps/driveabout/f/e;)Z
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lcom/google/android/maps/driveabout/f/e;->c:I

    and-int/lit8 v0, v0, 0x4

    iget v1, p1, Lcom/google/android/maps/driveabout/f/e;->c:I

    and-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->f:Lcom/google/android/maps/driveabout/model/ag;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/f/e;->f:Lcom/google/android/maps/driveabout/model/ag;

    .line 271
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/f/e;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 224
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/google/android/maps/driveabout/f/e;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->h:[Lcom/google/android/maps/driveabout/f/a;

    array-length v0, v0

    return v0
.end method

.method public final c(I)Lcom/google/android/maps/driveabout/f/f;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->e:[Lcom/google/android/maps/driveabout/f/f;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final d()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->f:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->f:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 308
    instance-of v1, p1, Lcom/google/android/maps/driveabout/f/e;

    if-nez v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/f/e;->d:J

    check-cast p1, Lcom/google/android/maps/driveabout/f/e;

    iget-wide v3, p1, Lcom/google/android/maps/driveabout/f/e;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/google/android/maps/driveabout/f/e;->i:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/google/android/maps/driveabout/f/e;->j:I

    return v0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const-wide/16 v5, 0xff

    .line 301
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/f/e;->d:J

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    and-long/2addr v0, v5

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/f/e;->d:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/f/e;->d:J

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    const-string v1, "[name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/e;->e:[Lcom/google/android/maps/driveabout/f/f;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, " unroutable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/f/e;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, " leaves-region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/e;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, " enters-region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/e;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, " num-points: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/e;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, " first-point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, " last-point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/e;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, " num-arcs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/e;->h:[Lcom/google/android/maps/driveabout/f/a;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
