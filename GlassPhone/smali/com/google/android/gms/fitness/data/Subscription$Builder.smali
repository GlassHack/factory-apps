.class public Lcom/google/android/gms/fitness/data/Subscription$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private CL:Lcom/google/android/gms/fitness/data/DataType;

.field private Cq:Lcom/google/android/gms/fitness/data/DataSource;

.field private Do:J

.field private Dp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Do:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Dp:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/Subscription;)V
    .locals 2
    .param p1, "toCopy"    # Lcom/google/android/gms/fitness/data/Subscription;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Do:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Dp:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Subscription;->b(Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Subscription;->c(Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->CL:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Subscription;->d(Lcom/google/android/gms/fitness/data/Subscription;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Do:J

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Subscription;->e(Lcom/google/android/gms/fitness/data/Subscription;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Dp:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/data/Subscription$Builder;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->CL:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/data/Subscription$Builder;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/fitness/data/Subscription$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Do:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/fitness/data/Subscription$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Dp:I

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/data/Subscription;
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->CL:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Must call setDataSource() or setDataType()"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->CL:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->CL:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    const-string v0, "Specified data type is incompatible with specified data source"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/data/Subscription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Subscription;-><init>(Lcom/google/android/gms/fitness/data/Subscription$Builder;Lcom/google/android/gms/fitness/data/Subscription$1;)V

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setAccuracyMode(I)Lcom/google/android/gms/fitness/data/Subscription$Builder;
    .locals 1
    .param p1, "accuracyMode"    # I

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->bV(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Dp:I

    return-object p0
.end method

.method public setDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/Subscription$Builder;
    .locals 0
    .param p1, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/Subscription$Builder;
    .locals 0
    .param p1, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->CL:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public setSamplingRate(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/Subscription$Builder;
    .locals 2
    .param p1, "interval"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription$Builder;->Do:J

    return-object p0
.end method
