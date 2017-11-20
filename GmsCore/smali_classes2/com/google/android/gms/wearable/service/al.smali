.class final Lcom/google/android/gms/wearable/service/al;
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
    .line 139
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/al;->b:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/al;->a:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/al;->b:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/z;->a(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/a/a;->a()[Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 146
    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/wearable/service/al;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v7, Lcom/google/android/gms/wearable/internal/GetConfigResponse;

    const/4 v8, 0x0

    new-instance v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-direct {v7, v8, v0}, Lcom/google/android/gms/wearable/internal/GetConfigResponse;-><init>(ILcom/google/android/gms/wearable/ConnectionConfiguration;)V

    invoke-interface {v6, v7}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetConfigResponse;)V

    .line 160
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/al;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v2, Lcom/google/android/gms/wearable/internal/GetConfigResponse;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/wearable/internal/GetConfigResponse;-><init>(ILcom/google/android/gms/wearable/ConnectionConfiguration;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetConfigResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "WearableService"

    const-string v2, "getConfig: exception during processing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/al;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/wearable/internal/GetConfigResponse;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v9}, Lcom/google/android/gms/wearable/internal/GetConfigResponse;-><init>(ILcom/google/android/gms/wearable/ConnectionConfiguration;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetConfigResponse;)V

    goto :goto_0
.end method
