.class public final Lcom/google/android/ulr/ApiPlaceReport;
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
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    sput-object v0, Lcom/google/android/ulr/ApiPlaceReport;->b:Ljava/util/HashMap;

    const-string v1, "appSpecificTag"

    const-string v2, "appSpecificTag"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/google/android/ulr/ApiPlaceReport;->b:Ljava/util/HashMap;

    const-string v1, "callingAppPackageName"

    const-string v2, "callingAppPackageName"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/google/android/ulr/ApiPlaceReport;->b:Ljava/util/HashMap;

    const-string v1, "payload"

    const-string v2, "payload"

    const-class v3, Lcom/google/android/ulr/ApiPlaceReportPayload;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/google/android/ulr/ApiPlaceReport;->b:Ljava/util/HashMap;

    const-string v1, "placeId"

    const-string v2, "placeId"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/google/android/ulr/ApiPlaceReport;->b:Ljava/util/HashMap;

    const-string v1, "source"

    const-string v2, "source"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/google/android/ulr/ApiPlaceReport;->b:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiPlaceReport;->c:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiPlaceReport;->c:Ljava/util/HashMap;

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const-string v0, "appSpecificTag"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/ulr/ApiPlaceReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    if-eqz p2, :cond_1

    .line 61
    const-string v0, "callingAppPackageName"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/ulr/ApiPlaceReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    if-eqz p3, :cond_2

    .line 67
    const-string v0, "placeId"

    invoke-virtual {p0, v0, p3}, Lcom/google/android/ulr/ApiPlaceReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/ulr/ApiPlaceReport;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/ulr/ApiPlaceReport;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method protected final d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/ulr/ApiPlaceReport;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getPayload()Lcom/google/android/ulr/ApiPlaceReportPayload;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/ulr/ApiPlaceReport;->c:Ljava/util/HashMap;

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiPlaceReportPayload;

    return-object v0
.end method
