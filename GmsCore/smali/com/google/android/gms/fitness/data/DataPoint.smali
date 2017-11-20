.class public final Lcom/google/android/gms/fitness/data/DataPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/DataSource;

.field private c:J

.field private d:J

.field private final e:[Lcom/google/android/gms/fitness/data/Value;

.field private f:Lcom/google/android/gms/fitness/data/DataSource;

.field private g:J

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 476
    new-instance v0, Lcom/google/android/gms/fitness/data/f;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;JJ[Lcom/google/android/gms/fitness/data/Value;Lcom/google/android/gms/fitness/data/DataSource;JJ)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->a:I

    .line 90
    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    .line 91
    iput-object p8, p0, Lcom/google/android/gms/fitness/data/DataPoint;->f:Lcom/google/android/gms/fitness/data/DataSource;

    .line 92
    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    .line 93
    iput-wide p5, p0, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    .line 94
    iput-object p7, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    .line 95
    iput-wide p9, p0, Lcom/google/android/gms/fitness/data/DataPoint;->g:J

    .line 96
    iput-wide p11, p0, Lcom/google/android/gms/fitness/data/DataPoint;->h:J

    .line 97
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;)V
    .locals 5

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->a:I

    .line 124
    const-string v0, "Data source cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    .line 126
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/Value;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    .line 129
    const/4 v0, 0x0

    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    .line 131
    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    new-instance v4, Lcom/google/android/gms/fitness/data/Value;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/fitness/data/Value;-><init>(I)V

    aput-object v4, v3, v1

    .line 132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 133
    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/google/android/gms/fitness/data/RawDataPoint;)V
    .locals 16

    .prologue
    .line 105
    const/4 v4, 0x4

    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->e:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->b:J

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->c:J

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->d:[Lcom/google/android/gms/fitness/data/Value;

    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->f:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->g:J

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/google/android/gms/fitness/data/RawDataPoint;->h:J

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(ILcom/google/android/gms/fitness/data/DataSource;JJ[Lcom/google/android/gms/fitness/data/Value;Lcom/google/android/gms/fitness/data/DataSource;JJ)V

    .line 113
    return-void
.end method

.method public static a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(Lcom/google/android/gms/fitness/data/DataSource;)V

    return-object v0
.end method

.method private static a(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 117
    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v3

    .line 344
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 345
    if-ne p1, v4, :cond_0

    move v0, v1

    :goto_0
    const-string v5, "Attempting to insert %s values, but needed %s: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 348
    return-void

    :cond_0
    move v0, v2

    .line 345
    goto :goto_0
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 1

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    .line 179
    return-object p0
.end method

.method public final a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 1

    .prologue
    .line 231
    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    .line 232
    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    .line 233
    return-object p0
.end method

.method public final a(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 5

    .prologue
    .line 245
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    return-object p0
.end method

.method public final varargs a([F)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 3

    .prologue
    .line 321
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->b(I)V

    .line 322
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    return-object p0
.end method

.method public final varargs a([I)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 3

    .prologue
    .line 334
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->b(I)V

    .line 335
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    return-object p0
.end method

.method public final a(I)Lcom/google/android/gms/fitness/data/Value;
    .locals 6

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 278
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 279
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "fieldIndex %s is out of range for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataType;->a(Lcom/google/android/gms/fitness/data/Field;)I

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 430
    const-string v0, "com.google.android.gms.fitness.EXTRA_DATA_POINT"

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/d;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public final a()[Lcom/google/android/gms/fitness/data/Value;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    return-object v0
.end method

.method public final b(J)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 1

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->g:J

    .line 190
    return-object p0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->f:Lcom/google/android/gms/fitness/data/DataSource;

    .line 260
    return-object p0
.end method

.method public final b()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 1

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->h:J

    .line 201
    return-object p0
.end method

.method public final c(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 14

    .prologue
    .line 439
    new-instance v1, Lcom/google/android/gms/fitness/data/DataPoint;

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    iget-wide v6, p0, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    iget-object v8, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    iget-object v9, p0, Lcom/google/android/gms/fitness/data/DataPoint;->f:Lcom/google/android/gms/fitness/data/DataSource;

    iget-wide v10, p0, Lcom/google/android/gms/fitness/data/DataPoint;->g:J

    iget-wide v12, p0, Lcom/google/android/gms/fitness/data/DataPoint;->h:J

    move-object v3, p1

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(ILcom/google/android/gms/fitness/data/DataSource;JJ[Lcom/google/android/gms/fitness/data/Value;Lcom/google/android/gms/fitness/data/DataSource;JJ)V

    return-object v1
.end method

.method public final c()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->f:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 385
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 452
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/DataPoint;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->f:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataPoint;->f:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 395
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->g:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->h:J

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 465
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 421
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    return-wide v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0x4c

    .line 485
    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 470
    const-string v0, "DataPoint{%s@[%s, %s,raw=%s,insert=%s](%s %s)}"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/DataPoint;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/DataPoint;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->f:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 500
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/f;->a(Lcom/google/android/gms/fitness/data/DataPoint;Landroid/os/Parcel;I)V

    .line 501
    return-void
.end method
