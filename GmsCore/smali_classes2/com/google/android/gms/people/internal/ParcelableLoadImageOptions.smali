.class public Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/internal/j;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/people/internal/j;

    invoke-direct {v0}, Lcom/google/android/gms/people/internal/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->CREATOR:Lcom/google/android/gms/people/internal/j;

    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->a:I

    .line 39
    iput p2, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->b:I

    .line 40
    iput p3, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->c:I

    .line 41
    iput-boolean p4, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->d:Z

    .line 42
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->c:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->d:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "imageSize"

    iget v2, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "avatarOptions"

    iget v2, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "useLargePictureForCp2Images"

    iget-boolean v2, p0, Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/google/android/gms/people/internal/j;->a(Lcom/google/android/gms/people/internal/ParcelableLoadImageOptions;Landroid/os/Parcel;)V

    .line 60
    return-void
.end method
