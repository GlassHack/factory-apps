.class final Lcom/google/android/gms/analytics/service/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/analytics/service/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/service/e;I)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/android/gms/analytics/service/f;->b:Lcom/google/android/gms/analytics/service/e;

    iput p2, p0, Lcom/google/android/gms/analytics/service/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/f;->b:Lcom/google/android/gms/analytics/service/e;

    iget-object v0, v0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->b(Lcom/google/android/gms/analytics/service/AnalyticsService;)Lcom/google/android/gms/analytics/internal/a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/analytics/service/f;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/internal/a;->a(Ljava/lang/String;)V

    .line 361
    return-void
.end method
