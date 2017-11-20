.class public Lcom/google/android/gms/fitness/request/UnsubscribeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/UnsubscribeRequest$1;,
        Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/UnsubscribeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CL:Lcom/google/android/gms/fitness/data/DataType;

.field private final Cq:Lcom/google/android/gms/fitness/data/DataSource;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/af;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/af;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;
    .param p3, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->mVersionCode:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;->a(Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;->b(Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;Lcom/google/android/gms/fitness/request/UnsubscribeRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/fitness/request/UnsubscribeRequest$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;-><init>(Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply(Lcom/google/android/gms/fitness/data/Subscription;)Z
    .locals 2
    .param p1, "subscription"    # Lcom/google/android/gms/fitness/data/Subscription;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Subscription;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Subscription;->dF()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->a(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)Z

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

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->Cq:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;->CL:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/af;->a(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;Landroid/os/Parcel;I)V

    return-void
.end method
