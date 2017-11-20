.class final Lcom/google/android/gms/fitness/sensors/g/k;
.super Lcom/google/android/gms/fitness/data/p;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/sensors/g/i;

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/sensors/g/i;I)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/g/k;->a:Lcom/google/android/gms/fitness/sensors/g/i;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/p;-><init>()V

    .line 455
    iput p2, p0, Lcom/google/android/gms/fitness/sensors/g/k;->b:I

    .line 456
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/sensors/g/i;IB)V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/sensors/g/k;-><init>(Lcom/google/android/gms/fitness/sensors/g/i;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 4

    .prologue
    .line 460
    const-string v0, "/WearablesAdapter/sensor_data_point"

    invoke-static {v0}, Lcom/google/android/gms/wearable/w;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/w;

    move-result-object v1

    .line 461
    iget-object v0, v1, Lcom/google/android/gms/wearable/w;->a:Lcom/google/android/gms/wearable/m;

    const-string v2, "sensor_registration_request_id"

    iget v3, p0, Lcom/google/android/gms/fitness/sensors/g/k;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    .line 463
    iget-object v2, v1, Lcom/google/android/gms/wearable/w;->a:Lcom/google/android/gms/wearable/m;

    const-string v3, "data_point"

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->b:Lcom/google/android/gms/fitness/sensors/g/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    .line 465
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/k;->a:Lcom/google/android/gms/fitness/sensors/g/i;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/g/i;->b:Lcom/google/android/gms/wearable/d;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/g/k;->a:Lcom/google/android/gms/fitness/sensors/g/i;

    iget-object v2, v2, Lcom/google/android/gms/fitness/sensors/g/i;->a:Lcom/google/android/gms/common/api/j;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/w;->a()Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/wearable/d;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/common/api/y;

    .line 466
    return-void
.end method
