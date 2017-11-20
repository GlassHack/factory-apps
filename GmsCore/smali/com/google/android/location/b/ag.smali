.class final Lcom/google/android/location/b/ag;
.super Lcom/google/android/location/b/ah;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/b/af;

.field private b:Landroid/os/Parcelable;


# direct methods
.method private constructor <init>(Lcom/google/android/location/b/af;Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/android/location/b/ag;->a:Lcom/google/android/location/b/af;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/b/ah;-><init>(B)V

    .line 469
    iput-object p2, p0, Lcom/google/android/location/b/ag;->b:Landroid/os/Parcelable;

    .line 470
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/b/af;Landroid/os/Parcelable;B)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/b/ag;-><init>(Lcom/google/android/location/b/af;Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/location/b/ag;->a:Lcom/google/android/location/b/af;

    iget-object v1, p0, Lcom/google/android/location/b/ag;->b:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/af;->c(Landroid/os/Parcelable;)V

    .line 475
    return-void
.end method
