.class public Lcom/google/android/gms/people/Graph$LoadCirclesOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadCirclesOptions"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/gms/people/Graph$LoadCirclesOptions;


# instance fields
.field private aCL:I

.field private aCM:Ljava/lang/String;

.field private aCN:Ljava/lang/String;

.field private aCO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;

    invoke-direct {v0}, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->DEFAULT:Lcom/google/android/gms/people/Graph$LoadCirclesOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCL:I

    return-void
.end method


# virtual methods
.method public getFilterCircleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCM:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterCircleNamePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCN:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterCircleType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCL:I

    return v0
.end method

.method public isGetVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCO:Z

    return v0
.end method

.method public setFilterCircleId(Ljava/lang/String;)Lcom/google/android/gms/people/Graph$LoadCirclesOptions;
    .locals 0
    .param p1, "filterCircleId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCM:Ljava/lang/String;

    return-object p0
.end method

.method public setFilterCircleNamePrefix(Ljava/lang/String;)Lcom/google/android/gms/people/Graph$LoadCirclesOptions;
    .locals 0
    .param p1, "filterCircleNamePrefix"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCN:Ljava/lang/String;

    return-object p0
.end method

.method public setFilterCircleType(I)Lcom/google/android/gms/people/Graph$LoadCirclesOptions;
    .locals 0
    .param p1, "filterCircleType"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCL:I

    return-object p0
.end method

.method public setGetVisibility(Z)Lcom/google/android/gms/people/Graph$LoadCirclesOptions;
    .locals 0
    .param p1, "getVisibility"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCO:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "mFilterCircleType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mFilterCircleId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mFilterCircleNamePrefix"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCN:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mGetVisibility"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->aCO:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/qz;->c([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
