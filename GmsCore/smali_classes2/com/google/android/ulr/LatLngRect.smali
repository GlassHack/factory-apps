.class public final Lcom/google/android/ulr/LatLngRect;
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
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    sput-object v0, Lcom/google/android/ulr/LatLngRect;->b:Ljava/util/HashMap;

    const-string v1, "hi"

    const-string v2, "hi"

    const-class v3, Lcom/google/android/ulr/LatLng;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/google/android/ulr/LatLngRect;->b:Ljava/util/HashMap;

    const-string v1, "lo"

    const-string v2, "lo"

    const-class v3, Lcom/google/android/ulr/LatLng;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/LatLngRect;->c:Ljava/util/HashMap;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/ulr/LatLngRect;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/ulr/LatLngRect;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method protected final d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/ulr/LatLngRect;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getHi()Lcom/google/android/ulr/LatLng;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/ulr/LatLngRect;->c:Ljava/util/HashMap;

    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/LatLng;

    return-object v0
.end method

.method public final getLo()Lcom/google/android/ulr/LatLng;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/ulr/LatLngRect;->c:Ljava/util/HashMap;

    const-string v1, "lo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/LatLng;

    return-object v0
.end method
