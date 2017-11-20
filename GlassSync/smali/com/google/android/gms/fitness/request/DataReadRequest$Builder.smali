.class public Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataReadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private CA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private CD:I

.field private Cr:J

.field private Ef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private Ej:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private Ek:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private El:J

.field private Em:Lcom/google/android/gms/fitness/data/DataSource;

.field private En:I

.field private Eo:Z

.field private Ep:Z

.field private Eq:Z

.field private zf:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CA:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ef:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ej:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ek:Ljava/util/List;

    iput v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->El:J

    iput v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->En:I

    iput-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Eo:Z

    iput-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ep:Z

    iput-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Eq:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CA:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ef:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zf:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Cr:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ej:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ek:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->El:J

    return-wide v0
.end method

.method static synthetic i(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Em:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->En:I

    return v0
.end method

.method static synthetic k(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Eo:Z

    return v0
.end method

.method static synthetic l(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ep:Z

    return v0
.end method

.method static synthetic m(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Eq:Z

    return v0
.end method


# virtual methods
.method public aggregate(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 6
    .param p1, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;
    .param p2, "outputDataType"    # Lcom/google/android/gms/fitness/data/DataType;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "Attempting to add a null data source"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ef:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Cannot add the same data source for aggregated and detailed"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/data/AggregateDataTypes;->INPUT_TYPES:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Unsupported input data type specified for aggregation: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/AggregateDataTypes;->getForInput(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Invalid output aggregate data type specified: %s -> %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    aput-object p2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ek:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ek:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public aggregate(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 5
    .param p1, "inputDataType"    # Lcom/google/android/gms/fitness/data/DataType;
    .param p2, "outputDataType"    # Lcom/google/android/gms/fitness/data/DataType;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "Attempting to use a null data type"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CA:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Cannot add the same data type as aggregated and detailed"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/fitness/data/AggregateDataTypes;->INPUT_TYPES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Unsupported input data type specified for aggregation: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/AggregateDataTypes;->getForInput(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Invalid output aggregate data type specified: %s -> %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ej:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ej:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public bucketByActivitySegment(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 6
    .param p1, "minDuration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Bucketing strategy already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Must specify a valid minimum duration for an activity segment: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->El:J

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public bucketByActivitySegment(ILjava/util/concurrent/TimeUnit;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 6
    .param p1, "minDuration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "activityDataSource"    # Lcom/google/android/gms/fitness/data/DataSource;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Bucketing strategy already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Must specify a valid minimum duration for an activity segment: %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "Invalid activity data source specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    invoke-virtual {p3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/data/DataTypes;->ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Invalid activity data source specified: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Em:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->El:J

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public bucketByActivityType(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 6
    .param p1, "minDuration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Bucketing strategy already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Must specify a valid minimum duration for an activity segment: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->El:J

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public bucketByActivityType(ILjava/util/concurrent/TimeUnit;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 6
    .param p1, "minDuration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "activityDataSource"    # Lcom/google/android/gms/fitness/data/DataSource;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Bucketing strategy already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Must specify a valid minimum duration for an activity segment: %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "Invalid activity data source specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    invoke-virtual {p3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/data/DataTypes;->ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Invalid activity data source specified: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Em:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->El:J

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public bucketBySession(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 6
    .param p1, "minDuration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Bucketing strategy already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Must specify a valid minimum duration for an activity segment: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->El:J

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public bucketByTime(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 6
    .param p1, "duration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Bucketing strategy already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Must specify a valid minimum duration for an activity segment: %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->El:J

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public build()Lcom/google/android/gms/fitness/request/DataReadRequest;
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ef:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ek:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ej:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Must add at least one data source (aggregated or detailed)"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zf:J

    cmp-long v0, v3, v7

    if-lez v0, :cond_4

    move v0, v2

    :goto_1
    const-string v3, "Invalid start time: %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zf:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Cr:J

    cmp-long v0, v3, v7

    if-lez v0, :cond_5

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Cr:J

    iget-wide v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zf:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    move v0, v2

    :goto_2
    const-string v3, "Invalid end time: %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Cr:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ek:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ej:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_3
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    if-eqz v3, :cond_2

    :cond_1
    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CD:I

    if-eqz v0, :cond_7

    :cond_2
    :goto_4
    const-string v0, "Must specify a valid bucketing strategy while requesting aggregation"

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/request/DataReadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;Lcom/google/android/gms/fitness/request/DataReadRequest$1;)V

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_4
.end method

.method public disableTransformations()Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Eo:Z

    return-object p0
.end method

.method public enableServerQueries()Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Eq:Z

    return-object p0
.end method

.method public enableTransformations()Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Eo:Z

    return-object p0
.end method

.method public flushBufferBeforeRead()Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ep:Z

    return-object p0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 2
    .param p1, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;

    .prologue
    const-string v0, "Attempting to add a null data source"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ek:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot add the same data source as aggregated and detailed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ef:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ef:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 2
    .param p1, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;

    .prologue
    const-string v0, "Attempting to use a null data type"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Ej:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot add the same data type as aggregated and detailed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CA:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->CA:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLimit(I)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 1
    .param p1, "limit"    # I

    .prologue
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->j(Z)V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->En:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTimeRange(JJ)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 0
    .param p1, "startTimeMillis"    # J
    .param p3, "endTimeMillis"    # J

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zf:J

    iput-wide p3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->Cr:J

    return-object p0
.end method
