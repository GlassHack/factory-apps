.class final Lcom/google/android/gms/wearable/internal/f;
.super Lcom/google/android/gms/wearable/internal/c;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/wearable/PutDataRequest;

.field final synthetic e:Lcom/google/android/gms/wearable/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/e;Lcom/google/android/gms/wearable/PutDataRequest;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f;->e:Lcom/google/android/gms/wearable/internal/e;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/f;->d:Lcom/google/android/gms/wearable/PutDataRequest;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/gms/wearable/internal/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/l;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/j;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/gms/wearable/internal/ay;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f;->d:Lcom/google/android/gms/wearable/PutDataRequest;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/ay;->a(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/wearable/PutDataRequest;)V

    return-void
.end method
