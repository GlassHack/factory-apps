.class public Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/google/android/gms/fitness/internal/service/a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/internal/service/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->a:I

    .line 40
    iput-object p2, p0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->b:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;-><init>(ILjava/util/List;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/internal/service/a;->a(Lcom/google/android/gms/fitness/internal/service/FitnessDataSourcesRequest;Landroid/os/Parcel;)V

    .line 80
    return-void
.end method
