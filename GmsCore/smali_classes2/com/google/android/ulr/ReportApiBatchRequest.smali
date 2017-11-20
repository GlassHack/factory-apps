.class public final Lcom/google/android/ulr/ReportApiBatchRequest;
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
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/ulr/ReportApiBatchRequest;->b:Ljava/util/HashMap;

    const-string v1, "batch"

    const-string v2, "batch"

    const-class v3, Lcom/google/android/ulr/ApiBatch;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/google/android/ulr/ReportApiBatchRequest;->b:Ljava/util/HashMap;

    const-string v1, "clientId"

    const-string v2, "clientId"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/google/android/ulr/ReportApiBatchRequest;->b:Ljava/util/HashMap;

    const-string v1, "clientInfo"

    const-string v2, "clientInfo"

    const-class v3, Lcom/google/android/ulr/ApiClientInfo;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/google/android/ulr/ReportApiBatchRequest;->b:Ljava/util/HashMap;

    const-string v1, "deviceTimeMs"

    const-string v2, "deviceTimeMs"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/google/android/ulr/ReportApiBatchRequest;->b:Ljava/util/HashMap;

    const-string v1, "settingsLastKnownTimestampMs"

    const-string v2, "settingsLastKnownTimestampMs"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ReportApiBatchRequest;->c:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/google/android/ulr/ApiBatch;Lcom/google/android/ulr/ApiClientInfo;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ReportApiBatchRequest;->c:Ljava/util/HashMap;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string v0, "batch"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/ulr/ReportApiBatchRequest;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 58
    :cond_0
    if-eqz p2, :cond_1

    .line 62
    const-string v0, "clientInfo"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/ulr/ReportApiBatchRequest;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 64
    :cond_1
    if-eqz p3, :cond_2

    .line 65
    const-string v0, "deviceTimeMs"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/ulr/ReportApiBatchRequest;->a(Ljava/lang/String;J)V

    .line 67
    :cond_2
    if-eqz p4, :cond_3

    .line 68
    const-string v0, "settingsLastKnownTimestampMs"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/ulr/ReportApiBatchRequest;->a(Ljava/lang/String;J)V

    .line 70
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/ulr/ReportApiBatchRequest;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/ulr/ReportApiBatchRequest;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method protected final d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/ulr/ReportApiBatchRequest;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getBatch()Lcom/google/android/ulr/ApiBatch;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/ulr/ReportApiBatchRequest;->c:Ljava/util/HashMap;

    const-string v1, "batch"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiBatch;

    return-object v0
.end method

.method public final getClientInfo()Lcom/google/android/ulr/ApiClientInfo;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/ulr/ReportApiBatchRequest;->c:Ljava/util/HashMap;

    const-string v1, "clientInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiClientInfo;

    return-object v0
.end method
