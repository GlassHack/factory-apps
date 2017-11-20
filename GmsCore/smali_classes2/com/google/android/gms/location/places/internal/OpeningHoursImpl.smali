.class public final Lcom/google/android/gms/location/places/internal/OpeningHoursImpl;
.super Lcom/google/android/gms/location/places/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/internal/d;


# instance fields
.field final a:I

.field final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/gms/location/places/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/OpeningHoursImpl;->CREATOR:Lcom/google/android/gms/location/places/internal/d;

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/gms/location/places/f;-><init>()V

    .line 90
    iput p1, p0, Lcom/google/android/gms/location/places/internal/OpeningHoursImpl;->a:I

    .line 91
    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/OpeningHoursImpl;->b:Ljava/util/List;

    .line 92
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 118
    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/internal/d;->a(Lcom/google/android/gms/location/places/internal/OpeningHoursImpl;Landroid/os/Parcel;)V

    .line 119
    return-void
.end method
