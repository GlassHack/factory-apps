.class public final Lcom/google/android/ulr/ApiMetadata;
.super Lcom/google/android/gms/common/server/response/b;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation


# static fields
.field private static final b:Ljava/util/HashMap;


# instance fields
.field private final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    sput-object v0, Lcom/google/android/ulr/ApiMetadata;->b:Ljava/util/HashMap;

    const-string v1, "activationChange"

    const-string v2, "activationChange"

    const-class v3, Lcom/google/android/ulr/ApiActivationChange;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/google/android/ulr/ApiMetadata;->b:Ljava/util/HashMap;

    const-string v1, "bleScanReport"

    const-string v2, "bleScanReport"

    const-class v3, Lcom/google/android/ulr/ApiBleScanReport;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/google/android/ulr/ApiMetadata;->b:Ljava/util/HashMap;

    const-string v1, "burstRequest"

    const-string v2, "burstRequest"

    const-class v3, Lcom/google/android/ulr/ApiBurstRequest;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/google/android/ulr/ApiMetadata;->b:Ljava/util/HashMap;

    const-string v1, "locationStatus"

    const-string v2, "locationStatus"

    const-class v3, Lcom/google/android/ulr/ApiLocationStatus;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/google/android/ulr/ApiMetadata;->b:Ljava/util/HashMap;

    const-string v1, "placeReport"

    const-string v2, "placeReport"

    const-class v3, Lcom/google/android/ulr/ApiPlaceReport;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/google/android/ulr/ApiMetadata;->b:Ljava/util/HashMap;

    const-string v1, "rate"

    const-string v2, "rate"

    const-class v3, Lcom/google/android/ulr/ApiRate;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/android/ulr/ApiMetadata;->b:Ljava/util/HashMap;

    const-string v1, "timestampMs"

    const-string v2, "timestampMs"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiMetadata;->c:Ljava/util/HashMap;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/google/android/ulr/ApiActivationChange;Lcom/google/android/ulr/ApiBleScanReport;Lcom/google/android/ulr/ApiLocationStatus;Lcom/google/android/ulr/ApiPlaceReport;Lcom/google/android/ulr/ApiRate;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiMetadata;->c:Ljava/util/HashMap;

    .line 71
    if-eqz p1, :cond_0

    .line 72
    const-string v0, "activationChange"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/ulr/ApiMetadata;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 74
    :cond_0
    if-eqz p2, :cond_1

    .line 75
    const-string v0, "bleScanReport"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/ulr/ApiMetadata;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 77
    :cond_1
    if-eqz p3, :cond_2

    .line 81
    const-string v0, "locationStatus"

    invoke-virtual {p0, v0, p3}, Lcom/google/android/ulr/ApiMetadata;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 83
    :cond_2
    if-eqz p4, :cond_3

    .line 84
    const-string v0, "placeReport"

    invoke-virtual {p0, v0, p4}, Lcom/google/android/ulr/ApiMetadata;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 86
    :cond_3
    if-eqz p5, :cond_4

    .line 87
    const-string v0, "rate"

    invoke-virtual {p0, v0, p5}, Lcom/google/android/ulr/ApiMetadata;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 89
    :cond_4
    if-eqz p6, :cond_5

    .line 90
    const-string v0, "timestampMs"

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/ulr/ApiMetadata;->a(Ljava/lang/String;J)V

    .line 92
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/ulr/ApiMetadata;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/ulr/ApiMetadata;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public final b()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    const-string v1, "timestampMs"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method protected final d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/ulr/ApiMetadata;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getActivationChange()Lcom/google/android/ulr/ApiActivationChange;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/ulr/ApiMetadata;->c:Ljava/util/HashMap;

    const-string v1, "activationChange"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiActivationChange;

    return-object v0
.end method

.method public final getBleScanReport()Lcom/google/android/ulr/ApiBleScanReport;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/ulr/ApiMetadata;->c:Ljava/util/HashMap;

    const-string v1, "bleScanReport"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiBleScanReport;

    return-object v0
.end method

.method public final getBurstRequest()Lcom/google/android/ulr/ApiBurstRequest;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/ulr/ApiMetadata;->c:Ljava/util/HashMap;

    const-string v1, "burstRequest"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiBurstRequest;

    return-object v0
.end method

.method public final getLocationStatus()Lcom/google/android/ulr/ApiLocationStatus;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/ulr/ApiMetadata;->c:Ljava/util/HashMap;

    const-string v1, "locationStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiLocationStatus;

    return-object v0
.end method

.method public final getPlaceReport()Lcom/google/android/ulr/ApiPlaceReport;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/ulr/ApiMetadata;->c:Ljava/util/HashMap;

    const-string v1, "placeReport"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiPlaceReport;

    return-object v0
.end method

.method public final getRate()Lcom/google/android/ulr/ApiRate;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/ulr/ApiMetadata;->c:Ljava/util/HashMap;

    const-string v1, "rate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiRate;

    return-object v0
.end method
