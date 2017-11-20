.class public final Lcom/google/android/gms/fitness/data/RawBucket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:J

.field final c:J

.field final d:Lcom/google/android/gms/fitness/data/Session;

.field final e:I

.field final f:Ljava/util/List;

.field final g:I

.field final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/google/android/gms/fitness/data/r;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/RawBucket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;IZ)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/android/gms/fitness/data/RawBucket;->a:I

    .line 47
    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->b:J

    .line 48
    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/RawBucket;->c:J

    .line 49
    iput-object p6, p0, Lcom/google/android/gms/fitness/data/RawBucket;->d:Lcom/google/android/gms/fitness/data/Session;

    .line 50
    iput p7, p0, Lcom/google/android/gms/fitness/data/RawBucket;->e:I

    .line 51
    iput-object p8, p0, Lcom/google/android/gms/fitness/data/RawBucket;->f:Ljava/util/List;

    .line 52
    iput p9, p0, Lcom/google/android/gms/fitness/data/RawBucket;->g:I

    .line 53
    iput-boolean p10, p0, Lcom/google/android/gms/fitness/data/RawBucket;->h:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/Bucket;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->a:I

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->b:J

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->c:J

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->c()Lcom/google/android/gms/fitness/data/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->d:Lcom/google/android/gms/fitness/data/Session;

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->d()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->e:I

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->g:I

    .line 70
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/RawBucket;->h:Z

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Bucket;->e()Ljava/util/List;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/data/RawBucket;->f:Ljava/util/List;

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    .line 75
    iget-object v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->f:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/fitness/data/RawDataSet;

    invoke-direct {v3, v0, p2, p3}, Lcom/google/android/gms/fitness/data/RawDataSet;-><init>(Lcom/google/android/gms/fitness/data/DataSet;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/RawBucket;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/RawBucket;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/RawBucket;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/RawBucket;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->e:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/RawBucket;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/RawBucket;->f:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->g:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/RawBucket;->g:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->h:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/data/RawBucket;->h:Z

    if-ne v2, v3, :cond_2

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

.method public final hashCode()I
    .locals 4

    .prologue
    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "activity"

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataSets"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->f:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "bucketType"

    iget v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "serverHasMoreData"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/RawBucket;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 119
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/r;->a(Lcom/google/android/gms/fitness/data/RawBucket;Landroid/os/Parcel;I)V

    .line 120
    return-void
.end method
