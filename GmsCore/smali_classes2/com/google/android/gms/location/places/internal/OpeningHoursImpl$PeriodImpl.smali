.class Lcom/google/android/gms/location/places/internal/OpeningHoursImpl$PeriodImpl;
.super Lcom/google/android/gms/location/places/g;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/internal/e;


# instance fields
.field final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/location/places/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/OpeningHoursImpl$PeriodImpl;->CREATOR:Lcom/google/android/gms/location/places/internal/e;

    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/location/places/g;-><init>()V

    .line 42
    iput p1, p0, Lcom/google/android/gms/location/places/internal/OpeningHoursImpl$PeriodImpl;->a:I

    .line 43
    iput p2, p0, Lcom/google/android/gms/location/places/internal/OpeningHoursImpl$PeriodImpl;->b:I

    .line 44
    iput p3, p0, Lcom/google/android/gms/location/places/internal/OpeningHoursImpl$PeriodImpl;->c:I

    .line 45
    iput p4, p0, Lcom/google/android/gms/location/places/internal/OpeningHoursImpl$PeriodImpl;->d:I

    .line 46
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/gms/location/places/internal/OpeningHoursImpl$PeriodImpl;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/gms/location/places/internal/OpeningHoursImpl$PeriodImpl;->d:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/gms/location/places/internal/OpeningHoursImpl$PeriodImpl;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/google/android/gms/location/places/internal/e;->a(Lcom/google/android/gms/location/places/internal/OpeningHoursImpl$PeriodImpl;Landroid/os/Parcel;)V

    .line 71
    return-void
.end method
