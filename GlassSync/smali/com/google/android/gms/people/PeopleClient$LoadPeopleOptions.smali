.class public Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/PeopleClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadPeopleOptions"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;


# instance fields
.field private AC:Ljava/lang/String;

.field private LM:Ljava/lang/String;

.field private LN:Z

.field private LO:I

.field private LS:I

.field private LU:I

.field private Mb:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Mc:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->DEFAULT:Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1fffff

    iput v0, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LO:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LS:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LU:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;
    .locals 3

    new-instance v0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->AC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->setCircleId(Ljava/lang/String;)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->Mb:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->setQualifiedIds(Ljava/util/Collection;)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LO:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->setProjection(I)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LN:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->setPeopleOnly(Z)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->Mc:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->setChangedSince(J)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->setQuery(Ljava/lang/String;)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LS:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->setSearchFields(I)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LU:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->setSortOrder(I)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->clone()Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    move-result-object v0

    return-object v0
.end method

.method public getChangedSince()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->Mc:J

    return-wide v0
.end method

.method public getCircleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->AC:Ljava/lang/String;

    return-object v0
.end method

.method public getProjection()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LO:I

    return v0
.end method

.method public getQualifiedIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->Mb:Ljava/util/Collection;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LM:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchFields()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LS:I

    return v0
.end method

.method public getSortOrder()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LU:I

    return v0
.end method

.method public isPeopleOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LN:Z

    return v0
.end method

.method public setChangedSince(J)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;
    .locals 0
    .param p1, "changedSince"    # J

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->Mc:J

    return-object p0
.end method

.method public setCircleId(Ljava/lang/String;)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;
    .locals 0
    .param p1, "circleId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->AC:Ljava/lang/String;

    return-object p0
.end method

.method public setPeopleOnly(Z)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;
    .locals 0
    .param p1, "peopleOnly"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LN:Z

    return-object p0
.end method

.method public setProjection(I)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;
    .locals 0
    .param p1, "projection"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LO:I

    return-object p0
.end method

.method public setQualifiedIds(Ljava/util/Collection;)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;"
        }
    .end annotation

    .prologue
    .local p1, "qualifiedIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->Mb:Ljava/util/Collection;

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LM:Ljava/lang/String;

    return-object p0
.end method

.method public setSearchFields(I)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;
    .locals 0
    .param p1, "searchFields"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LS:I

    return-object p0
.end method

.method public setSortOrder(I)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->LU:I

    return-object p0
.end method
