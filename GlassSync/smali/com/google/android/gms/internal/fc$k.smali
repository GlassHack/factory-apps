.class final Lcom/google/android/gms/internal/fc$k;
.super Lcom/google/android/gms/common/internal/c$b;

# interfaces
.implements Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/ev;",
        ">.b<",
        "Lcom/google/android/gms/common/api/BaseImplementation$b",
        "<",
        "Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;",
        ">;>;",
        "Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;"
    }
.end annotation


# instance fields
.field final synthetic MY:Lcom/google/android/gms/internal/fc;

.field private final Ng:Z

.field private final Nh:Ljava/lang/String;

.field private final Ni:Ljava/lang/String;

.field private final Nj:Ljava/lang/String;

.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/common/api/Status;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fc$k;->MY:Lcom/google/android/gms/internal/fc;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/c$b;-><init>(Lcom/google/android/gms/common/internal/c;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/fc$k;->px:Lcom/google/android/gms/common/api/Status;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/fc$k;->Ng:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/fc$k;->Nh:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/fc$k;->Ni:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/fc$k;->Nj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected cN()V
    .locals 0

    return-void
.end method

.method protected d(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected synthetic f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fc$k;->d(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method

.method public getConsentButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$k;->Nj:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$k;->Nh:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentTitleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$k;->Ni:Ljava/lang/String;

    return-object v0
.end method

.method public getShowConsent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fc$k;->Ng:Z

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$k;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
