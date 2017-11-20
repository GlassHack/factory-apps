.class public Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .prologue
    .line 104
    new-instance v0, Lcom/google/android/gms/fitness/request/k;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->a:I

    .line 46
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/Subscription;)Z
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Subscription;->e()Lcom/google/android/gms/fitness/data/DataType;

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

.method final b()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 119
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/k;->a(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;Landroid/os/Parcel;I)V

    .line 120
    return-void
.end method
