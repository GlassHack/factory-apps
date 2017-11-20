.class public Lcom/google/android/gms/internal/ea;
.super Lcom/google/android/gms/internal/ef;

# interfaces
.implements Lcom/google/android/gms/panorama/PanoramaApi$FullPanoramaResult;


# instance fields
.field private final Lx:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ef;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    iput p3, p0, Lcom/google/android/gms/internal/ea;->Lx:I

    return-void
.end method


# virtual methods
.method public getPanoramaType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ea;->Lx:I

    return v0
.end method

.method public bridge synthetic getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ef;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getViewerIntent()Landroid/content/Intent;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ef;->getViewerIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
