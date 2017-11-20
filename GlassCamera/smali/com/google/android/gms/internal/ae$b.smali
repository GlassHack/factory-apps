.class Lcom/google/android/gms/internal/ae$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic uB:Lcom/google/android/gms/internal/ae;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ae$b;->uB:Lcom/google/android/gms/internal/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/internal/ae$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ae$b;-><init>(Lcom/google/android/gms/internal/ae;)V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ae$b;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->b(Lcom/google/android/gms/internal/ae;)V

    return-void
.end method
