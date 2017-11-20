.class public Lcom/google/android/gms/internal/dz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/reporting/Reporting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dz$b;,
        Lcom/google/android/gms/internal/dz$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/internal/dz;->dg(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/internal/dz;->dh(I)I

    move-result v0

    return v0
.end method

.method private static df(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xdb3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xdac

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xdad

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xdae

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xdaf

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static dg(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xdb1

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xdb0

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xdac

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xdb2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method private static final dh(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xdb0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic di(I)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/dz;->df(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public cancelUpload(Lcom/google/android/gms/common/api/GoogleApiClient;J)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "requestId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "J)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/dz$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/dz$4;-><init>(Lcom/google/android/gms/internal/dz;J)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public getReportingState(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/accounts/Account;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/location/reporting/Reporting$ReportingStateResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/dz$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/dz$1;-><init>(Lcom/google/android/gms/internal/dz;Landroid/accounts/Account;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public reportPlace(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "report"    # Lcom/google/android/gms/location/places/PlaceReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/accounts/Account;",
            "Lcom/google/android/gms/location/places/PlaceReport;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/dz$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/dz$5;-><init>(Lcom/google/android/gms/internal/dz;Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public requestUpload(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "request"    # Lcom/google/android/gms/location/reporting/UploadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/location/reporting/UploadRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/location/reporting/Reporting$ReportingUploadResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/dz$3;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/dz$3;-><init>(Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/location/reporting/UploadRequest;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public tryOptIn(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/accounts/Account;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/dz$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/dz$2;-><init>(Lcom/google/android/gms/internal/dz;Landroid/accounts/Account;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method
