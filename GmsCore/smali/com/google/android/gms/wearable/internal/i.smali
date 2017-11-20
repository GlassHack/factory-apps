.class final Lcom/google/android/gms/wearable/internal/i;
.super Lcom/google/android/gms/wearable/internal/c;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/wearable/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/e;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/i;->d:Lcom/google/android/gms/wearable/internal/e;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 0

    .prologue
    .line 343
    return-object p1
.end method

.method protected final synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 2

    .prologue
    .line 343
    check-cast p1, Lcom/google/android/gms/wearable/internal/ay;

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/ay;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/ai;

    new-instance v1, Lcom/google/android/gms/wearable/internal/j;

    invoke-direct {v1, p0}, Lcom/google/android/gms/wearable/internal/j;-><init>(Lcom/google/android/gms/wearable/internal/i;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ai;->f(Lcom/google/android/gms/wearable/internal/ac;)V

    return-void
.end method
