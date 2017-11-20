.class final Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/images/ImageManager;

.field private final b:Landroid/net/Uri;

.field private final c:Ljava/util/ArrayList;


# direct methods
.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 482
    const-string v0, "com.google.android.gms.extra.fileDescriptor"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 483
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->f(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/images/b;

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v4, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->b:Landroid/net/Uri;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/common/images/b;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method
