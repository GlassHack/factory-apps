.class Lcom/google/android/gms/internal/jj$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jj;->flush(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PO:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic Se:Lcom/google/android/gms/internal/jj;

.field final synthetic Sg:Lcom/google/android/gms/internal/jj$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/jj$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jj$3;->Se:Lcom/google/android/gms/internal/jj;

    iput-object p2, p0, Lcom/google/android/gms/internal/jj$3;->PO:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p3, p0, Lcom/google/android/gms/internal/jj$3;->Sg:Lcom/google/android/gms/internal/jj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jj$3;->PO:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/jj$3;->Sg:Lcom/google/android/gms/internal/jj$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    return-void
.end method
