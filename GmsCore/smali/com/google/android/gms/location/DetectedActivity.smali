.class public Lcom/google/android/gms/location/DetectedActivity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/c;

.field public static final a:Ljava/util/Comparator;


# instance fields
.field b:I

.field c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/location/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->a:Ljava/util/Comparator;

    .line 119
    new-instance v0, Lcom/google/android/gms/location/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->CREATOR:Lcom/google/android/gms/location/c;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/DetectedActivity;->d:I

    .line 139
    iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->b:I

    .line 140
    iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->c:I

    .line 141
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->d:I

    .line 193
    iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->b:I

    .line 194
    iput p3, p0, Lcom/google/android/gms/location/DetectedActivity;->c:I

    .line 195
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->b:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DetectedActivity [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/DetectedActivity;->c:I

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

    .prologue
    .line 209
    invoke-static {p0, p1}, Lcom/google/android/gms/location/c;->a(Lcom/google/android/gms/location/DetectedActivity;Landroid/os/Parcel;)V

    .line 210
    return-void
.end method
