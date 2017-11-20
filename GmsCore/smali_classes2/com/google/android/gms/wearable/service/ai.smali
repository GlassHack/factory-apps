.class final Lcom/google/android/gms/wearable/service/ai;
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
    .line 681
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/ai;->b:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/ai;->a:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ai;->b:Lcom/google/android/gms/wearable/service/z;

    invoke-static {}, Lcom/google/android/gms/wearable/service/z;->b()Ljava/lang/String;

    move-result-object v0

    .line 686
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ai;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v2, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/wearable/internal/NodeParcelable;

    invoke-direct {v4, v0, v0}, Lcom/google/android/gms/wearable/internal/NodeParcelable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;-><init>(ILcom/google/android/gms/wearable/internal/NodeParcelable;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :goto_0
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 690
    const-string v1, "WearableService"

    const-string v2, "getLocalNode: exception during processing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ai;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;-><init>(ILcom/google/android/gms/wearable/internal/NodeParcelable;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;)V

    goto :goto_0
.end method
