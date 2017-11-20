.class final Lcom/google/android/gms/wearable/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/api/b;
    .locals 2

    .prologue
    .line 55
    check-cast p4, Lcom/google/android/gms/wearable/aa;

    if-nez p4, :cond_0

    new-instance v0, Lcom/google/android/gms/wearable/aa;

    new-instance v1, Lcom/google/android/gms/wearable/ab;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/ab;-><init>()V

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/aa;-><init>(B)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/internal/ay;

    invoke-direct {v0, p1, p2, p5, p6}, Lcom/google/android/gms/wearable/internal/ay;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;)V

    return-object v0
.end method
