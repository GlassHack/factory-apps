.class public final Lcom/google/android/ulr/ApiLocationReading;
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
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/ulr/ApiLocationReading;->b:Ljava/util/HashMap;

    const-string v1, "experiments"

    const-string v2, "experiments"

    const-class v3, Lcom/google/android/ulr/ApiExperiment;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/google/android/ulr/ApiLocationReading;->b:Ljava/util/HashMap;

    const-string v1, "location"

    const-string v2, "location"

    const-class v3, Lcom/google/android/ulr/ApiLocation;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/google/android/ulr/ApiLocationReading;->b:Ljava/util/HashMap;

    const-string v1, "readingInfo"

    const-string v2, "readingInfo"

    const-class v3, Lcom/google/android/ulr/ApiReadingInfo;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/google/android/ulr/ApiLocationReading;->b:Ljava/util/HashMap;

    const-string v1, "timestampMs"

    const-string v2, "timestampMs"

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

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiLocationReading;->c:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiLocationReading;->d:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/google/android/ulr/ApiLocation;Lcom/google/android/ulr/ApiReadingInfo;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiLocationReading;->c:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiLocationReading;->d:Ljava/util/HashMap;

    .line 54
    if-eqz p1, :cond_0

    .line 55
    const-string v0, "experiments"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/ulr/ApiLocationReading;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 57
    :cond_0
    if-eqz p2, :cond_1

    .line 58
    const-string v0, "location"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/ulr/ApiLocationReading;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 60
    :cond_1
    if-eqz p3, :cond_2

    .line 61
    const-string v0, "readingInfo"

    invoke-virtual {p0, v0, p3}, Lcom/google/android/ulr/ApiLocationReading;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 63
    :cond_2
    if-eqz p4, :cond_3

    .line 64
    const-string v0, "timestampMs"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/ulr/ApiLocationReading;->a(Ljava/lang/String;J)V

    .line 66
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/ulr/ApiLocationReading;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/ulr/ApiLocationReading;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/ulr/ApiLocationReading;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method protected final c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/ulr/ApiLocationReading;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/ulr/ApiLocationReading;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getExperiments()Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/ulr/ApiLocationReading;->d:Ljava/util/HashMap;

    const-string v1, "experiments"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getLocation()Lcom/google/android/ulr/ApiLocation;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/ulr/ApiLocationReading;->c:Ljava/util/HashMap;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiLocation;

    return-object v0
.end method

.method public final getReadingInfo()Lcom/google/android/ulr/ApiReadingInfo;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/ulr/ApiLocationReading;->c:Ljava/util/HashMap;

    const-string v1, "readingInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiReadingInfo;

    return-object v0
.end method
