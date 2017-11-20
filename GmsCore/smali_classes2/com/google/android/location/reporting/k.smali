.class final Lcom/google/android/location/reporting/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/fused/t;


# instance fields
.field final synthetic a:Lcom/google/android/location/reporting/LocationReportingController;


# direct methods
.method constructor <init>(Lcom/google/android/location/reporting/LocationReportingController;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/android/location/reporting/k;->a:Lcom/google/android/location/reporting/LocationReportingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/LocationStatus;)V
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/google/android/location/reporting/service/y;->M:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/android/location/reporting/k;->a:Lcom/google/android/location/reporting/LocationReportingController;

    invoke-static {v0}, Lcom/google/android/location/reporting/LocationReportingController;->a(Lcom/google/android/location/reporting/LocationReportingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/location/reporting/service/DispatchingService;->a(Landroid/content/Context;Lcom/google/android/gms/location/LocationStatus;)V

    .line 286
    :cond_0
    return-void
.end method
