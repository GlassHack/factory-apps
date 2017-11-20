.class public final Lcom/google/android/ulr/ApiActivityReading;
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
    sput-object v0, Lcom/google/android/ulr/ApiActivityReading;->b:Ljava/util/HashMap;

    const-string v1, "activities"

    const-string v2, "activities"

    const-class v3, Lcom/google/android/ulr/ApiActivity;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/google/android/ulr/ApiActivityReading;->b:Ljava/util/HashMap;

    const-string v1, "readingInfo"

    const-string v2, "readingInfo"

    const-class v3, Lcom/google/android/ulr/ApiReadingInfo;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/google/android/ulr/ApiActivityReading;->b:Ljava/util/HashMap;

    const-string v1, "timestampMs"

    const-string v2, "timestampMs"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

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

    iput-object v0, p0, Lcom/google/android/ulr/ApiActivityReading;->c:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiActivityReading;->d:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/google/android/ulr/ApiReadingInfo;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiActivityReading;->c:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiActivityReading;->d:Ljava/util/HashMap;

    .line 48
    if-eqz p1, :cond_0

    .line 49
    const-string v0, "activities"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/ulr/ApiActivityReading;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    :cond_0
    if-eqz p2, :cond_1

    .line 52
    const-string v0, "readingInfo"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/ulr/ApiActivityReading;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 54
    :cond_1
    if-eqz p3, :cond_2

    .line 55
    const-string v0, "timestampMs"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/ulr/ApiActivityReading;->a(Ljava/lang/String;J)V

    .line 57
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/ulr/ApiActivityReading;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/ulr/ApiActivityReading;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/ulr/ApiActivityReading;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method protected final c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/ulr/ApiActivityReading;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/ulr/ApiActivityReading;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getActivities()Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/ulr/ApiActivityReading;->d:Ljava/util/HashMap;

    const-string v1, "activities"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getReadingInfo()Lcom/google/android/ulr/ApiReadingInfo;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/ulr/ApiActivityReading;->c:Ljava/util/HashMap;

    const-string v1, "readingInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiReadingInfo;

    return-object v0
.end method
