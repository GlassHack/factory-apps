.class public Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$1;,
        Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CL:Lcom/google/android/gms/fitness/data/DataType;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/l;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->mVersionCode:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;->a(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;
    .param p2, "x1"    # Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;-><init>(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/gms/fitness/data/Subscription;)Z
    .locals 2
    .param p1, "subscription"    # Lcom/google/android/gms/fitness/data/Subscription;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Subscription;->dF()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/l;->a(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
