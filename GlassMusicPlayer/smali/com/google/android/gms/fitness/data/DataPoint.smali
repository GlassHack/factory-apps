.class public final Lcom/google/android/gms/fitness/data/DataPoint;
.super Ljava/lang/Object;

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

    new-instance v0, Lcom/google/android/gms/fitness/data/g;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;JJ[Lcom/google/android/gms/fitness/data/Value;Lcom/google/android/gms/fitness/data/DataSource;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataPoint;->a:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/DataPoint;->f:Lcom/google/android/gms/fitness/data/DataSource;

    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    iput-wide p5, p0, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    iput-wide p9, p0, Lcom/google/android/gms/fitness/data/DataPoint;->g:J

    iput-wide p11, p0, Lcom/google/android/gms/fitness/data/DataPoint;->h:J

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/google/android/gms/fitness/data/RawDataPoint;)V
    .locals 13

    const/4 v1, 0x4

    iget v0, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->e:I

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    iget-wide v3, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->b:J

    iget-wide v5, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->c:J

    iget-object v7, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->d:[Lcom/google/android/gms/fitness/data/Value;

    iget v0, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->f:I

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v8

    iget-wide v9, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->g:J

    iget-wide v11, p2, Lcom/google/android/gms/fitness/data/RawDataPoint;->h:J

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/fitness/data/DataPoint;-><init>(ILcom/google/android/gms/fitness/data/DataSource;JJ[Lcom/google/android/gms/fitness/data/Value;Lcom/google/android/gms/fitness/data/DataSource;JJ)V

    return-void
.end method

.method private static a(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

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

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->f:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataPoint;->f:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()[Lcom/google/android/gms/fitness/data/Value;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->b:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->f:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    return-wide v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->g:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/DataPoint;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

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

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->h:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    return-wide v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataPoint;->a:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

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

    invoke-static {v0}, Lcom/google/android/gms/common/internal/g;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "DataPoint{%s@[%s, %s,raw=%s,insert=%s](%s %s)}"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->e:[Lcom/google/android/gms/fitness/data/Value;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/DataPoint;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/g;->a(Lcom/google/android/gms/fitness/data/DataPoint;Landroid/os/Parcel;I)V

    return-void
.end method
