.class final Lcom/google/android/gms/internal/rb$ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ad"
.end annotation


# instance fields
.field private final FJ:Lcom/google/android/gms/common/api/Status;

.field private final aDQ:Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

.field private final aDR:Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rb$ad;->FJ:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/rb$ad;->aDQ:Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

    iput-object p3, p0, Lcom/google/android/gms/internal/rb$ad;->aDR:Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;

    return-void
.end method


# virtual methods
.method public getEmailTypeMapBundle()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/rb;->rq()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaMap()Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$ad;->aDR:Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;

    return-object v0
.end method

.method public getPeople()Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$ad;->aDQ:Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

    return-object v0
.end method

.method public getPhoneTypeMapBundle()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/rb;->rp()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$ad;->FJ:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$ad;->aDQ:Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$ad;->aDQ:Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/rb$ad;->aDR:Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$ad;->aDR:Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/people/exp/ContactGaiaIdRawBuffer;->close()V

    :cond_1
    return-void
.end method
