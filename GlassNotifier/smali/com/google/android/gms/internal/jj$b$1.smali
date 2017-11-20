.class Lcom/google/android/gms/internal/jj$b$1;
.super Lcom/google/android/gms/internal/jl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jj$b;->a(Lcom/google/android/gms/internal/jk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Si:Lcom/google/android/gms/internal/jj$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jj$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jj$b$1;->Si:Lcom/google/android/gms/internal/jj$b;

    invoke-direct {p0}, Lcom/google/android/gms/internal/jl$a;-><init>()V

    return-void
.end method


# virtual methods
.method public p(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jj$b$1;->Si:Lcom/google/android/gms/internal/jj$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jj$b;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
