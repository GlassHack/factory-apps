.class public Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/SessionInsertRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private CC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation
.end field

.field private Ct:Lcom/google/android/gms/fitness/data/Session;

.field private EG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private EH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->CC:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->EG:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->EH:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;)Lcom/google/android/gms/fitness/data/Session;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->Ct:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->CC:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->EG:Ljava/util/List;

    return-object v0
.end method

.method private c(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 11

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->Ct:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Session;->getStartTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->Ct:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Session;->getEndTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestampNanos()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_0

    cmp-long v0, v5, v1

    if-ltz v0, :cond_2

    cmp-long v0, v5, v3

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v5, "Data point %s has time stamp outside session interval [%d, %d]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTimeNanos()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTimeNanos()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-eqz v0, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_1

    cmp-long v0, v5, v1

    if-ltz v0, :cond_3

    cmp-long v0, v7, v3

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    const-string v5, "Data point %s has start and end times outside session interval [%d, %d]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private eh()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->CC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->c(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->EG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->c(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addAggregateDataPoint(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .locals 9
    .param p1, "aggregateDataPoint"    # Lcom/google/android/gms/fitness/data/DataPoint;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must specify a valid aggregate data point."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTimeNanos()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTimeNanos()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_1

    cmp-long v0, v5, v3

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Aggregate data point should have valid start and end times: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->EH:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    const-string v4, "Data set/Aggregate data point for this data source %s is already added."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->EH:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->EG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

.method public addDataSet(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .locals 6
    .param p1, "dataSet"    # Lcom/google/android/gms/fitness/data/DataSet;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must specify a valid data set."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->EH:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v4, "Data set for this data source %s is already added."

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    const-string v0, "No data points specified in the input data set."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->EH:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->CC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public build()Lcom/google/android/gms/fitness/request/SessionInsertRequest;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->Ct:Lcom/google/android/gms/fitness/data/Session;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must specify a valid session."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->Ct:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Session;->getEndTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    :goto_1
    const-string v0, "Must specify a valid end time, cannot insert a continuing session."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->eh()V

    new-instance v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;-><init>(Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;Lcom/google/android/gms/fitness/request/SessionInsertRequest$1;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setSession(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .locals 0
    .param p1, "session"    # Lcom/google/android/gms/fitness/data/Session;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->Ct:Lcom/google/android/gms/fitness/data/Session;

    return-object p0
.end method
