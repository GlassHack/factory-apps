.class final Lcom/google/android/gms/wearable/service/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/service/f;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/wearable/internal/ac;

.field final synthetic c:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/z;Ljava/lang/String;Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/au;->c:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/au;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/au;->b:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/au;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/z;->a(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/au;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/node/a/a;->a(Ljava/lang/String;Z)V

    .line 352
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/au;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    const-string v1, "WearableService"

    const-string v2, "enableConnection: exception during processing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/au;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method
