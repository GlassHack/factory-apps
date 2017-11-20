.class final Lcom/google/android/gms/wearable/service/u;
.super Lcom/google/android/gms/wearable/service/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/node/i;

.field final synthetic b:Lcom/google/android/gms/wearable/service/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/s;Ljava/lang/String;Lcom/google/android/gms/wearable/node/i;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/u;->b:Lcom/google/android/gms/wearable/service/s;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/u;->a:Lcom/google/android/gms/wearable/node/i;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/service/x;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/u;->a:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/af;)V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/u;->a:Lcom/google/android/gms/wearable/node/i;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/d;->b(Lcom/google/android/gms/wearable/node/i;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    .line 405
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/internal/af;->a(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->h()V

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->h()V

    throw v1
.end method
