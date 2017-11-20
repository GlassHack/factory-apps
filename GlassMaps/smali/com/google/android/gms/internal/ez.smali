.class public Lcom/google/android/gms/internal/ez;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ar;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ar;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ez;->a:Lcom/google/android/gms/internal/ar;

    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ez;->b:I

    iput p2, p0, Lcom/google/android/gms/internal/ez;->c:I

    iput p3, p0, Lcom/google/android/gms/internal/ez;->d:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ez;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ez;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ez;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ez;->d:I

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ez;->e:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "imageSize"

    iget v2, p0, Lcom/google/android/gms/internal/ez;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "avatarOptions"

    iget v2, p0, Lcom/google/android/gms/internal/ez;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    const-string v1, "useLargePictureForCp2Images"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ez;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/ez;Landroid/os/Parcel;I)V

    return-void
.end method
