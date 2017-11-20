.class final Lcom/google/android/gms/internal/rb$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/GraphUpdate$AddCircleResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final FJ:Lcom/google/android/gms/common/api/Status;

.field private final Xr:Ljava/lang/String;

.field private final aDD:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rb$g;->FJ:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/rb$g;->Xr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/rb$g;->aDD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCircleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$g;->Xr:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$g;->aDD:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$g;->FJ:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
