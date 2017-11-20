.class public final Lcom/google/android/gms/people/People$PeopleOptions1p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/People;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeopleOptions1p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;
    }
.end annotation


# instance fields
.field private final aCX:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;->aCX:I

    iput v0, p0, Lcom/google/android/gms/people/People$PeopleOptions1p;->aCX:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;Lcom/google/android/gms/people/People$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/people/People$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/people/People$PeopleOptions1p;-><init>(Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/people/People$PeopleOptions1p;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/People$PeopleOptions1p;->aCX:I

    return v0
.end method

.method public static builder()Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/people/People$PeopleOptions1p$Builder;-><init>()V

    return-object v0
.end method
