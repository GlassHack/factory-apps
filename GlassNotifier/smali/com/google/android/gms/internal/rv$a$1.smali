.class Lcom/google/android/gms/internal/rv$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Images$LoadImageResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rv$a;->bn(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Images$LoadImageResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FT:Lcom/google/android/gms/common/api/Status;

.field final synthetic aGz:Lcom/google/android/gms/internal/rv$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rv$a;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rv$a$1;->aGz:Lcom/google/android/gms/internal/rv$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/rv$a$1;->FT:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rv$a$1;->FT:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRewindable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
