.class Lcom/google/android/gms/internal/aw$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aw;->flush(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tu:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic vL:Lcom/google/android/gms/internal/aw;

.field final synthetic vN:Lcom/google/android/gms/internal/aw$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/aw$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aw$3;->vL:Lcom/google/android/gms/internal/aw;

    iput-object p2, p0, Lcom/google/android/gms/internal/aw$3;->tu:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p3, p0, Lcom/google/android/gms/internal/aw$3;->vN:Lcom/google/android/gms/internal/aw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aw$3;->tu:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/aw$3;->vN:Lcom/google/android/gms/internal/aw$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    return-void
.end method
