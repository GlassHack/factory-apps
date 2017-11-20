.class final Lcom/google/android/gms/wearable/service/ap;
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
    .line 179
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/ap;->b:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/ap;->a:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ap;->b:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/z;->a(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/a/a;->a()[Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string v1, "WearableService"

    const-string v2, "enableConnection: exception during processing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ap;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 194
    :goto_0
    return-void

    .line 188
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ap;->b:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v1}, Lcom/google/android/gms/wearable/service/z;->a(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a/a;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/wearable/node/a/a;->a(Ljava/lang/String;Z)V

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ap;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
