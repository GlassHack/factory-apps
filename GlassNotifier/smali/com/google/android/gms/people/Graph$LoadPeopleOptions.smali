.class public Lcom/google/android/gms/people/Graph$LoadPeopleOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadPeopleOptions"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/gms/people/Graph$LoadPeopleOptions;


# instance fields
.field private Xr:Ljava/lang/String;

.field private aCD:Z

.field private aCE:I

.field private aCF:I

.field private aCI:I

.field private aCK:I

.field private aCR:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aCS:J

.field private yE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->DEFAULT:Lcom/google/android/gms/people/Graph$LoadPeopleOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1fffff

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCE:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCI:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCK:I

    return-void
.end method


# virtual methods
.method public getChangedSince()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCS:J

    return-wide v0
.end method

.method public getCircleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->Xr:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraColumns()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCF:I

    return v0
.end method

.method public getProjection()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCE:I

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

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCR:Ljava/util/Collection;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->yE:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchFields()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCI:I

    return v0
.end method

.method public getSortOrder()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCK:I

    return v0
.end method

.method public isPeopleOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCD:Z

    return v0
.end method

.method public setChangedSince(J)Lcom/google/android/gms/people/Graph$LoadPeopleOptions;
    .locals 1
    .param p1, "changedSince"    # J

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCS:J

    return-object p0
.end method

.method public setCircleId(Ljava/lang/String;)Lcom/google/android/gms/people/Graph$LoadPeopleOptions;
    .locals 0
    .param p1, "circleId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->Xr:Ljava/lang/String;

    return-object p0
.end method

.method public setExtraColumns(I)Lcom/google/android/gms/people/Graph$LoadPeopleOptions;
    .locals 0
    .param p1, "extraColumns"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCF:I

    return-object p0
.end method

.method public setPeopleOnly(Z)Lcom/google/android/gms/people/Graph$LoadPeopleOptions;
    .locals 0
    .param p1, "peopleOnly"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCD:Z

    return-object p0
.end method

.method public setProjection(I)Lcom/google/android/gms/people/Graph$LoadPeopleOptions;
    .locals 0
    .param p1, "projection"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCE:I

    return-object p0
.end method

.method public setQualifiedIds(Ljava/util/Collection;)Lcom/google/android/gms/people/Graph$LoadPeopleOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/people/Graph$LoadPeopleOptions;"
        }
    .end annotation

    .prologue
    .local p1, "qualifiedIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCR:Ljava/util/Collection;

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/gms/people/Graph$LoadPeopleOptions;
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->yE:Ljava/lang/String;

    return-object p0
.end method

.method public setSearchFields(I)Lcom/google/android/gms/people/Graph$LoadPeopleOptions;
    .locals 0
    .param p1, "searchFields"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCI:I

    return-object p0
.end method

.method public setSortOrder(I)Lcom/google/android/gms/people/Graph$LoadPeopleOptions;
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCK:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "mCircleId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->Xr:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mQualifiedIds"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCR:Ljava/util/Collection;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mProjection"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mPeopleOnly"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCD:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mChangedSince"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mQuery"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->yE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mSearchFields"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget v2, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCI:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mSortOrder"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget v2, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mExtraColumns"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget v2, p0, Lcom/google/android/gms/people/Graph$LoadPeopleOptions;->aCF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/qz;->c([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
