.class public Lcom/google/android/gms/location/DetectedActivity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/DetectedActivityCreator;

.field public static final EXITING_VEHICLE:I = 0x6

.field public static final FQ:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final IN_VEHICLE:I = 0x0

.field public static final OFF_BODY:I = 0x9

.field public static final ON_BICYCLE:I = 0x1

.field public static final ON_FOOT:I = 0x2

.field public static final RUNNING:I = 0x8

.field public static final STILL:I = 0x3

.field public static final TILTING:I = 0x5

.field public static final UNKNOWN:I = 0x4

.field public static final WALKING:I = 0x7


# instance fields
.field FR:I

.field FS:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/DetectedActivity$1;

    invoke-direct {v0}, Lcom/google/android/gms/location/DetectedActivity$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->FQ:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/gms/location/DetectedActivityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/location/DetectedActivityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->CREATOR:Lcom/google/android/gms/location/DetectedActivityCreator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "activityType"    # I
    .param p2, "confidence"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/DetectedActivity;->mVersionCode:I

    iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->FR:I

    iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->FS:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "activityType"    # I
    .param p3, "confidence"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->FR:I

    iput p3, p0, Lcom/google/android/gms/location/DetectedActivity;->FS:I

    return-void
.end method

.method private getActivityTypeOrUnknown(I)I
    .locals 1
    .param p1, "activityType"    # I

    .prologue
    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    const/4 p1, 0x4

    .end local p1    # "activityType":I
    :cond_0
    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConfidence()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->FS:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->FR:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/DetectedActivity;->getActivityTypeOrUnknown(I)I

    move-result v0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectedActivity [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/DetectedActivity;->FS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/DetectedActivityCreator;->a(Lcom/google/android/gms/location/DetectedActivity;Landroid/os/Parcel;I)V

    return-void
.end method