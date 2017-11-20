.class Lcom/google/android/gms/internal/bq$2$1;
.super Lcom/google/android/gms/common/internal/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bq$2;->g([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/bv;",
        ">.b<",
        "Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic BQ:[B

.field final synthetic BR:Lcom/google/android/gms/internal/bq$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bq$2;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;[B)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bq$2$1;->BR:Lcom/google/android/gms/internal/bq$2;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq$2$1;->BQ:[B

    iget-object v0, p1, Lcom/google/android/gms/internal/bq$2;->BO:Lcom/google/android/gms/internal/bq;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/internal/c$b;-><init>(Lcom/google/android/gms/common/internal/c;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bq$2$1;->BQ:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/bq;->h([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;->onDroidGuardResults(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq$2$1;->BR:Lcom/google/android/gms/internal/bq$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq$2;->BO:Lcom/google/android/gms/internal/bq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bq;->disconnect()V

    return-void
.end method

.method protected cN()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq$2$1;->BR:Lcom/google/android/gms/internal/bq$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq$2;->BO:Lcom/google/android/gms/internal/bq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bq;->disconnect()V

    return-void
.end method

.method protected synthetic f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bq$2$1;->a(Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V

    return-void
.end method
