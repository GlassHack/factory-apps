.class Lcom/google/android/gms/internal/rt$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rt$6;->bg(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FT:Lcom/google/android/gms/common/api/Status;

.field final synthetic aFS:Lcom/google/android/gms/internal/rt$6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rt$6;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rt$6$1;->aFS:Lcom/google/android/gms/internal/rt$6;

    iput-object p2, p0, Lcom/google/android/gms/internal/rt$6$1;->FT:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmailTypeMapBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGaiaMap()Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPeople()Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneTypeMapBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rt$6$1;->FT:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
