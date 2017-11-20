.class public final Lcom/google/android/ulr/DeleteApiLocationsRequest;
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
    sput-object v0, Lcom/google/android/ulr/DeleteApiLocationsRequest;->b:Ljava/util/HashMap;

    const-string v1, "clientId"

    const-string v2, "clientId"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/google/android/ulr/DeleteApiLocationsRequest;->b:Ljava/util/HashMap;

    const-string v1, "clientInfo"

    const-string v2, "clientInfo"

    const-class v3, Lcom/google/android/ulr/ApiClientInfo;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/google/android/ulr/DeleteApiLocationsRequest;->b:Ljava/util/HashMap;

    const-string v1, "firstTimestampMs"

    const-string v2, "firstTimestampMs"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/google/android/ulr/DeleteApiLocationsRequest;->b:Ljava/util/HashMap;

    const-string v1, "lastTimestampMs"

    const-string v2, "lastTimestampMs"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/google/android/ulr/DeleteApiLocationsRequest;->b:Ljava/util/HashMap;

    const-string v1, "settingsLastKnownTimestampMs"

    const-string v2, "settingsLastKnownTimestampMs"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/DeleteApiLocationsRequest;->c:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/google/android/ulr/ApiClientInfo;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/DeleteApiLocationsRequest;->c:Ljava/util/HashMap;

    .line 53
    if-eqz p1, :cond_0

    .line 57
    const-string v0, "clientInfo"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/ulr/DeleteApiLocationsRequest;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/ulr/DeleteApiLocationsRequest;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/ulr/DeleteApiLocationsRequest;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method protected final d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/ulr/DeleteApiLocationsRequest;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getClientInfo()Lcom/google/android/ulr/ApiClientInfo;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/ulr/DeleteApiLocationsRequest;->c:Ljava/util/HashMap;

    const-string v1, "clientInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiClientInfo;

    return-object v0
.end method
