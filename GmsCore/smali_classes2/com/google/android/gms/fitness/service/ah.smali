.class final Lcom/google/android/gms/fitness/service/ah;
.super Lcom/google/android/gms/fitness/h/c;
.source "SourceFile"


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/fitness/service/ag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/ag;J)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/ah;->b:Lcom/google/android/gms/fitness/service/ag;

    iput-wide p2, p0, Lcom/google/android/gms/fitness/service/ah;->a:J

    invoke-direct {p0}, Lcom/google/android/gms/fitness/h/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 0

    .prologue
    .line 423
    return-object p1
.end method

.method protected final synthetic a(Lcom/google/android/gms/common/api/aa;)V
    .locals 4

    .prologue
    .line 423
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ah;->b:Lcom/google/android/gms/fitness/service/ag;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/ag;->d:Lcom/google/android/gms/fitness/internal/v;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/service/ah;->a:J

    sub-long/2addr v0, v2

    const-string v2, "register"

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/ah;->b:Lcom/google/android/gms/fitness/service/ag;

    iget-object v3, v3, Lcom/google/android/gms/fitness/service/ag;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/fitness/c/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
