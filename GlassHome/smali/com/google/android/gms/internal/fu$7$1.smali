.class Lcom/google/android/gms/internal/fu$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fu$7;->M(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pj:Lcom/google/android/gms/internal/fu$7;

.field final synthetic pt:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fu$7;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$7$1;->Pj:Lcom/google/android/gms/internal/fu$7;

    iput-object p2, p0, Lcom/google/android/gms/internal/fu$7$1;->pt:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContactsGaiaIds()Lcom/google/android/gms/people/model/ContactGaiaIdBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$7$1;->pt:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
