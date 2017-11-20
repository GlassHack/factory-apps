.class public Lcom/google/android/gms/fitness/request/SubscribeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/SubscribeRequest$1;,
        Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/SubscribeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final EN:Lcom/google/android/gms/fitness/data/Subscription;

.field private final EO:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/ad;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/ad;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/Subscription;Z)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "subscription"    # Lcom/google/android/gms/fitness/data/Subscription;
    .param p3, "serverOnly"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->EN:Lcom/google/android/gms/fitness/data/Subscription;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->EO:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->mVersionCode:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;->a(Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;)Lcom/google/android/gms/fitness/data/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->EN:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;->b(Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->EO:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;Lcom/google/android/gms/fitness/request/SubscribeRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/fitness/request/SubscribeRequest$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/SubscribeRequest;-><init>(Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSubscription()Lcom/google/android/gms/fitness/data/Subscription;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->EN:Lcom/google/android/gms/fitness/data/Subscription;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->mVersionCode:I

    return v0
.end method

.method public isServerOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->EO:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    const-string v1, "subscription"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SubscribeRequest;->EN:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/k$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/ad;->a(Lcom/google/android/gms/fitness/request/SubscribeRequest;Landroid/os/Parcel;I)V

    return-void
.end method
