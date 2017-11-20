.class final Lcom/google/android/gms/wearable/internal/k;
.super Lcom/google/android/gms/wearable/internal/c;
.source "SourceFile"


# instance fields
.field final synthetic d:Landroid/net/Uri;

.field final synthetic e:Lcom/google/android/gms/wearable/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/e;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/k;->e:Lcom/google/android/gms/wearable/internal/e;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/k;->d:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/google/android/gms/wearable/l;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->b(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/l;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 1

    .prologue
    .line 101
    check-cast p1, Lcom/google/android/gms/wearable/internal/ay;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/k;->d:Landroid/net/Uri;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/ay;->a(Lcom/google/android/gms/common/api/i;Landroid/net/Uri;)V

    return-void
.end method
