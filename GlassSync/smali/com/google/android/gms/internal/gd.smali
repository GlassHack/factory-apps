.class public Lcom/google/android/gms/internal/gd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gd$1;,
        Lcom/google/android/gms/internal/gd$a;
    }
.end annotation


# instance fields
.field private final Qh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/gd$a;",
            ">;"
        }
    .end annotation
.end field

.field private Qi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gd;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gd;->Qh:Ljava/util/ArrayList;

    iput p1, p0, Lcom/google/android/gms/internal/gd;->Qi:I

    return-void
.end method

.method private gq()V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gd;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gd;->getCapacity()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->Qh:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->Qh:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/gd$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/gd$a;-><init>(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;Lcom/google/android/gms/internal/gd$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gd;->gq()V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->Qh:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/gd$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/gd$a;-><init>(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;Lcom/google/android/gms/internal/gd$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gd;->gq()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->Qh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dM(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/gd;->Qi:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/gd;->gq()V

    return-void
.end method

.method public getCapacity()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gd;->Qi:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->Qh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public gp()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/gd$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->Qh:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->Qh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFull()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gd;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gd;->getCapacity()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
