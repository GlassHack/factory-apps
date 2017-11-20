.class public final Lcom/google/android/gms/analytics/service/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/internal/h;


# instance fields
.field private final a:Lcom/google/android/gms/analytics/service/AnalyticsService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/service/AnalyticsService;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/analytics/service/i;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/i;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a()V

    .line 21
    return-void
.end method
