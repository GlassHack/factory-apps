.class public final Lcom/google/android/gms/fitness/data/DataPoint;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CF:J

.field private CG:J

.field private final CH:[Lcom/google/android/gms/fitness/data/Value;

.field private CI:Lcom/google/android/gms/fitness/data/DataSource;

.field private CJ:J

.field private CK:J

.field private final Cq:Lcom/google/android/gms/fitness/data/DataSource;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/d;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;JJ[Lcom/google/android/gms/fitness/data/Value;Lcom/google/android/gms/fitness/data/DataSource;JJ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;
    .param p3, "timestampNanos"    # J
    .param p5, "startTimeNanos"    # J
    .param p7, "values"    # [Lcom/google/android/gms/fitness/data/Value;
    .param p8, "originalDataSource"    # Lcom/google/android/gms/fitness/data/DataSource;
    .param p9, "rawTimestamp"    # J
    .param p11, "insertionTimeMillis"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CI:Lcom/google/android/gms/fitness/data/DataSource;

    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CF:J

    iput-wide p5, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CG:J

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CH:[Lcom/google/android/gms/fitness/data/Value;

    iput-wide p9, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CJ:J

    iput-wide p11, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CK:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;)V
    .locals 5
    .param p1, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->mVersionCode:I

    const-string v0, "Data source cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/Value;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CH:[Lcom/google/android/gms/fitness/data/Value;

    const/4 v0, 0x0

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

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CH:[Lcom/google/android/gms/fitness/data/Value;

    new-instance v4, Lcom/google/android/gms/fitness/data/Value;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->getFormat()I

    move-result v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/fitness/data/Value;-><init>(I)V

    aput-object v4, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/google/android/gms/fitness/data/RawDataPoint;)V
    .locals 13
    .param p2, "rawDataPoint"    # Lcom/google/android/gms/fitness/data/RawDataPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;",
            "Lcom/google/android/gms/fitness/data/RawDataPoint;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "dataSources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/fitness/data/DataSource;>;"
    const/4 v1, 0x4

    iget v0, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->Dh:I

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    iget-wide v3, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->CF:J

    iget-wide v5, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->CG:J

    iget-object v7, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->CH:[Lcom/google/android/gms/fitness/data/Value;

    iget v0, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->Di:I

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v8

    iget-wide v9, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->CJ:J

    iget-wide v11, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->CK:J

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(ILcom/google/android/gms/fitness/data/DataSource;JJ[Lcom/google/android/gms/fitness/data/Value;Lcom/google/android/gms/fitness/data/DataSource;JJ)V

    return-void
.end method

.method private static a(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;I)",
            "Lcom/google/android/gms/fitness/data/DataSource;"
        }
    .end annotation

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

.method private a(Lcom/google/android/gms/fitness/data/DataPoint;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataPoint;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CF:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/DataPoint;->CF:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CG:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/DataPoint;->CG:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CH:[Lcom/google/android/gms/fitness/data/Value;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataPoint;->CH:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CI:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataPoint;->CI:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bw(I)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

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

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static create(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 1
    .param p0, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(Lcom/google/android/gms/fitness/data/DataSource;)V

    return-object v0
.end method

.method public static extract(Landroid/content/Intent;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.fitness.EXTRA_DATA_POINT"

    sget-object v1, Lcom/google/android/gms/fitness/data/DataPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/DataPoint;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    return-object v0
.end method

.method public getEndTimeNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CF:J

    return-wide v0
.end method

.method public getInsertionTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CK:J

    return-wide v0
.end method

.method public getOriginalDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CI:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getRawTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CJ:J

    return-wide v0
.end method

.method public getStartTimeNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CG:J

    return-wide v0
.end method

.method public getTimestampNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CF:J

    return-wide v0
.end method

.method public getValue(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;
    .locals 2
    .param p1, "field"    # Lcom/google/android/gms/fitness/data/Field;

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataType;->indexOf(Lcom/google/android/gms/fitness/data/Field;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CH:[Lcom/google/android/gms/fitness/data/Value;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getValues()[Lcom/google/android/gms/fitness/data/Value;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CH:[Lcom/google/android/gms/fitness/data/Value;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CF:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CG:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public varargs setFloatValues([F)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 3
    .param p1, "values"    # [F

    .prologue
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->bw(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CH:[Lcom/google/android/gms/fitness/data/Value;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/Value;->setFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs setIntValues([I)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 3
    .param p1, "values"    # [I

    .prologue
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->bw(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CH:[Lcom/google/android/gms/fitness/data/Value;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/Value;->setInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setOriginalDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 0
    .param p1, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CI:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 4
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeIntervalNanos(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    return-object v0
.end method

.method public setTimeIntervalNanos(JJ)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 0
    .param p1, "startTimeNanos"    # J
    .param p3, "endTimeNanos"    # J

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CG:J

    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CF:J

    return-object p0
.end method

.method public setTimestamp(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 2
    .param p1, "timestamp"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimestampNanos(J)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    return-object v0
.end method

.method public setTimestampNanos(J)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 0
    .param p1, "timestampNanos"    # J

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CF:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "DataPoint{%s@[%s, %s,raw=%s,insert=%s](%s %s)}"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CH:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CG:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CF:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CJ:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CK:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->CI:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/d;->a(Lcom/google/android/gms/fitness/data/DataPoint;Landroid/os/Parcel;I)V

    return-void
.end method
