.class public Lcom/google/android/gms/internal/by;
.super Lcom/google/android/gms/common/internal/c;

# interfaces
.implements Lcom/google/android/gms/internal/bx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/cc;",
        ">;",
        "Lcom/google/android/gms/internal/bx;"
    }
.end annotation


# static fields
.field private static final Ds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/by$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/by$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/by;->Ds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/by;->pg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected M(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cc;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/cc$a;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cc;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/c$d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v2, 0x5d4044

    invoke-virtual {p0}, Lcom/google/android/gms/internal/by;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/by;->pg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/by;->cL()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/h;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public dH()Lcom/google/android/gms/internal/cc;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/by;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cc;

    return-object v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitnessService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.fitness.GoogleFitnessService.START"

    return-object v0
.end method

.method protected synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/by;->M(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cc;

    move-result-object v0

    return-object v0
.end method
