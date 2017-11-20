.class public Lcom/google/android/gms/internal/rh;
.super Ljava/lang/Object;


# instance fields
.field private final aEq:Lcom/google/android/gms/internal/ri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ri",
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

    new-instance v0, Lcom/google/android/gms/internal/ri;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ri;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/rh;->aEq:Lcom/google/android/gms/internal/ri;

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rh;->aEq:Lcom/google/android/gms/internal/ri;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ri;->C(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public df(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rh;->aEq:Lcom/google/android/gms/internal/ri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ri;->df(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/rh;->aEq:Lcom/google/android/gms/internal/ri;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ri;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rh;->aEq:Lcom/google/android/gms/internal/ri;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
