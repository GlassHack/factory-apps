.class public Lcom/google/android/gms/internal/fi;
.super Ljava/lang/Object;


# instance fields
.field private final NP:Lcom/google/android/gms/internal/fj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fj",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/fj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fi;->NP:Lcom/google/android/gms/internal/fj;

    return-void
.end method


# virtual methods
.method public aJ(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->NP:Lcom/google/android/gms/internal/fj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fj;->aJ(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public k(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->NP:Lcom/google/android/gms/internal/fj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/fj;->l(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->NP:Lcom/google/android/gms/internal/fj;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/fj;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fi;->NP:Lcom/google/android/gms/internal/fj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fj;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
