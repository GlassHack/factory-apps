.class public final Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/People$PeopleOptions1p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field aCX:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;->aCX:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/people/People$PeopleOptions1p;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;->aCX:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Must provide valid client application ID!"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/people/People$PeopleOptions1p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/people/People$PeopleOptions1p;-><init>(Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;Lcom/google/android/gms/people/People$1;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClientApplicationId(I)Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;
    .locals 0
    .param p1, "clientApplicationId"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;->aCX:I

    return-object p0
.end method
