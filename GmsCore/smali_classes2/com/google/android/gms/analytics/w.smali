.class final Lcom/google/android/gms/analytics/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/h;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/v;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/gms/analytics/w;->a:Lcom/google/android/gms/analytics/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->a:Lcom/google/android/gms/analytics/v;

    iget-object v1, p0, Lcom/google/android/gms/analytics/w;->a:Lcom/google/android/gms/analytics/v;

    invoke-static {v1}, Lcom/google/android/gms/analytics/v;->a(Lcom/google/android/gms/analytics/v;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/v;->a(ZZ)V

    .line 65
    return-void
.end method
