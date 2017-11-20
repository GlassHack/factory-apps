.class abstract Lcom/google/android/gms/internal/gl$c;
.super Lcom/google/android/gms/internal/gl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gl$b",
        "<",
        "Lcom/google/android/gms/pseudonymous/PseudonymousIdApi$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected Qz:Lcom/google/android/gms/internal/gj;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gl$b;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/gl$c$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gl$c$1;-><init>(Lcom/google/android/gms/internal/gl$c;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gl$c;->Qz:Lcom/google/android/gms/internal/gj;

    return-void
.end method


# virtual methods
.method protected U(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/pseudonymous/PseudonymousIdApi$a;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gl$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/gl$d;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V

    return-object v0
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gl$c;->U(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/pseudonymous/PseudonymousIdApi$a;

    move-result-object v0

    return-object v0
.end method
