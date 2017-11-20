.class public final Lcom/google/android/gms/wearable/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/google/android/gms/wearable/internal/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/g;-><init>(Lcom/google/android/gms/wearable/internal/e;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/j;Landroid/net/Uri;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/google/android/gms/wearable/internal/k;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/wearable/internal/k;-><init>(Lcom/google/android/gms/wearable/internal/e;Landroid/net/Uri;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/gms/wearable/internal/f;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/wearable/internal/f;-><init>(Lcom/google/android/gms/wearable/internal/e;Lcom/google/android/gms/wearable/PutDataRequest;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/google/android/gms/wearable/internal/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/i;-><init>(Lcom/google/android/gms/wearable/internal/e;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->b(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method
