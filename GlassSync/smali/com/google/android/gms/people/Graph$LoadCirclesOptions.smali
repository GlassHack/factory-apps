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
.field private LV:I

.field private LW:Ljava/lang/String;

.field private LX:Ljava/lang/String;

.field private LY:Z


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

    iput v0, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->LV:I

    return-void
.end method


# virtual methods
.method public getFilterCircleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->LW:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterCircleNamePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->LX:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterCircleType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->LV:I

    return v0
.end method

.method public isGetVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->LY:Z

    return v0
.end method

.method public setFilterCircleId(Ljava/lang/String;)Lcom/google/android/gms/people/Graph$LoadCirclesOptions;
    .locals 0
    .param p1, "filterCircleId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->LW:Ljava/lang/String;

    return-object p0
.end method

.method public setFilterCircleNamePrefix(Ljava/lang/String;)Lcom/google/android/gms/people/Graph$LoadCirclesOptions;
    .locals 0
    .param p1, "filterCircleNamePrefix"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->LX:Ljava/lang/String;

    return-object p0
.end method

.method public setFilterCircleType(I)Lcom/google/android/gms/people/Graph$LoadCirclesOptions;
    .locals 0
    .param p1, "filterCircleType"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->LV:I

    return-object p0
.end method

.method public setGetVisibility(Z)Lcom/google/android/gms/people/Graph$LoadCirclesOptions;
    .locals 0
    .param p1, "getVisibility"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->LY:Z

    return-object p0
.end method
