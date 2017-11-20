.class final Lcom/google/android/gms/fitness/service/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/fitness/internal/a;

.field final synthetic d:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic e:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/a;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/ag;->e:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/ag;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/ag;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/ag;->c:Lcom/google/android/gms/fitness/internal/a;

    iput-object p5, p0, Lcom/google/android/gms/fitness/service/ag;->d:Lcom/google/android/gms/fitness/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 420
    const-string v0, "Processing register request %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/ag;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 421
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 422
    iget-object v2, p0, Lcom/google/android/gms/fitness/service/ag;->e:Lcom/google/android/gms/fitness/service/i;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/ag;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/ag;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/fitness/service/ag;->c:Lcom/google/android/gms/fitness/internal/a;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/a;)Lcom/google/c/j/a/v;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/fitness/service/ah;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/fitness/service/ah;-><init>(Lcom/google/android/gms/fitness/service/ag;J)V

    invoke-static {v2, v3}, Lcom/google/c/j/a/n;->a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V

    .line 437
    return-void
.end method
