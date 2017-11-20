.class public Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/DataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/gms/fitness/internal/service/b;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/internal/service/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;->a:I

    .line 35
    iput-object p2, p0, Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;->b:Lcom/google/android/gms/fitness/data/DataSource;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;-><init>(ILcom/google/android/gms/fitness/data/DataSource;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;->b:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    const-string v0, "ApplicationUnregistrationRequest{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;->b:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/internal/service/b;->a(Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;Landroid/os/Parcel;I)V

    .line 71
    return-void
.end method
