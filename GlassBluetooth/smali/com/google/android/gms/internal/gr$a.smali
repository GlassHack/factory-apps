.class Lcom/google/android/gms/internal/gr$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final Vt:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gr$a;->px:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/gr$a;->Vt:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gr$a;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public isOptedInForUsageReporting()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/gr$a;->Vt:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/gr$a;->Vt:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->getOptInUsageReporting()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
