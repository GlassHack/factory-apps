.class public Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/v;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->a:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/v;->a(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
