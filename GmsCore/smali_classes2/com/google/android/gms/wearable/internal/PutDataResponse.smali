.class public Lcom/google/android/gms/wearable/internal/PutDataResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/gms/wearable/internal/DataItemParcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/gms/wearable/internal/au;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/au;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/PutDataResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/wearable/internal/DataItemParcelable;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/android/gms/wearable/internal/PutDataResponse;->a:I

    .line 34
    iput p2, p0, Lcom/google/android/gms/wearable/internal/PutDataResponse;->b:I

    .line 35
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/PutDataResponse;->c:Lcom/google/android/gms/wearable/internal/DataItemParcelable;

    .line 36
    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/wearable/internal/DataItemParcelable;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/wearable/internal/PutDataResponse;-><init>(IILcom/google/android/gms/wearable/internal/DataItemParcelable;)V

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/wearable/internal/PutDataResponse;Landroid/os/Parcel;I)V

    .line 50
    return-void
.end method
