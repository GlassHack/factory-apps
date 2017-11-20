.class Lcom/google/android/gms/internal/gl$c$1;
.super Lcom/google/android/gms/internal/gl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gl$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic QA:Lcom/google/android/gms/internal/gl$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gl$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gl$c$1;->QA:Lcom/google/android/gms/internal/gl$c;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gl$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gl$c$1;->QA:Lcom/google/android/gms/internal/gl$c;

    new-instance v1, Lcom/google/android/gms/internal/gl$d;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/gl$d;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gl$c;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
