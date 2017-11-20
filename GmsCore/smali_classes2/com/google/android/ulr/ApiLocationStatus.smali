.class public final Lcom/google/android/ulr/ApiLocationStatus;
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
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    sput-object v0, Lcom/google/android/ulr/ApiLocationStatus;->b:Ljava/util/HashMap;

    const-string v1, "cellStatus"

    const-string v2, "cellStatus"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/google/android/ulr/ApiLocationStatus;->b:Ljava/util/HashMap;

    const-string v1, "wifiStatus"

    const-string v2, "wifiStatus"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 39
    if-eqz p1, :cond_0

    .line 40
    const-string v0, "cellStatus"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/ulr/ApiLocationStatus;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    if-eqz p2, :cond_1

    .line 43
    const-string v0, "wifiStatus"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/ulr/ApiLocationStatus;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/ulr/ApiLocationStatus;->b:Ljava/util/HashMap;

    return-object v0
.end method
