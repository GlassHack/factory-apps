.class public final Lcom/google/android/gms/location/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/gms/location/internal/c;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/location/internal/c;-><init>(Lcom/google/android/gms/location/internal/b;Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->b(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/location/l;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/gms/location/internal/d;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/location/internal/d;-><init>(Lcom/google/android/gms/location/internal/b;Lcom/google/android/gms/location/l;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->b(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method
