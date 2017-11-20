.class final Lcom/google/android/gms/internal/rb$ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/rm$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ab"
.end annotation


# instance fields
.field private final awb:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rb$ab;->awb:Lcom/google/android/gms/common/api/a$b;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lcom/google/android/gms/people/model/AggregatedPersonBuffer;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/rb;->b(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rb$ab;->awb:Lcom/google/android/gms/common/api/a$b;

    new-instance v2, Lcom/google/android/gms/internal/rb$a;

    invoke-direct {v2, v0, p3}, Lcom/google/android/gms/internal/rb$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/model/AggregatedPersonBuffer;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/a$b;->f(Ljava/lang/Object;)V

    return-void
.end method
