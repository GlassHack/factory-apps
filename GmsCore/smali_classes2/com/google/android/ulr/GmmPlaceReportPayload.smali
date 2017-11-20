.class public final Lcom/google/android/ulr/GmmPlaceReportPayload;
.super Lcom/google/android/gms/common/server/response/b;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation


# static fields
.field private static final b:Ljava/util/HashMap;


# instance fields
.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/ulr/GmmPlaceReportPayload;->b:Ljava/util/HashMap;

    const-string v1, "snapToPlaceRequest"

    const-string v2, "snapToPlaceRequest"

    const-class v3, Lcom/google/android/ulr/GmmPlaceReportPayloadSnapToPlaceRequest;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/google/android/ulr/GmmPlaceReportPayload;->b:Ljava/util/HashMap;

    const-string v1, "snapToPlaceResults"

    const-string v2, "snapToPlaceResults"

    const-class v3, Lcom/google/android/ulr/GmmPlaceReportPayloadSnapToPlaceResult;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/google/android/ulr/GmmPlaceReportPayload;->b:Ljava/util/HashMap;

    const-string v1, "userEvent"

    const-string v2, "userEvent"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/GmmPlaceReportPayload;->c:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/GmmPlaceReportPayload;->d:Ljava/util/HashMap;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/ulr/GmmPlaceReportPayload;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/ulr/GmmPlaceReportPayload;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/ulr/GmmPlaceReportPayload;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method protected final c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/ulr/GmmPlaceReportPayload;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/ulr/GmmPlaceReportPayload;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getSnapToPlaceRequest()Lcom/google/android/ulr/GmmPlaceReportPayloadSnapToPlaceRequest;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/ulr/GmmPlaceReportPayload;->c:Ljava/util/HashMap;

    const-string v1, "snapToPlaceRequest"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/GmmPlaceReportPayloadSnapToPlaceRequest;

    return-object v0
.end method

.method public final getSnapToPlaceResults()Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/ulr/GmmPlaceReportPayload;->d:Ljava/util/HashMap;

    const-string v1, "snapToPlaceResults"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
