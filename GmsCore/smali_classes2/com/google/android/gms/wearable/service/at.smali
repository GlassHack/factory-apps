.class final Lcom/google/android/gms/wearable/service/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/service/f;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/internal/ac;

.field final synthetic b:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/at;->b:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/at;->a:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/at;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/wearable/internal/GetConfigsResponse;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/wearable/service/at;->b:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v3}, Lcom/google/android/gms/wearable/service/z;->a(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/wearable/node/a/a;->a()[Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/GetConfigsResponse;-><init>(I[Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetConfigsResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    const-string v1, "WearableService"

    const-string v2, "getConfigs: exception during processing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/at;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/wearable/internal/GetConfigsResponse;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/GetConfigsResponse;-><init>(I[Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetConfigsResponse;)V

    goto :goto_0
.end method
