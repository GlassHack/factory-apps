.class public final Lcom/google/android/ulr/GetApiTakeoutLocationsRequest;
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
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    sput-object v0, Lcom/google/android/ulr/GetApiTakeoutLocationsRequest;->b:Ljava/util/HashMap;

    const-string v1, "clientInfo"

    const-string v2, "clientInfo"

    const-class v3, Lcom/google/android/ulr/ApiClientInfo;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/GetApiTakeoutLocationsRequest;->c:Ljava/util/HashMap;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/ulr/GetApiTakeoutLocationsRequest;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/ulr/GetApiTakeoutLocationsRequest;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method protected final d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/ulr/GetApiTakeoutLocationsRequest;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getClientInfo()Lcom/google/android/ulr/ApiClientInfo;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/ulr/GetApiTakeoutLocationsRequest;->c:Ljava/util/HashMap;

    const-string v1, "clientInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiClientInfo;

    return-object v0
.end method
