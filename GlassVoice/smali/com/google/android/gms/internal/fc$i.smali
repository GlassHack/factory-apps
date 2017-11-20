.class final Lcom/google/android/gms/internal/fc$i;
.super Lcom/google/android/gms/common/internal/c$b;

# interfaces
.implements Lcom/google/android/gms/people/GraphUpdate$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/ev;",
        ">.b<",
        "Lcom/google/android/gms/common/api/BaseImplementation$b",
        "<",
        "Lcom/google/android/gms/people/GraphUpdate$a;",
        ">;>;",
        "Lcom/google/android/gms/people/GraphUpdate$a;"
    }
.end annotation


# instance fields
.field private final AC:Ljava/lang/String;

.field final synthetic MY:Lcom/google/android/gms/internal/fc;

.field private final Ne:Ljava/lang/String;

.field private final Nf:[Ljava/lang/String;

.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/common/api/Status;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/GraphUpdate$a;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fc$i;->MY:Lcom/google/android/gms/internal/fc;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/c$b;-><init>(Lcom/google/android/gms/common/internal/c;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/fc$i;->px:Lcom/google/android/gms/common/api/Status;

    iput-object p4, p0, Lcom/google/android/gms/internal/fc$i;->AC:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/fc$i;->Ne:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/fc$i;->Nf:[Ljava/lang/String;

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
            "Lcom/google/android/gms/people/GraphUpdate$a;",
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fc$i;->d(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method

.method public fA()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$i;->Nf:[Ljava/lang/String;

    return-object v0
.end method

.method public getCircleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$i;->AC:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$i;->Ne:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$i;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
