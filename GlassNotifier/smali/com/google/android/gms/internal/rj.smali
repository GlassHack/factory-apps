.class Lcom/google/android/gms/internal/rj;
.super Lcom/google/android/gms/people/model/AggregatedPersonBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/rj$a;,
        Lcom/google/android/gms/internal/rj$b;
    }
.end annotation


# instance fields
.field private volatile ZY:Z

.field private aDd:Lcom/google/android/gms/internal/rp$b;

.field private final aEA:Z

.field private final aEr:I

.field private aEs:Lcom/google/android/gms/common/data/DataHolder;

.field private aEt:Landroid/database/Cursor;

.field private aEu:Lcom/google/android/gms/internal/qv;

.field private aEv:Lcom/google/android/gms/internal/qv;

.field private aEw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aEx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aEy:Lcom/google/android/gms/internal/rj$b;

.field private aEz:Lcom/google/android/gms/internal/rj$b;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/database/Cursor;Landroid/content/Context;ILcom/google/android/gms/internal/qv;Lcom/google/android/gms/internal/qv;Ljava/util/ArrayList;Ljava/util/HashMap;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            "I",
            "Lcom/google/android/gms/internal/qv;",
            "Lcom/google/android/gms/internal/qv;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/people/model/AggregatedPersonBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p8}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/qv;->size()I

    move-result v0

    if-ne p4, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->K(Z)V

    invoke-virtual {p6}, Lcom/google/android/gms/internal/qv;->size()I

    move-result v0

    if-ne p4, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->K(Z)V

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p4, v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->K(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/rj;->aEs:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p2, p0, Lcom/google/android/gms/internal/rj;->aEt:Landroid/database/Cursor;

    iput p4, p0, Lcom/google/android/gms/internal/rj;->aEr:I

    iput-object p7, p0, Lcom/google/android/gms/internal/rj;->aEw:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/internal/rj;->mContext:Landroid/content/Context;

    iput-object p8, p0, Lcom/google/android/gms/internal/rj;->aEx:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/rj$1;

    iget-object v3, p0, Lcom/google/android/gms/internal/rj;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/rj$1;-><init>(Lcom/google/android/gms/internal/rj;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/rj;->aEy:Lcom/google/android/gms/internal/rj$b;

    new-instance v0, Lcom/google/android/gms/internal/rj$2;

    iget-object v3, p0, Lcom/google/android/gms/internal/rj;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/rj$2;-><init>(Lcom/google/android/gms/internal/rj;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/rj;->aEz:Lcom/google/android/gms/internal/rj$b;

    iput-object p5, p0, Lcom/google/android/gms/internal/rj;->aEu:Lcom/google/android/gms/internal/qv;

    iput-object p6, p0, Lcom/google/android/gms/internal/rj;->aEv:Lcom/google/android/gms/internal/qv;

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const-string v0, "PeopleAggregator"

    const-string v3, "PeopleExtraColumnBitmask.EMAILS is not supported in aggregation.  Ignored."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/rc;->x(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_4

    :goto_3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/rj;->aEA:Z

    new-instance v0, Lcom/google/android/gms/internal/rp$b;

    invoke-direct {v0, p11}, Lcom/google/android/gms/internal/rp$b;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/rj;->aDd:Lcom/google/android/gms/internal/rp$b;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method static synthetic a(Lcom/google/android/gms/internal/rj;)Lcom/google/android/gms/internal/qv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->aEu:Lcom/google/android/gms/internal/qv;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/rj;)Lcom/google/android/gms/internal/qv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->aEv:Lcom/google/android/gms/internal/qv;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/rj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rj;->rx()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/rj;)Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->aEs:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/rj;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->aEt:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/rj;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->aEw:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/rj;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/rj;->aEA:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/rj;)Lcom/google/android/gms/internal/rp$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->aDd:Lcom/google/android/gms/internal/rp$b;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/rj;)Lcom/google/android/gms/internal/rj$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->aEy:Lcom/google/android/gms/internal/rj$b;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/rj;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->aEx:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/rj;)Lcom/google/android/gms/internal/rj$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->aEz:Lcom/google/android/gms/internal/rj$b;

    return-object v0
.end method

.method private rx()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/rj;->ZY:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rj;->jy(I)Lcom/google/android/gms/people/model/AggregatedPerson;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/rj;->rx()V

    iget v0, p0, Lcom/google/android/gms/internal/rj;->aEr:I

    return v0
.end method

.method public jy(I)Lcom/google/android/gms/people/model/AggregatedPerson;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/rj;->rx()V

    new-instance v0, Lcom/google/android/gms/internal/rj$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/rj$a;-><init>(Lcom/google/android/gms/internal/rj;I)V

    return-object v0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/rj;->ZY:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/rj;->ZY:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->aEs:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/rj;->aEt:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/google/android/gms/internal/rj;->aEs:Lcom/google/android/gms/common/data/DataHolder;

    iput-object v1, p0, Lcom/google/android/gms/internal/rj;->aEt:Landroid/database/Cursor;

    iput-object v1, p0, Lcom/google/android/gms/internal/rj;->aEu:Lcom/google/android/gms/internal/qv;

    iput-object v1, p0, Lcom/google/android/gms/internal/rj;->aEv:Lcom/google/android/gms/internal/qv;

    iput-object v1, p0, Lcom/google/android/gms/internal/rj;->aEw:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/rj;->aEx:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/google/android/gms/internal/rj;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/rj;->aEy:Lcom/google/android/gms/internal/rj$b;

    iput-object v1, p0, Lcom/google/android/gms/internal/rj;->aEz:Lcom/google/android/gms/internal/rj$b;

    iput-object v1, p0, Lcom/google/android/gms/internal/rj;->aDd:Lcom/google/android/gms/internal/rp$b;

    goto :goto_0
.end method
