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
.field private aCC:Z

.field private aCD:Z

.field private aCE:I

.field private aCF:I

.field private aCG:Ljava/lang/String;

.field private aCH:Z

.field private aCI:I

.field private aCJ:I

.field private aCK:I

.field private yE:Ljava/lang/String;


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

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCE:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCI:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCJ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCK:I

    return-void
.end method


# virtual methods
.method public getExtraColumns()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCF:I

    return v0
.end method

.method public getFilterGaiaEdgeTypes()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCJ:I

    return v0
.end method

.method public getFilterGaiaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCG:Ljava/lang/String;

    return-object v0
.end method

.method public getProjection()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCE:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->yE:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchFields()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCI:I

    return v0
.end method

.method public getSortOrder()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCK:I

    return v0
.end method

.method public isIncludeEvergreenPeople()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCH:Z

    return v0
.end method

.method public isIncludeInvisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCC:Z

    return v0
.end method

.method public isPeopleOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCD:Z

    return v0
.end method

.method public setExtraColumns(I)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "extraColumns"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCF:I

    return-object p0
.end method

.method public setFilterGaiaEdgeType(I)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "filterGaiaEdgeTypes"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCJ:I

    return-object p0
.end method

.method public setFilterGaiaId(Ljava/lang/String;)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "filterGaiaId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCG:Ljava/lang/String;

    return-object p0
.end method

.method public setIncludeEvergreenPeople(Z)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "includeEvergreenPeople"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCH:Z

    return-object p0
.end method

.method public setIncludeInvisible(Z)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "includeInvisible"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCC:Z

    return-object p0
.end method

.method public setPeopleOnly(Z)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "peopleOnly"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCD:Z

    return-object p0
.end method

.method public setProjection(I)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "projection"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCE:I

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->yE:Ljava/lang/String;

    return-object p0
.end method

.method public setSearchFields(I)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "searchFields"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCI:I

    return-object p0
.end method

.method public setSortOrder(I)Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCK:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "mIncludeInvisible"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCC:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mQuery"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->yE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mPeopleOnly"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCD:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mProjection"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mExtraColumns"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mFilterGaiaId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCG:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mIncludeEvergreenPeople"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCH:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mSearchFields"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget v2, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCI:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mFilterGaiaEdgeTypes"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget v2, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCJ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "mSortOrder"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget v2, p0, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->aCK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/qz;->c([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
