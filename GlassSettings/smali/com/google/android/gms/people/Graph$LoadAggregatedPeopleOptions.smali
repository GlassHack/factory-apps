.class public Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadAggregatedPeopleOptions"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;


# instance fields
.field private LL:Z

.field private LM:Ljava/lang/String;

.field private LN:Z

.field private LO:I

.field private LP:I

.field private LQ:Ljava/lang/String;

.field private LR:Z

.field private LS:I

.field private LT:I

.field private LU:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->DEFAULT:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1fffff

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LO:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LS:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LT:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LU:I

    return-void
.end method


# virtual methods
.method public getExtraColumns()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LP:I

    return v0
.end method

.method public getFilterGaiaEdgeTypes()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LT:I

    return v0
.end method

.method public getFilterGaiaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LQ:Ljava/lang/String;

    return-object v0
.end method

.method public getProjection()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LO:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LM:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchFields()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LS:I

    return v0
.end method

.method public getSortOrder()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LU:I

    return v0
.end method

.method public isIncludeEvergreenPeople()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LR:Z

    return v0
.end method

.method public isIncludeInvisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LL:Z

    return v0
.end method

.method public isPeopleOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LN:Z

    return v0
.end method

.method public setExtraColumns(I)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "extraColumns"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LP:I

    return-object p0
.end method

.method public setFilterGaiaEdgeType(I)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "filterGaiaEdgeTypes"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LT:I

    return-object p0
.end method

.method public setFilterGaiaId(Ljava/lang/String;)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "filterGaiaId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LQ:Ljava/lang/String;

    return-object p0
.end method

.method public setIncludeEvergreenPeople(Z)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "includeEvergreenPeople"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LR:Z

    return-object p0
.end method

.method public setIncludeInvisible(Z)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "includeInvisible"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LL:Z

    return-object p0
.end method

.method public setPeopleOnly(Z)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "peopleOnly"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LN:Z

    return-object p0
.end method

.method public setProjection(I)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "projection"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LO:I

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LM:Ljava/lang/String;

    return-object p0
.end method

.method public setSearchFields(I)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "searchFields"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LS:I

    return-object p0
.end method

.method public setSortOrder(I)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->LU:I

    return-object p0
.end method
