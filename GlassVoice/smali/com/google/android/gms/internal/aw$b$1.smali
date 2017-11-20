.class Lcom/google/android/gms/internal/aw$b$1;
.super Lcom/google/android/gms/internal/ay$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aw$b;->a(Lcom/google/android/gms/internal/ax;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vP:Lcom/google/android/gms/internal/aw$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aw$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aw$b$1;->vP:Lcom/google/android/gms/internal/aw$b;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ay$a;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aw$b$1;->vP:Lcom/google/android/gms/internal/aw$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aw$b;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
