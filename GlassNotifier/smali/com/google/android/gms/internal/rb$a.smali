.class final Lcom/google/android/gms/internal/rb$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final FJ:Lcom/google/android/gms/common/api/Status;

.field private final aDz:Lcom/google/android/gms/people/model/AggregatedPersonBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/model/AggregatedPersonBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rb$a;->FJ:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/rb$a;->aDz:Lcom/google/android/gms/people/model/AggregatedPersonBuffer;

    return-void
.end method


# virtual methods
.method public getAggregatedPeople()Lcom/google/android/gms/people/model/AggregatedPersonBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$a;->aDz:Lcom/google/android/gms/people/model/AggregatedPersonBuffer;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$a;->FJ:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$a;->aDz:Lcom/google/android/gms/people/model/AggregatedPersonBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$a;->aDz:Lcom/google/android/gms/people/model/AggregatedPersonBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/people/model/AggregatedPersonBuffer;->close()V

    :cond_0
    return-void
.end method
