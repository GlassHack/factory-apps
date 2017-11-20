.class final Lcom/google/android/gms/wearable/internal/aq;
.super Lcom/google/android/gms/wearable/internal/c;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/wearable/internal/ap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/ap;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/aq;->d:Lcom/google/android/gms/wearable/internal/ap;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/gms/wearable/internal/ar;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/ar;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/google/android/gms/wearable/internal/ay;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/wearable/internal/ay;->a(Lcom/google/android/gms/common/api/i;)V

    return-void
.end method
