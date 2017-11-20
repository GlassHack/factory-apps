.class final Lcom/google/android/gms/wearable/internal/bc;
.super Lcom/google/android/gms/wearable/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/i;

.field final synthetic b:Lcom/google/android/gms/wearable/internal/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/ay;Lcom/google/android/gms/common/api/i;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/bc;->b:Lcom/google/android/gms/wearable/internal/ay;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/bc;->a:Lcom/google/android/gms/common/api/i;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/internal/SendMessageResponse;)V
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bc;->a:Lcom/google/android/gms/common/api/i;

    new-instance v1, Lcom/google/android/gms/wearable/internal/an;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget v3, p1, Lcom/google/android/gms/wearable/internal/SendMessageResponse;->b:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget v3, p1, Lcom/google/android/gms/wearable/internal/SendMessageResponse;->c:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/an;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/i;->a(Ljava/lang/Object;)V

    .line 398
    return-void
.end method
