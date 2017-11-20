.class public final Lcom/google/android/ulr/LocationDescriptor;
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
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    sput-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "attributes"

    const-string v2, "attributes"

    const-class v3, Lcom/google/android/ulr/LocationAttributesProto;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "confidence"

    const-string v2, "confidence"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "diagnosticInfo"

    const-string v2, "diagnosticInfo"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "featureId"

    const-string v2, "featureId"

    const-class v3, Lcom/google/android/ulr/FeatureIdProto;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "historicalProducer"

    const-string v2, "historicalProducer"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "historicalProminence"

    const-string v2, "historicalProminence"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "historicalRole"

    const-string v2, "historicalRole"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "language"

    const-string v2, "language"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "latlng"

    const-string v2, "latlng"

    const-class v3, Lcom/google/android/ulr/LatLng;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "latlngSpan"

    const-string v2, "latlngSpan"

    const-class v3, Lcom/google/android/ulr/LatLng;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "levelFeatureId"

    const-string v2, "levelFeatureId"

    const-class v3, Lcom/google/android/ulr/FeatureIdProto;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "levelNumber"

    const-string v2, "levelNumber"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "loc"

    const-string v2, "loc"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "mid"

    const-string v2, "mid"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "producer"

    const-string v2, "producer"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "provenance"

    const-string v2, "provenance"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "radius"

    const-string v2, "radius"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "rect"

    const-string v2, "rect"

    const-class v3, Lcom/google/android/ulr/LatLngRect;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "role"

    const-string v2, "role"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "semantics"

    const-string v2, "semantics"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    const-string v1, "timestamp"

    const-string v2, "timestamp"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/LocationDescriptor;->c:Ljava/util/HashMap;

    .line 104
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/google/android/ulr/LocationDescriptor;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/ulr/LocationDescriptor;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method protected final d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/ulr/LocationDescriptor;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getAttributes()Lcom/google/android/ulr/LocationAttributesProto;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/ulr/LocationDescriptor;->c:Ljava/util/HashMap;

    const-string v1, "attributes"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/LocationAttributesProto;

    return-object v0
.end method

.method public final getFeatureId()Lcom/google/android/ulr/FeatureIdProto;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/ulr/LocationDescriptor;->c:Ljava/util/HashMap;

    const-string v1, "featureId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/FeatureIdProto;

    return-object v0
.end method

.method public final getLatlng()Lcom/google/android/ulr/LatLng;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/ulr/LocationDescriptor;->c:Ljava/util/HashMap;

    const-string v1, "latlng"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/LatLng;

    return-object v0
.end method

.method public final getLatlngSpan()Lcom/google/android/ulr/LatLng;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/ulr/LocationDescriptor;->c:Ljava/util/HashMap;

    const-string v1, "latlngSpan"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/LatLng;

    return-object v0
.end method

.method public final getLevelFeatureId()Lcom/google/android/ulr/FeatureIdProto;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/ulr/LocationDescriptor;->c:Ljava/util/HashMap;

    const-string v1, "levelFeatureId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/FeatureIdProto;

    return-object v0
.end method

.method public final getRect()Lcom/google/android/ulr/LatLngRect;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/ulr/LocationDescriptor;->c:Ljava/util/HashMap;

    const-string v1, "rect"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/LatLngRect;

    return-object v0
.end method
