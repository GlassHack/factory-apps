.class public Lcom/google/android/gms/location/reporting/UploadRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/reporting/UploadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final IM:Landroid/accounts/Account;

.field private final IX:Ljava/lang/String;

.field private final IY:J

.field private Jb:Ljava/lang/String;

.field private Jc:J

.field private Jd:J


# direct methods
.method private constructor <init>(Landroid/accounts/Account;Ljava/lang/String;J)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "durationMillis"    # J

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->Jc:J

    iput-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->Jd:J

    const-string v0, "account"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->IM:Landroid/accounts/Account;

    const-string v0, "reason"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->IX:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->IY:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/accounts/Account;Ljava/lang/String;JLcom/google/android/gms/location/reporting/UploadRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/accounts/Account;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcom/google/android/gms/location/reporting/UploadRequest$1;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;-><init>(Landroid/accounts/Account;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->IM:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->IX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->IY:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->Jc:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->Jd:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->Jb:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public appSpecificKey(Ljava/lang/String;)Lcom/google/android/gms/location/reporting/UploadRequest$Builder;
    .locals 0
    .param p1, "appSpecificKey"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->Jb:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/google/android/gms/location/reporting/UploadRequest;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/reporting/UploadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/location/reporting/UploadRequest;-><init>(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;Lcom/google/android/gms/location/reporting/UploadRequest$1;)V

    return-object v0
.end method

.method public latencyMillis(J)Lcom/google/android/gms/location/reporting/UploadRequest$Builder;
    .locals 1
    .param p1, "latencyMillis"    # J

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->movingLatencyMillis(J)Lcom/google/android/gms/location/reporting/UploadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->stationaryLatencyMillis(J)Lcom/google/android/gms/location/reporting/UploadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public movingLatencyMillis(J)Lcom/google/android/gms/location/reporting/UploadRequest$Builder;
    .locals 0
    .param p1, "latencyMillis"    # J

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->Jc:J

    return-object p0
.end method

.method public stationaryLatencyMillis(J)Lcom/google/android/gms/location/reporting/UploadRequest$Builder;
    .locals 0
    .param p1, "latencyMillis"    # J

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->Jd:J

    return-object p0
.end method
