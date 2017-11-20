.class Lcom/google/android/gms/internal/bq$2;
.super Lcom/google/android/gms/internal/bp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bq;->a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BO:Lcom/google/android/gms/internal/bq;

.field final synthetic BP:Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bq$2;->BO:Lcom/google/android/gms/internal/bq;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq$2;->BP:Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;-><init>()V

    return-void
.end method


# virtual methods
.method public g([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/bq$2$1;

    iget-object v1, p0, Lcom/google/android/gms/internal/bq$2;->BP:Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/bq$2$1;-><init>(Lcom/google/android/gms/internal/bq$2;Lcom/google/android/gms/droidguard/DroidGuardResultsCallback;[B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bq$2;->BO:Lcom/google/android/gms/internal/bq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bq;->a(Lcom/google/android/gms/common/internal/c$b;)V

    return-void
.end method
