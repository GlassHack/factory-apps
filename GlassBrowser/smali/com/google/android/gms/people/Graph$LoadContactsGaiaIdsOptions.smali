.class public Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadContactsGaiaIdsOptions"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;


# instance fields
.field private LQ:Ljava/lang/String;

.field private LT:I

.field private LZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;

    invoke-direct {v0}, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;->DEFAULT:Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;->LT:I

    return-void
.end method


# virtual methods
.method public getFilterContactInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;->LZ:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterGaiaEdgeTypes()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;->LT:I

    return v0
.end method

.method public getFilterGaiaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;->LQ:Ljava/lang/String;

    return-object v0
.end method

.method public setFilterContactInfo(Ljava/lang/String;)Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;
    .locals 0
    .param p1, "filterContactInfo"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;->LZ:Ljava/lang/String;

    return-object p0
.end method

.method public setFilterGaiaEdgeTypes(I)Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;
    .locals 0
    .param p1, "filterGaiaEdgeTypes"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;->LT:I

    return-object p0
.end method

.method public setFilterGaiaId(Ljava/lang/String;)Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;
    .locals 0
    .param p1, "filterGaiaId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;->LQ:Ljava/lang/String;

    return-object p0
.end method
