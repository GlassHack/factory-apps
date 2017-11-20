.class public final Lcom/google/android/ulr/ApiReadingInfo;
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
    sput-object v0, Lcom/google/android/ulr/ApiReadingInfo;->b:Ljava/util/HashMap;

    const-string v1, "batteryCharging"

    const-string v2, "batteryCharging"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/google/android/ulr/ApiReadingInfo;->b:Ljava/util/HashMap;

    const-string v1, "batteryLevel"

    const-string v2, "batteryLevel"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/google/android/ulr/ApiReadingInfo;->b:Ljava/util/HashMap;

    const-string v1, "source"

    const-string v2, "source"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/google/android/ulr/ApiReadingInfo;->b:Ljava/util/HashMap;

    const-string v1, "wifiScans"

    const-string v2, "wifiScans"

    const-class v3, Lcom/google/android/ulr/WifiStrengthProto;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiReadingInfo;->c:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiReadingInfo;->c:Ljava/util/HashMap;

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const-string v0, "batteryCharging"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/ApiReadingInfo;->a(Ljava/lang/String;Z)V

    .line 53
    :cond_0
    if-eqz p2, :cond_1

    .line 54
    const-string v0, "batteryLevel"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/ApiReadingInfo;->a(Ljava/lang/String;I)V

    .line 56
    :cond_1
    if-eqz p3, :cond_2

    .line 57
    const-string v0, "source"

    invoke-virtual {p0, v0, p3}, Lcom/google/android/ulr/ApiReadingInfo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2
    if-eqz p4, :cond_3

    .line 60
    const-string v0, "wifiScans"

    invoke-virtual {p0, v0, p4}, Lcom/google/android/ulr/ApiReadingInfo;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 62
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/ulr/ApiReadingInfo;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/ulr/ApiReadingInfo;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method protected final c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/ulr/ApiReadingInfo;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getWifiScans()Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/ulr/ApiReadingInfo;->c:Ljava/util/HashMap;

    const-string v1, "wifiScans"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
