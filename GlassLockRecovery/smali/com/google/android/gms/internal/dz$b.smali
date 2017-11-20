.class Lcom/google/android/gms/internal/dz$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/reporting/Reporting$ReportingUploadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final px:Lcom/google/android/gms/common/api/Status;

.field private final vh:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dz$b;->px:Lcom/google/android/gms/common/api/Status;

    iput-wide p2, p0, Lcom/google/android/gms/internal/dz$b;->vh:J

    return-void
.end method


# virtual methods
.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/dz$b;->vh:J

    return-wide v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$b;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
