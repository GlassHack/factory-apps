.class final Lcom/google/android/location/b/ak;
.super Lcom/google/android/location/b/ah;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/b/af;

.field private b:Landroid/os/Parcelable;


# direct methods
.method private constructor <init>(Lcom/google/android/location/b/af;Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/android/location/b/ak;->a:Lcom/google/android/location/b/af;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/b/ah;-><init>(B)V

    .line 481
    iput-object p2, p0, Lcom/google/android/location/b/ak;->b:Landroid/os/Parcelable;

    .line 482
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/b/af;Landroid/os/Parcelable;B)V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/b/ak;-><init>(Lcom/google/android/location/b/af;Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/location/b/ak;->a:Lcom/google/android/location/b/af;

    iget-object v1, p0, Lcom/google/android/location/b/ak;->b:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/af;->d(Landroid/os/Parcelable;)V

    .line 487
    return-void
.end method
