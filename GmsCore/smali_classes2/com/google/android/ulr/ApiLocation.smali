.class public final Lcom/google/android/ulr/ApiLocation;
.super Lcom/google/android/gms/common/server/response/b;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation


# static fields
.field private static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    sput-object v0, Lcom/google/android/ulr/ApiLocation;->b:Ljava/util/HashMap;

    const-string v1, "altitudeMetersAboveSeaLevel"

    const-string v2, "altitudeMetersAboveSeaLevel"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/google/android/ulr/ApiLocation;->b:Ljava/util/HashMap;

    const-string v1, "approximatelyStationary"

    const-string v2, "approximatelyStationary"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/google/android/ulr/ApiLocation;->b:Ljava/util/HashMap;

    const-string v1, "confidence"

    const-string v2, "confidence"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/google/android/ulr/ApiLocation;->b:Ljava/util/HashMap;

    const-string v1, "headingDegreesEastOfTrueNorth"

    const-string v2, "headingDegreesEastOfTrueNorth"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/google/android/ulr/ApiLocation;->b:Ljava/util/HashMap;

    const-string v1, "horizontalAccuracyMeters"

    const-string v2, "horizontalAccuracyMeters"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/google/android/ulr/ApiLocation;->b:Ljava/util/HashMap;

    const-string v1, "indoorLevelE3"

    const-string v2, "indoorLevelE3"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/google/android/ulr/ApiLocation;->b:Ljava/util/HashMap;

    const-string v1, "indoorLevelFeatureId"

    const-string v2, "indoorLevelFeatureId"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/google/android/ulr/ApiLocation;->b:Ljava/util/HashMap;

    const-string v1, "latitudeE7"

    const-string v2, "latitudeE7"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/google/android/ulr/ApiLocation;->b:Ljava/util/HashMap;

    const-string v1, "longitudeE7"

    const-string v2, "longitudeE7"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/google/android/ulr/ApiLocation;->b:Ljava/util/HashMap;

    const-string v1, "speedMetersPerSecond"

    const-string v2, "speedMetersPerSecond"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/android/ulr/ApiLocation;->b:Ljava/util/HashMap;

    const-string v1, "verticalAccuracyMeters"

    const-string v2, "verticalAccuracyMeters"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    const-string v0, "altitudeMetersAboveSeaLevel"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/ApiLocation;->a(Ljava/lang/String;I)V

    .line 78
    :cond_0
    if-eqz p2, :cond_1

    .line 79
    const-string v0, "approximatelyStationary"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/ApiLocation;->a(Ljava/lang/String;Z)V

    .line 81
    :cond_1
    if-eqz p3, :cond_2

    .line 85
    const-string v0, "headingDegreesEastOfTrueNorth"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/ApiLocation;->a(Ljava/lang/String;I)V

    .line 87
    :cond_2
    if-eqz p4, :cond_3

    .line 88
    const-string v0, "horizontalAccuracyMeters"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/ApiLocation;->a(Ljava/lang/String;I)V

    .line 90
    :cond_3
    if-eqz p5, :cond_4

    .line 91
    const-string v0, "indoorLevelE3"

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/ApiLocation;->a(Ljava/lang/String;I)V

    .line 93
    :cond_4
    if-eqz p6, :cond_5

    .line 94
    const-string v0, "indoorLevelFeatureId"

    invoke-virtual {p0, v0, p6}, Lcom/google/android/ulr/ApiLocation;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_5
    if-eqz p7, :cond_6

    .line 97
    const-string v0, "latitudeE7"

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/ApiLocation;->a(Ljava/lang/String;I)V

    .line 99
    :cond_6
    if-eqz p8, :cond_7

    .line 100
    const-string v0, "longitudeE7"

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/ApiLocation;->a(Ljava/lang/String;I)V

    .line 102
    :cond_7
    if-eqz p9, :cond_8

    .line 103
    const-string v0, "speedMetersPerSecond"

    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/ApiLocation;->a(Ljava/lang/String;I)V

    .line 105
    :cond_8
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/ulr/ApiLocation;->b:Ljava/util/HashMap;

    return-object v0
.end method
