.class public final Lcom/google/android/ulr/ApiBatch;
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
    sput-object v0, Lcom/google/android/ulr/ApiBatch;->b:Ljava/util/HashMap;

    const-string v1, "activityReadings"

    const-string v2, "activityReadings"

    const-class v3, Lcom/google/android/ulr/ApiActivityReading;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/google/android/ulr/ApiBatch;->b:Ljava/util/HashMap;

    const-string v1, "apiMetadatas"

    const-string v2, "apiMetadatas"

    const-class v3, Lcom/google/android/ulr/ApiMetadata;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/google/android/ulr/ApiBatch;->b:Ljava/util/HashMap;

    const-string v1, "apiRates"

    const-string v2, "apiRates"

    const-class v3, Lcom/google/android/ulr/ApiRate;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/google/android/ulr/ApiBatch;->b:Ljava/util/HashMap;

    const-string v1, "locationReadings"

    const-string v2, "locationReadings"

    const-class v3, Lcom/google/android/ulr/ApiLocationReading;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiBatch;->c:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiBatch;->c:Ljava/util/HashMap;

    .line 53
    if-eqz p1, :cond_0

    .line 54
    const-string v0, "activityReadings"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/ulr/ApiBatch;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 56
    :cond_0
    if-eqz p2, :cond_1

    .line 57
    const-string v0, "apiMetadatas"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/ulr/ApiBatch;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 59
    :cond_1
    if-eqz p3, :cond_2

    .line 63
    const-string v0, "locationReadings"

    invoke-virtual {p0, v0, p3}, Lcom/google/android/ulr/ApiBatch;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 65
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/ulr/ApiBatch;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/ulr/ApiBatch;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method protected final c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/ulr/ApiBatch;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getActivityReadings()Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/ulr/ApiBatch;->c:Ljava/util/HashMap;

    const-string v1, "activityReadings"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getApiMetadatas()Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/ulr/ApiBatch;->c:Ljava/util/HashMap;

    const-string v1, "apiMetadatas"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getApiRates()Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/ulr/ApiBatch;->c:Ljava/util/HashMap;

    const-string v1, "apiRates"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getLocationReadings()Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/ulr/ApiBatch;->c:Ljava/util/HashMap;

    const-string v1, "locationReadings"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
