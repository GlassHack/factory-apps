.class final Lcom/google/android/gms/wearable/internal/bb;
.super Lcom/google/android/gms/wearable/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/i;

.field final synthetic b:Lcom/google/android/gms/wearable/internal/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/ay;Lcom/google/android/gms/common/api/i;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/bb;->b:Lcom/google/android/gms/wearable/internal/ay;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/bb;->a:Lcom/google/android/gms/common/api/i;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bb;->a:Lcom/google/android/gms/common/api/i;

    new-instance v1, Lcom/google/android/gms/wearable/l;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/l;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/i;->a(Ljava/lang/Object;)V

    .line 376
    return-void
.end method
