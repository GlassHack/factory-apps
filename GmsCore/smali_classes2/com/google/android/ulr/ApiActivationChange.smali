.class public final Lcom/google/android/ulr/ApiActivationChange;
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
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/ulr/ApiActivationChange;->b:Ljava/util/HashMap;

    const-string v1, "change"

    const-string v2, "change"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/google/android/ulr/ApiActivationChange;->b:Ljava/util/HashMap;

    const-string v1, "newReasons"

    const-string v2, "newReasons"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/google/android/ulr/ApiActivationChange;->b:Ljava/util/HashMap;

    const-string v1, "oldReasons"

    const-string v2, "oldReasons"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    const-string v0, "change"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/ulr/ApiActivationChange;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/ulr/ApiActivationChange;->b:Ljava/util/HashMap;

    return-object v0
.end method
